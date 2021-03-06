%%#########################################################################
%%                                                                       ##
%%                                                                       ##
%%                       IIIT Hyderabad, India                           ##
%%                      Copyright (c) 2014-2015                          ##
%%                        All Rights Reserved.                           ##
%%                                                                       ##
%%  Permission is hereby granted, free of charge, to use and distribute  ##
%%  this software and its documentation without restriction, including   ##
%%  without limitation the rights to use, copy, modify, merge, publish,  ##
%%  distribute, sublicense, and/or sell copies of this work, and to      ##
%%  permit persons to whom this work is furnished to do so, subject to   ##
%%  the following conditions:                                            ##
%%   1. The code must retain the above copyright notice, this list of    ##
%%      conditions and the following disclaimer.                         ##
%%   2. Any modifications must be clearly marked as such.                ##
%%   3. Original authors' names are not deleted.                         ##
%%   4. The authors' names are not used to endorse or promote products   ##
%%      derived from this software without specific prior written        ##
%%      permission.                                                      ##
%%                                                                       ##
%%  IIIT HYDERABAD AND THE CONTRIBUTORS TO THIS WORK                     ##
%%  DISCLAIM ALL WARRANTIES WITH REGARD TO THIS SOFTWARE, INCLUDING      ##
%%  ALL IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS, IN NO EVENT   ##
%%  SHALL IIIT HYDERABAD NOR THE CONTRIBUTORS BE LIABLE                  ##
%%  FOR ANY SPECIAL, INDIRECT OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES    ##
%%  WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN   ##
%%  AN ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION,          ##
%%  ARISING OUT OF OR IN CONNECTION WITH THE USE OR PERFORMANCE OF       ##
%%  THIS SOFTWARE.                                                       ##
%%                                                                       ##
%%#########################################################################
%%                                                                       ##
%%          Author :  Sivanand Achanta (sivanand.a@research.iiit.ac.in)  ##
%%          Date   :  Jun. 2015                                          ##
%%                                                                       ##
%%#########################################################################

% Training DNN using ADAM - SGD

% Ref: ADAM : A Method For Stochastic Optimization - ICLR 2015 - D.P.Kingma and J.L.Ba


% open error text file
fid = fopen(strcat(errdir,'/err_',arch_name,'.err'),'w');

% load data onto GPU
% train_batchdata = gpuArray(train_batchdata);
% train_batchtargets = gpuArray(train_batchtargets);
val_batchdata = gpuArray(val_batchdata);
val_batchtargets = gpuArray(val_batchtargets);
test_batchdata = gpuArray(test_batchdata);
test_batchtargets = gpuArray(test_batchtargets);

% train set variables
otl = [1 train_batchsize*(nl(nlv+1))];
otl = cumsum(otl);

% % test error set variables
ottl = [1 test_batchsize*(nl(nlv+1))];
ottl = cumsum(ottl);

% validation set variables
otvl = [1 val_batchsize*(nl(nlv+1))];
otvl = cumsum(otvl);

% early stopping params (Theano DeepLearningTutorials)
patience = 10000;
patience_inc = 2;
imp_thresh = 0.995;
val_freq = min(train_numbats,patience/2);
best_val_loss = inf;
best_iter = 0;
num_up = 0;
bs = train_batchsize;

valerr = 0;
testerr = 0;
trainerr = 0;
check_valfreq = 1000;

%mintrain_numbats = min(check_valfreq,floor(train_numbats/3)) ;
mintrain_numbats = 1000;

%lg_hist = zeros(10,btl(end)-1,numepochs);
%la_hist = zeros(10,btl(end)-1,numepochs);
%lg_mean = zeros(numepochs,btl(end)-1);
%la_mean = zeros(numepochs,btl(end)-1);

