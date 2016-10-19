

% open error text file
fid = fopen(strcat(errdir,'err_',arch_name,'.err'),'w');


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

for NE = 1:numepochs
    
    % for each epoch
    tne = tic;
    iter = (NE-1)*train_numbats;
    
    % Weight update step
    twu = tic;
    
    % fp and bp for each batch
    for i = 1:train_numbats
        
        % nag euqations
        Gb1 = Gb + mf*Gpdb;
        GW1 = GW + mf*GpdW;
        
        % fp
        X = []; Y = [];
        X = gpuArray(train_batchdata(:,:,i));
        Y = gpuArray(train_batchtargets(:,:,i));
        [ol] = fp_av_mnist(X,GW1,Gb1,nl,f,nh,a_tanh,b_tanh,wtl,btl,berp,train_batchsize);
        
        
        % bp
        % Step 1 : Compute derivative of error fn (E) w.r.t wts
        
        % updating weights of top most layer
        ol_m = reshape(ol(1,otl(end-1):otl(end)-1),bs,nl(end));
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
        
        own = reshape(GW1(1,wtl(nh):wtl(nh+1)-1),nl(nh+1),nl(nh))';
        gbv = sum(del_bp,1)/bs;
        gWm = ((ol_pl_m'*del_bp)/bs + l1*sign(own) + l2*2*own);
        
        gb = gpuArray(zeros(1,btl(end-1)));
        gb(1,btl(nh):btl(end)-1) = gbv;
        gW = gpuArray(zeros(1,wtl(end)-1));
        gW(1,wtl(nh):wtl(nh+1)-1) = reshape(gWm',1,numel(gWm));
        
        % updating weights of inner hidden layers
        for j = nh-1:-1:1
            
            ol_m = reshape(ol(1,otl(j):otl(j+1)-1),bs,nl(j+1));
            
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
            own = reshape(GW1(1,wtl(j):wtl(j+1)-1),nl(j+1),nl(j))'; % only weights are considered , ingore the first row which are biases
            gWm = ((ol_pl_m'*del_bp)/bs + l1*sign(own) + l2*2*own);
            
            gb(1,btl(j):btl(j+1)-1) = gbv;
            gW(1,wtl(j):wtl(j+1)-1) = reshape(gWm',1,numel(gWm));
            
        end
        
        
        Gdb = -eta*gb;
        GdW = -eta*gW;
        
        Gpdb = Gdb + mf*Gpdb;
        GpdW = GdW + mf*GpdW;
        
        % Step 7 : Update weights
        Gb = Gb + Gpdb;
        GW = GW + GpdW;
        
        
        
        if mncflag
            for j = 1:nh
                rWt = reshape(GW(1,wtl(j):wtl(j+1)-1),nl(j+1),(nl(j)))';
                lenwv{j} = sum(rWt(2:end,:).^2)'; % weight vector lengths excluding biases
                idxin = find(lenwv{j} > mnc);
                
                if ~isempty(idxin)
                    rWt(2:end,idxin) = bsxfun(@rdivide,rWt(2:end,idxin),(lenwv{j}(idxin))'/mnc);
                end
                %                 mlenwv{j} = sum(rWt(2:end,:).^2)'; % modified weight vector lengths excluding biases
                
                % replace the original weights with the modified weights
                GW(1,wtl(j):wtl(j+1)-1) = reshape(rWt',1,(nl(j))*nl(j+1));
            end
        end
        
        
        num_up = num_up + 1;
        
        if mod(num_up,1000) == 0
            tvde = tic;
            valerr = 0;
            % Validation data error computation
            for li = 1:val_numbats
                % fp
                [ol] = fp_av_test_mnist(val_batchdata(:,:,li),GW,Gb,nl,f,nh,a_tanh,b_tanh,wtl,btl,berp,val_batchsize);
                
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
            fprintf('Epoch : %d  Update: %d Val Loss : %f \n',NE,num_up,valerr);
            
            if valerr < best_val_loss
                if valerr < (best_val_loss*imp_thresh)
                    patience = max(patience,iter*patience_inc);
                end
                best_val_loss = valerr;
                best_iter = iter;
                
                %ttde = tic;
                testerr = 0;
                % Test data error computation
                for li = 1:test_numbats
                    % fp
                    [ol] = fp_av_test_mnist(test_batchdata(:,:,li),GW,Gb,nl,f,nh,a_tanh,b_tanh,wtl,btl,berp,test_batchsize);
                    
                    % compute error
                    ol_mat = reshape(ol(1,ottl(end-1):ottl(end)-1),test_batchsize,nl(end));
                    clear ol;
                    Y = test_batchtargets(:,:,li);
                    me = mean(sum((Y - ol_mat).^2,2)./(sum(Y.^2,2)));
                    clear ol_mat;
                    testerr = testerr + me/test_numbats;
                end
                %toc(ttde)
                
                % Print error (testing) per epoc
                fprintf('\t Epoch : %d  Update: %d Test Loss : %f \n',NE,num_up,testerr);
                
                %%%%%%%%%%%%%%%%%%%%%%%%%%%% save weight file %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                % save parameters every epoch
                W = gather(GW); b = gather(Gb);
                save(strcat(wtdir,'W_',arch_name,'.mat'),'W','b');
                %         pdW = gather(GpdW); pdb = gather(Gpdb);
                %         save(strcat('../wt/pdW_',arch_name,'.mat'),'pdW','pdb');
            end
            
            % Print error (validation and testing) per epoc
            fprintf(fid,'%d %d %f %f \n',NE,num_up,valerr,testerr);
            
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
    
%     if NE == 50
%         eta = eta/10;
%         mf = 0.8;
%     end
%     
%     if NE == 55
%         eta = eta/10;
%         mf = 0.8;
%     end
    
    % print elapsed time
    fprintf('Elapse Time: %f \n',toc(tne));
    
end

fclose(fid);

fprintf('Training done !!! \n')
fprintf('Best val error : %f ; at epoch : %d ; with test error : %f \n', best_val_loss,floor(best_iter/train_numbats),testerr)
