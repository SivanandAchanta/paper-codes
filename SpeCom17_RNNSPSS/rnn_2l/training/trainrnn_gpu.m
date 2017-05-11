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

for NE = 1:numepochs
    
    % for each epoch
    iter = (NE-1)*train_numbats;
    
    % Weight update step
    twu = tic;

    rp = randperm(train_numbats);
      
    % fp and bp for each batch
    for i = 1:train_numbats
        
        num_up = num_up + 1;
        
        % get data
        [X,Y,sl] = get_XY_seqver(train_batchdata, train_batchtargets, train_clv, rp, i, gpu_flag);
        
        % fp
        [hcm,ol_mat] = fp_gpu(X,GWi,GWfr,GU,Gbh,Gbo,f,nl,a_tanh,b_tanh,sl);
        
        % bp
        [gWi,gWfr,gbh,gU,gbo] = bp_gpu(nl,f,X,Y,ol_mat,hcm,GU,GWfr,sl,a_tanh,b_tanh,bby2a,cfn);
        
        % clip the gradients above a threshold
        if gc_flag
            [gWi] = gc(gWi,gcth);
            [gWfr] = gc(gWfr,gcth);
            [gU] = gc(gU,gcth);            
        end

        fprintf('Epoch : %d Update: %d maxGradLen : %f %f %f \n',NE,num_up,max(sqrt(sum(gWi.^2,2))),max(sqrt(sum(gWfr.^2,2))),max(sqrt(sum(gU.^2,2))));
        
        if gradCheckFlag
           gradCheck
        end
        
        % Update Params using Appropriate SGD Method
        update_params
        
        if isnan(max(sqrt(sum(gWi.^2,2)))) || isnan(max(sqrt(sum(gWfr.^2,2)))) || isnan(max(sqrt(sum(gU.^2,2))))
           break
        end
        
        if mod(num_up,check_valfreq) == 0
            
            tic
            [trainerr] = compute_error(train_batchdata,train_batchtargets,train_clv,train_test_numbats,gpu_flag,GWi,GWfr,GU,Gbh,Gbo,f,nl,cfn,a_tanh,b_tanh);
            toc
            
            tic
            [valerr] = compute_error(val_batchdata,val_batchtargets,val_clv,val_numbats,gpu_flag,GWi,GWfr,GU,Gbh,Gbo,f,nl,cfn,a_tanh,b_tanh);
            toc
            
            % Print error (validation) per epoc
            fprintf('Epoch : %d Update : %d  Train Loss : %f Val Loss : %f \n',NE,num_up,trainerr,valerr);
            
            if valerr < best_val_loss
                if valerr < (best_val_loss*imp_thresh)
                    patience = max(patience,iter*patience_inc);
                end
                best_val_loss = valerr;
                best_iter = iter;
                
                tic 
                [testerr] = compute_error(test_batchdata,test_batchtargets,test_clv,test_numbats,gpu_flag,GWi,GWfr,GU,Gbh,Gbo,f,nl,cfn,a_tanh,b_tanh);
                toc
                
                % Print error (testing) per epoc
                fprintf('\t Update : %d  Test Loss : %f \n',num_up,testerr);
                
                %%%%%%%%%%%%%%%%%%%%%%%%%%%% save weight file %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                % save parameters every epoch
                Wi = gather(GWi);Wfr = gather(GWfr);U = gather(GU); bh = gather(Gbh); bo = gather(Gbo);
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
    
    if isnan(valerr) || isnan(max(sqrt(sum(gWi.^2,2)))) || isnan(max(sqrt(sum(gWfr.^2,2)))) || isnan(max(sqrt(sum(gU.^2,2))))
        break;
    end
    
end