for NE = 1:numepochs
       
    % for each epoch
    iter = (NE-1)*train_numbats;
    
    % Weight update step
    twu = tic;
   
    % fp and bp for each batch
    for i = 1:train_numbats

        
        num_up = num_up + 1;
        
        %lg_e = gpuArray(zeros(mintrain_numbats,btl(end)-1));
        %la_e = gpuArray(zeros(mintrain_numbats,btl(end)-1));
    
        i_l = mod(i-1,mintrain_numbats) + 1;
        
        % fp
        X = []; Y = [];
        X = gpuArray(train_batchdata(:,:,i));
        Y = gpuArray(train_batchtargets(:,:,i));
        [ol] = fpav(X,GW,Gb,nl,f,nh,a_tanh,b_tanh,wtl,btl,berp,bs);
        
        
        % bp
        % Step 1 : Compute derivative of error fn (E) w.r.t wts
        
        % updating weights of top most layer
        ol_m = reshape(ol(1,otl(end-1):otl(end)-1),bs,nl(end));
        %la_e(i_l,btl(nh):btl(end)-1) = mean(ol_m);
        ol_pl_m = reshape(ol(1,otl(end-2):otl(end-1)-1),bs,nl(end-1));
        
        switch f(end)
            case 'N'
                der_f = bby2a*((a_tanh - ol_m).*(a_tanh + ol_m));
            case 'S'
                der_f = b_tanh*(ol_m.*(1 - ol_m));
            case 'R' % added on 28/11/14
                der_f = ones(bs,nl(end)).*(ol_m > 0);
            case 'M' % Softmax layer
                der_f = (ol_m.*(1 - ol_m));
            case 'L'
                der_f = ones(bs,nl(end));
            otherwise
                disp('please enter a valid output function name (N/S/R/M/L)');
                return;
        end
        
        switch cfn
            case 'ls'
                costder = -(Y - ol_m);
                del_bp = costder.*der_f;
            case  'nll'
                %         costder = -(Out./ol_m);
                del_bp  = -(Y - ol_m);
        end
        
        own = reshape(GW(1,wtl(nh):wtl(nh+1)-1),nl(nh+1),nl(nh))';
        gbv = sum(del_bp,1)/bs;
        gWm = ((ol_pl_m'*del_bp)/bs + l1*sign(own) + l2*2*own);
        %lg_e(i_l,btl(nh):btl(end)-1) = sum([gbv' gWm'].^2,2);
        
        gb = gpuArray(zeros(1,btl(end-1)));
        gb(1,btl(nh):btl(end)-1) = gbv;
        gW = gpuArray(zeros(1,wtl(end)-1));
        gW(1,wtl(nh):wtl(nh+1)-1) = reshape(gWm',1,numel(gWm));
        
        % updating weights of inner hidden layers
        for j = nh-1:-1:1
            
            ol_m = reshape(ol(1,otl(j):otl(j+1)-1),bs,nl(j+1));
            %la_e(i_l,btl(j):btl(j+1)-1) = mean(ol_m);
            if (j-1) ~=0
                ol_pl_m = reshape(ol(1,otl(j-1):otl(j)-1),bs,nl(j));
            else
                ol_pl_m = X;
            end
            
            switch f(j)
                case 'N'
                    der_f = bby2a*((a_tanh - ol_m).*(a_tanh + ol_m));
                case 'S'
                    der_f = b_tanh*(ol_m.*(1 - ol_m));
                case 'R' % added on 28/11/14
                    der_f = ones(bs,nl(j+1)).*(ol_m > 0);
                case 'M' % Softmax layer
                    der_f = (ol_m.*(1 - ol_m));
                case 'L'
                    der_f = ones(bs,nl(j+1));
                otherwise
                    disp('error: please enter a valid output function name (N/S/R/M/L)');
                    return;
            end
            
            wdel_bp = del_bp*(own'); % weghted del_bps
            del_bp = wdel_bp.*der_f;
            gbv = sum(del_bp,1)/bs;
            own = reshape(GW(1,wtl(j):wtl(j+1)-1),nl(j+1),nl(j))'; % only weights are considered , ingore the first row which are biases
            gWm = ((ol_pl_m'*del_bp)/bs + l1*sign(own) + l2*2*own);
            
            % compute the length of gradients 
            %lg_e(i_l,btl(j):btl(j+1)-1) = sum([gbv' gWm'].^2,2);
            
            gb(1,btl(j):btl(j+1)-1) = gbv;
            gW(1,wtl(j):wtl(j+1)-1) = reshape(gWm',1,numel(gWm));
            
        end
        
        % Adam equations
        beta1_t = beta1*(lam^(num_up-1));
        
        % biased moments
        Gpmbt = beta1_t*Gpmbt + (1 - beta1_t)*gb;
        GpmWt = beta1_t*GpmWt + (1 - beta1_t)*gW;
        
        Gpvbt = beta2*Gpvbt + (1 - beta2)*(gb.^2);
        GpvWt = beta2*GpvWt + (1 - beta2)*(gW.^2);
        
        % bias correction
        mbt_cap = Gpmbt./(1 - beta1^num_up);
        mWt_cap = GpmWt./(1 - beta1^num_up);
        
        vbt_cap = Gpvbt./(1 - beta2^num_up);
        vWt_cap = GpvWt./(1 - beta2^num_up);
        
        
        % Step 7 : Update weights
        Gb = Gb - alpha*mbt_cap./(sqrt(vbt_cap)+eps_hp);
        GW = GW - alpha*mWt_cap./(sqrt(vWt_cap)+eps_hp);
        
        
        
        if mncflag
            for j = 1:nh
                rWt = reshape(GW(1,wtl(j):wtl(j+1)-1),nl(j+1),(nl(j)))';
                lenwv{j} = sqrt(sum(rWt(2:end,:).^2)'); % weight vector lengths excluding biases
                idxin = find(lenwv{j} > mnc);
                
                if ~isempty(idxin)
                    rWt(2:end,idxin) = bsxfun(@rdivide,rWt(2:end,idxin),(lenwv{j}(idxin))'/mnc);
                end
                %                 mlenwv{j} = sum(rWt(2:end,:).^2)'; % modified weight vector lengths excluding biases
                
                % replace the original weights with the modified weights
                GW(1,wtl(j):wtl(j+1)-1) = reshape(rWt',1,(nl(j))*nl(j+1));
            end
        end
        
                
        if mod(num_up,check_valfreq) == 0
                       
            trainerr = 0;            
            % Training data error computation (over a subset of 1000 minibats)
            for li = 1:mintrain_numbats
                X = gpuArray(train_batchdata(:,:,i));
                Y = gpuArray(train_batchtargets(:,:,i));
                
                % fp
                [ol] = fpavtest(X,GW,Gb,nl,f,nh,a_tanh,b_tanh,wtl,btl,berp,bs);
                
                % compute error
                ol_mat = reshape(ol(1,otl(end-1):otl(end)-1),bs,nl(end));
                clear ol;
                me = mean(sum((Y - ol_mat).^2,2)./(sum(Y.^2,2)));
                
                if isnan(me)
                    break
                end                
                trainerr = trainerr + me/mintrain_numbats;
            end
            
            
            tvde = tic;
            valerr = 0;
            
            % Validation data error computation
            for li = 1:val_numbats
                % fp
                [ol] = fpavtest(val_batchdata(:,:,li),GW,Gb,nl,f,nh,a_tanh,b_tanh,wtl,btl,berp,val_batchsize);
                
                % compute error
                ol_mat = reshape(ol(1,otvl(end-1):otvl(end)-1),val_batchsize,nl(end));
                clear ol;
                Y = val_batchtargets(:,:,li);
                me = mean(sum((Y - ol_mat).^2,2)./(sum(Y.^2,2)));
                
                if isnan(me)
                    break
                end
                
                valerr = valerr + me/val_numbats;
            end
            toc(tvde)
            
            % Print error (validation) per epoc
            fprintf('Epoch : %d  Update : %d Train Loss : %f Val Loss : %f \n',NE,num_up,trainerr,valerr);
            
            if valerr < best_val_loss
                if valerr < (best_val_loss*imp_thresh)
                    patience = max(patience,iter*patience_inc);
                end
                best_val_loss = valerr;
                best_iter = iter;                
                
                testerr = 0;
                % Test data error computation
                for li = 1:test_numbats
                    % fp
                    [ol] = fpavtest(test_batchdata(:,:,li),GW,Gb,nl,f,nh,a_tanh,b_tanh,wtl,btl,berp,test_batchsize);
                    
                    % compute error
                    ol_mat = reshape(ol(1,ottl(end-1):ottl(end)-1),test_batchsize,nl(end));
                    clear ol;
                    Y = test_batchtargets(:,:,li);
                    me = mean(sum((Y - ol_mat).^2,2)./(sum(Y.^2,2)));
                    clear ol_mat;
                    testerr = testerr + me/test_numbats;
                end                
                
                % Print error (testing) per epoc
                fprintf('\t Epoch : %d  Update: %d Test Loss : %f \n',NE,num_up,testerr);
                
                %%%%%%%%%%%%%%%%%%%%%%%%%%%% save weight file %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                % save parameters every epoch
                W = gather(GW); b = gather(Gb);
                save(strcat(wtdir,'W_',arch_name,'.mat'),'W','b');
            end
            
            % Print error (validation and testing) per epoc
            fprintf(fid,'%d %d %f %f %f \n',NE,num_up,trainerr,valerr,testerr);
            
        end
        
        if isnan(valerr) || isnan(testerr)
            break;
        end
        
    end
    clear ol
    toc(twu)
    
    if isnan(valerr) || isnan(testerr)
        break;
    end
    
    %lg_hist(:,:,NE) = gather(hist(lg_e));
    %lg_mean(NE,:) = gather(mean(lg_e));
    
    %la_hist(:,:,NE) = gather(hist(la_e));
    %la_mean(NE,:) = gather(mean(la_e));
    
    % randomize the full training set
    randomorder = randperm(Ntrain);    
    
    train_batchdata = unmakebatchdata_v2(train_batchdata,train_numbats,train_batchsize,din);
    train_batchtargets = unmakebatchdata_v2(train_batchtargets,train_numbats,train_batchsize,dout);
   
    train_batchdata = train_batchdata(randomorder,:);
    train_batchtargets = train_batchtargets(randomorder,:);
    
    train_batchdata = makebatchdata_v2(train_batchdata(1:Ntrain,:),train_batchsize) ;
    train_batchtargets = makebatchdata_v2(train_batchtargets(1:Ntrain,:),train_batchsize) ;
    
    
end

fclose(fid);

fprintf('Training done !!!\n')
fprintf('Best val error : %f ; at epoch : %d ; with test error : %f \n', best_val_loss,floor(best_iter/train_numbats),testerr)

%save(strcat(lendir,arch_name,'_lg.mat'),'lg_hist','lg_mean')
%save(strcat(lendir,arch_name,'_la.mat'),'la_hist','la_mean')
