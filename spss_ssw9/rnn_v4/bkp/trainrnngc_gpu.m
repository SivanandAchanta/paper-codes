%{
###########################################################################
##                                                                       ##
##                                                                       ##
##                       IIIT Hyderabad, India                           ##
##                      Copyright (c) 2015                               ##
##                        All Rights Reserved.                           ##
##                                                                       ##
##  Permission is hereby granted, free of charge, to use and distribute  ##
##  this software and its documentation without restriction, including   ##
##  without limitation the rights to use, copy, modify, merge, publish,  ##
##  distribute, sublicense, and/or sell copies of this work, and to      ##
##  permit persons to whom this work is furnished to do so, subject to   ##
##  the following conditions:                                            ##
##   1. The code must retain the above copyright notice, this list of    ##
##      conditions and the following disclaimer.                         ##
##   2. Any modifications must be clearly marked as such.                ##
##   3. Original authors' names are not deleted.                         ##
##   4. The authors' names are not used to endorse or promote products   ##
##      derived from this software without specific prior written        ##
##      permission.                                                      ##
##                                                                       ##
##  IIIT HYDERABAD AND THE CONTRIBUTORS TO THIS WORK                     ##
##  DISCLAIM ALL WARRANTIES WITH REGARD TO THIS SOFTWARE, INCLUDING      ##
##  ALL IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS, IN NO EVENT   ##
##  SHALL IIIT HYDERABAD NOR THE CONTRIBUTORS BE LIABLE                  ##
##  FOR ANY SPECIAL, INDIRECT OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES    ##
##  WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN   ##
##  AN ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION,          ##
##  ARISING OUT OF OR IN CONNECTION WITH THE USE OR PERFORMANCE OF       ##
##  THIS SOFTWARE.                                                       ##
##                                                                       ##
###########################################################################
##                                                                       ##
##          Author :  Sivanand Achanta (sivanand.a@research.iiit.ac.in)  ##
##          Date   :  Jul. 2015                                          ##
##                                                                       ##
###########################################################################
%}

% open text file for writing train/test/val error per update
fid = fopen(strcat(errdir,'/err_',arch_name,'.err'),'w');

% load test and validation data onto GPU
val_batchdata = gpuArray(val_batchdata);
val_batchtargets = gpuArray(val_batchtargets);
test_batchdata = gpuArray(test_batchdata);
test_batchtargets = gpuArray(test_batchtargets);

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


