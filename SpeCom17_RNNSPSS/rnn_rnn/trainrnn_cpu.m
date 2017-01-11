%%#########################################################################
%%                                                                       ##
%%                                                                       ##
%%                       IIIT Hyderabad, India                           ##
%%                      Copyright (c) 2015                               ##
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
%%          Date   :  Jul. 2015                                          ##
%%                                                                       ##
%%#########################################################################

% open text file for writing train/test/val error per update
fid = fopen(strcat(errdir,'/err_',arch_name,'.err'),'w');

% set params of nonlinearity
a_tanh = 1.7159;
b_tanh = 2/3;
bby2a = (b_tanh/(2*a_tanh));

% early stopping params (Theano DeepLearningTutorials)
patience = 10000;
patience_inc = 2;
imp_thresh = 0.995;
val_freq = min(train_numbats,patience/2);
best_val_loss = inf;
best_iter = 0;
num_up = 0;

valerr = 0;
testerr = 0;
trainerr = 0;
train_test_numbats = round(train_numbats/4);


for NE = 1:numepochs
    
    % for each epoch
    iter = (NE-1)*train_numbats;
    
    % Weight update step
    twu = tic;

    rp = randperm(train_numbats);
      
    % fp and bp for each batch
    for j = 1:train_numbats
        
        sl = train_clv(rp(j)+1) - train_clv(rp(j));
        
        X = double(train_batchdata(train_clv(rp(j)):train_clv(rp(j)+1)-1,:));
        Y = double(train_batchtargets(train_clv(rp(j)):train_clv(rp(j)+1)-1,:));

        X1 = X;
       % size(X1)
       % nl_mgc
       % size(Wi_mgc)
        [hcm,ym] = fp_rnn((X1(:,1:end)),Wi_mgc,Wfr_mgc,U_mgc,bh_mgc,bo_mgc,f_mgc,nl_mgc,a_tanh,b_tanh,sl);
        X = [X (hcm)]; 
        [hcm,ol_mat] = fp_rnn(X,GWi,GWfr,GU,Gbh,Gbo,f,nl,a_tanh,b_tanh,sl);
        
        % bacward prop
        % Compute deltas of output layer weights and biases
        
        switch f(end)
            case 'N'
                der_f = bby2a*((a_tanh - ol_mat).*(a_tanh + ol_mat));
            case 'S'
                der_f = b_tanh*(ol_mat.*(1 - ol_mat));
            case 'R' % added on 28/11/14
                der_f = ones(sl,nl(end)).*(ol_mat > 0);
            case 'M' % Softmax layer
                der_f = (ol_mat.*(1 - ol_mat));
            case 'L'
                der_f = ones(sl,nl(end));
            otherwise
                disp('please enter a valid output function name (N/S/R/M/L)');
                return;
        end
        
        switch cfn
            case 'ls'
                costder = -(Y - ol_mat)/sl;
                delo = costder.*der_f;
            case  'nll'
                %         costder = -(Out./ol_m);
                delo  = -(Y - ol_mat)/sl;
        end
        
        gU = (delo'*hcm);
        gbo = sum(delo)';
        
        % Compute gradients of recurrent weights and biases
        delnt = (zeros(nl(2),1));
        delm = (zeros(sl,nl(2)));
        
        iemat = GU'*delo';
        GWfr = GWfr';
        
        switch f(1)
            case 'N'
                der_f = bby2a*((a_tanh - hcm).*(a_tanh + hcm));
            case 'S'
                der_f = b_tanh*(hcm.*(1 - hcm));
            case 'R' % added on 28/11/14
                der_f = ones(sl,nl(2)).*(hcm > 0);
            case 'M' % Softmax layer
                der_f = (hcm.*(1 - hcm));
            case 'L'
                der_f = ones(sl,nl(2));
            otherwise
                disp('please enter a valid output function name (N/S/R/M/L)');
                return;
        end
        der_f = der_f'; 
        
        for k = sl:-1:1
            ie = der_f(:,k).*(GWfr*delnt+iemat(:,k));
            delnt = ie;
            delm(k,:) = delnt;
        end
        GWfr = GWfr'; 
        hpm = [h_0';hcm(1:end-1,:)];
        gWfr = (delm'*hpm);
        gbh = sum(delm)';
        
        % Compute gradients of inpu-hidden layer weights
        gWi = (delm'*X);
        
        % clip the gradients above a threshold
        if gc_flag

            lgU = sqrt(sum(gU.^2,2));
            ix_int = find(lgU > gcth);
            if ~isempty(ix_int)
                gU(ix_int,:) = gcth*bsxfun(@rdivide,gU(ix_int,:),lgU(ix_int));
            end

            lgWfr = sqrt(sum(gWfr.^2,2));
            ix_int = find(lgWfr > gcth);
            if ~isempty(ix_int)
                gWfr(ix_int,:) = gcth*bsxfun(@rdivide,gWfr(ix_int,:),lgWfr(ix_int));
            end

            lgWi = sqrt(sum(gWi.^2,2));
            ix_int = find(lgWi > gcth);
            if ~isempty(ix_int)
                gWi(ix_int,:) = gcth*bsxfun(@rdivide,gWi(ix_int,:),lgWi(ix_int));
            end
        end

        fprintf('Epoch : %d Update: %d maxGradLen : %f %f %f \n',NE,num_up,max(sqrt(sum(gWi.^2,2))),max(sqrt(sum(gWfr.^2,2))),max(sqrt(sum(gU.^2,2))));
        
        % Update Params using Appropriate SGD Method
        num_up = num_up + 1;
        update_params
        
        if isnan(max(sqrt(sum(gWi.^2,2)))) || isnan(max(sqrt(sum(gWfr.^2,2)))) || isnan(max(sqrt(sum(gU.^2,2))))
           break
        end
        
        if mod(num_up,check_valfreq) == 0

            tic
            trainerr = 0;
            % compute error on validation set
            for li = 1:(train_test_numbats)

                sl = train_clv(li+1) - train_clv(li);
                X = (double(train_batchdata(train_clv(li):train_clv(li+1)-1,:)));
                Y = (double(train_batchtargets(train_clv(li):train_clv(li+1)-1,:)));
                
                X1 = X;
                [hcm,ym] = fp_rnn((X1(:,1:end)),Wi_mgc,Wfr_mgc,U_mgc,bh_mgc,bo_mgc,f_mgc,nl_mgc,a_tanh,b_tanh,sl);
                X = [X (hcm)];

                [hcm,ol_mat] = fp_rnn(X,GWi,GWfr,GU,Gbh,Gbo,f,nl,a_tanh,b_tanh,sl);

                switch cfn
                    case 'nll'
                        me = compute_zerooneloss(ol_mat,Y);
                    case 'ls'
                        me = mean(sum((Y - ol_mat).^2,2)./(sum(Y.^2,2)));
                end

                trainerr = trainerr + me/train_test_numbats;
            end
            toc
 
            tic
            valerr = 0;
            % compute error on validation set
            for li = 1:(val_numbats)
                
                sl = val_clv(li+1) - val_clv(li);
                X = double(val_batchdata(val_clv(li):val_clv(li+1)-1,:));
                Y = double(val_batchtargets(val_clv(li):val_clv(li+1)-1,:));
                
	        X1 = X;
        	[hcm,ym] = fp_rnn((X1(:,1:end)),Wi_mgc,Wfr_mgc,U_mgc,bh_mgc,bo_mgc,f_mgc,nl_mgc,a_tanh,b_tanh,sl);
        	X = [X (hcm)];

                [hcm,ol_mat] = fp_rnn(X,GWi,GWfr,GU,Gbh,Gbo,f,nl,a_tanh,b_tanh,sl);
                
                switch cfn
                    case 'nll'
                        me = compute_zerooneloss(ol_mat,Y);
                    case 'ls'
                        me = mean(sum((Y - ol_mat).^2,2)./(sum(Y.^2,2)));
                end
                
                valerr = valerr + me/val_numbats;
            end
            toc
            
            %     Print error (validation) per epoc
            fprintf('Epoch : %d Update : %d  Train Loss : %f Val Loss : %f \n',NE,num_up,trainerr,valerr);
            
            if valerr < best_val_loss
                if valerr < (best_val_loss*imp_thresh)
                    patience = max(patience,iter*patience_inc);
                end
                best_val_loss = valerr;
                best_iter = iter;
                
                tic 
                testerr = 0;
                % compute error on test set
                for li = 1:(test_numbats)
                    
                    sl = test_clv(li+1) - test_clv(li);
                    X = double(test_batchdata(test_clv(li):test_clv(li+1)-1,:));
                    Y = double(test_batchtargets(test_clv(li):test_clv(li+1)-1,:));
                    X1 = X;
		    [hcm,ym] = fp_rnn((X1(:,1:end)),Wi_mgc,Wfr_mgc,U_mgc,bh_mgc,bo_mgc,f_mgc,nl_mgc,a_tanh,b_tanh,sl);
        	    X = [X (hcm)];
    
                    [hcm,ol_mat] = fp_rnn(X,GWi,GWfr,GU,Gbh,Gbo,f,nl,a_tanh,b_tanh,sl);
                    
                    switch cfn
                        case 'nll'
                            me = compute_zerooneloss(ol_mat,Y);
                        case 'ls'
                            me = mean(sum((Y - ol_mat).^2,2)./(sum(Y.^2,2)));
                    end
                    
                    testerr = testerr + me/test_numbats;
                end
                toc
                
                % Print error (testing) per epoc
                fprintf('\t Update : %d  Test Loss : %f \n',num_up,testerr);
                
                %%%%%%%%%%%%%%%%%%%%%%%%%%%% save weight file %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                % save parameters every epoch
                Wi = (GWi);Wfr = (GWfr);U = (GU); bh = (Gbh); bo = (Gbo);
                save(strcat(wtdir,'W_',arch_name,'.mat'),'Wi','Wfr','U','bh','bo');
            end
            toc
            
            % Print error (validation and testing) per epoc
            fprintf(fid,'%d %d %f %f %f\n',NE,num_up,trainerr,valerr,testerr);
        end
        
        if isnan(valerr)
            break;
        end
        
    end
    
    if isnan(valerr)
        break;
    end

    if isnan(max(sqrt(sum(gWi.^2,2)))) || isnan(max(sqrt(sum(gWfr.^2,2)))) || isnan(max(sqrt(sum(gU.^2,2))))
       break
    end
    
    
end