for NE = 1:numepochs
    
    % for each epoch
    iter = (NE-1)*train_numbats;
    
    % Weight update step
    twu = tic;
    
    %     % Average length of gradients
    %     lgWi = 0;
    %     lgWfr = 0;
    
    % fp and bp for each batch
    for j = 1:train_numbats
        
        sl = train_clv(j+1) - train_clv(j);
        
        X = gpuArray(train_batchdata(train_clv(j):train_clv(j+1)-1,:));
        Y = gpuArray(train_batchtargets(train_clv(j):train_clv(j+1)-1,:));
        
        %         cpu_X_2 = gather(X);
        %         cpu_Y_2 = gather(Y);
        %         cpu_U_2 = gather((GU));
        %         cpu_Wfr_2 = gather(GWfr);
        %         cpu_Wi_2 = gather(GWi);
        %         cpu_bh_2 = gather(Gbh);
        %         cpu_bo_2 = gather(Gbo);
        
        [hcm,ol_mat] = fp_rnn(X,GWi,GWfr,GU,Gbh,Gbo,f,nl,a_tanh,b_tanh,sl);
        
        %         cpu_hcm_2 = gather(hcm);
        %         cpu_ym_2 = gather(ol_mat);
        
        
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
                costder = -(Y - ol_mat);
                delo = costder.*der_f;
            case  'nll'
                %         costder = -(Out./ol_m);
                delo  = -(Y - ol_mat);
        end
        
        gU = (delo'*hcm)/sl;
        gbo = mean(delo)';
        
        %         cpu_delo_2 = gather(delo);
        %         cpu_gU_2 = gather(gU);
        %         cpu_gbo_2 = gather(gbo);
        
        %{
        if sum(sum(isnan(ol_mat)))
          disp('there are NaN eles in ol_mat');
        end
        if sum(sum(isnan(delo)))
            disp('there are NaN eles in delo');
            break
        end
        %}
        
        % Compute gradients of recurrent weights and biases
        
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
        
        delnt = gpuArray(zeros(nl(2),1));
        delm = gpuArray(zeros(sl,nl(2)));
        iemat = GU'*delo';
        GWfr = GWfr';
        der_f = der_f';
        for k = sl:-1:1
            ie = der_f(:,k).*(GWfr*delnt+iemat(:,k));
            delnt = ie;
            delm(k,:) = delnt;
        end
        GWfr = GWfr';
        
        hpm = [h_0';hcm(1:end-1,:)];
        gWfr = (delm'*hpm)/sl;
        gbh = mean(delm)';
        
        % Compute gradients of inpu-hidden layer weights
        gWi = (delm'*X)/sl;
        
        %{
        lgWi = lgWi + sqrt(sum(gWi.^2,2))/train_numbats;
        lgWfr = lgWfr + sqrt(sum(gWfr.^2,2))/train_numbats;
        %}
        
        %         cpu_delm_2 = gather(delm);
        %         cpu_gWi_2 = gather(gWi);
        %         cpu_gbh_2 = gather(gbh);
        %         cpu_gWfr_2 = gather(gWfr);
        
        
        % clip the gradients above a threshold
        fprintf('Epoch : %d Update: %d maxGradLen : %f %f %f minGradLen : %f %f %f \n',NE,num_up,max(sqrt(sum(gWi.^2,2))),max(sqrt(sum(gWfr.^2,2))),max(sqrt(sum(gU.^2,2))),min(sqrt(sum(gWi.^2,2))),min(sqrt(sum(gWfr.^2,2))),min(sqrt(sum(gU.^2,2))));
        
        if gc_flag
            lgWfr = sqrt(sum(gWfr.^2,2));
            ix_int = find(lgWfr > gcth);
            gWfr(ix_int,:) = gcth*bsxfun(@rdivide,gWfr(ix_int,:),lgWfr(ix_int));
            
            lgWi = sqrt(sum(gWi.^2,2));
            ix_int = find(lgWi > gcth);
            gWi(ix_int,:) = gcth*bsxfun(@rdivide,gWi(ix_int,:),lgWi(ix_int));
            
        end
        
        fprintf('Epoch : %d Update: %d maxGradLen : %f %f %f minGradLen : %f %f %f \n',NE,num_up,max(sqrt(sum(gWi.^2,2))),max(sqrt(sum(gWfr.^2,2))),max(sqrt(sum(gU.^2,2))),min(sqrt(sum(gWi.^2,2))),min(sqrt(sum(gWfr.^2,2))),min(sqrt(sum(gU.^2,2))));
        
        
        num_up = num_up + 1; % Inspired from "ADAM" pseudo code
        
        
        %         save(strcat('../drnn_v1/rnn_params_',num2str(num_up),'.mat'),'cpu_X_2','cpu_Y_2','cpu_U_2','cpu_bo_2','cpu_Wi_2','cpu_Wfr_2','cpu_bh_2',...
        %             'cpu_hcm_2','cpu_ym_2','cpu_delo_2','cpu_gU_2','cpu_gbo_2','cpu_delm_2','cpu_gWi_2','cpu_gWfr_2','cpu_gbh_2');
        
        % Update Params using Appropriate SGD Method
        update_params
        
        if mask_flag
            GWfr = GWfr.*mask;
        end
        % GW = GW*(1.2/abs(eigs(double(gather(GW)),1,'lm',opts)));
        
        
        %command = ['scp',' ',strcat('rnn_params_',num2str(num_up),'.mat'),' ','tejas@10.2.8.142:~/siva/TIMIT_ASR/drnn_v1/'];
        %system(command)
        
        
        %         command = ['scp',' ',strcat('rnn_params_',num2str(num_up),'.mat'),' ',strcat('rnn_update_params_',num2str(num_up),'.mat'),' ', ...
        %             'tejas@10.2.8.142:~/siva/TIMIT_ASR/drnn_v1/'];
        %         system(command)
        
        
        if mod(num_up,check_valfreq) == 0
            
            tic
            valerr = 0;
            % compute error on validation set
            for li = 1:(val_numbats)
                
                sl = val_clv(li+1) - val_clv(li);
                X = val_batchdata(val_clv(li):val_clv(li+1)-1,:);
                Y = val_batchtargets(val_clv(li):val_clv(li+1)-1,:);
                
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
            fprintf('Epoch : %d Update : %d  Val Loss : %f \n',NE,num_up,valerr);
            
            if valerr < best_val_loss
                if valerr < (best_val_loss*imp_thresh)
                    patience = max(patience,iter*patience_inc);
                end
                best_val_loss = valerr;
                best_iter = iter;
                
                testerr = 0;
                % compute error on test set
                for li = 1:(test_numbats)
                    
                    sl = test_clv(li+1) - test_clv(li);
                    X = test_batchdata(test_clv(li):test_clv(li+1)-1,:);
                    Y = test_batchtargets(test_clv(li):test_clv(li+1)-1,:);
                    
                    [hcm,ol_mat] = fp_rnn(X,GWi,GWfr,GU,Gbh,Gbo,f,nl,a_tanh,b_tanh,sl);
                    
                    switch cfn
                        case 'nll'
                            me = compute_zerooneloss(ol_mat,Y);
                        case 'ls'
                            me = mean(sum((Y - ol_mat).^2,2)./(sum(Y.^2,2)));
                    end
                    
                    testerr = testerr + me/test_numbats;
                end
                %toc(ttde)
                
                % Print error (testing) per epoc
                fprintf('\t Epoch : %d Update : %d  Test Loss : %f \n',NE,num_up,testerr);
                
                %%%%%%%%%%%%%%%%%%%%%%%%%%%% save weight file %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                % save parameters every epoch
                Wi = gather(GWi);Wfr = gather(GWfr);U = gather(GU); bh = gather(Gbh); bo = gather(Gbo);
                save(strcat(wtdir,'W_',arch_name,'.mat'),'Wi','Wfr','U','bh','bo');
            end
            
            
            % Print error (validation and testing) per epoc
            fprintf(fid,'%d %d %f %f \n',NE,num_up,valerr,testerr);
        end
        
        if isnan(valerr)
            break;
        end
        
    end
    toc(twu)
    
    if isnan(valerr)
        break;
    end
    
    
end


