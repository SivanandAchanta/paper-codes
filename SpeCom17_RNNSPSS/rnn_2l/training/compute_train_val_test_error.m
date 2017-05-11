if mod(num_up,check_valfreq) == 0
    
    tic
    [train_err] = compute_error(train_batchdata,train_batchtargets,train_clv,train_test_numbats,gpu_flag,Gpi1,Gpi2,Gpo,f,nl,cfn,a_tanh,b_tanh);
    toc
    
    tic
    [val_err] = compute_error(val_batchdata,val_batchtargets,val_clv,val_numbats,gpu_flag,Gpi1,Gpi2,Gpo,f,nl,cfn,a_tanh,b_tanh);
    toc
    
    % Print error (validation) per epoc
    fprintf('Epoch : %d Update : %d  Train Loss : %f Val Loss : %f \n',NE,num_up,train_err,val_err);
    
    if val_err < best_val_err
        if val_err < (best_val_err*imp_thresh)
            patience = max(patience,iter*patience_inc);
        end
        best_val_err = val_err;
        best_epoch = NE;
        
        tic
        [test_err] = compute_error(test_batchdata,test_batchtargets,test_clv,test_numbats,gpu_flag,Gpi1,Gpi2,Gpo,f,nl,cfn,a_tanh,b_tanh);
        toc
        
        % Print error (testing) per epoc
        fprintf('\t Update : %d  Test Loss : %f \n',num_up,test_err);
        
        %%%%%%%%%%%%%%%%%%%%%%%%%%%% save weight file %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        % save parameters every epoch
        save_params
    end
    toc
    
    % Print error (validation and testing) per epoc
    fprintf(fid,'%d %d %f %f %f\n',NE,num_up,train_err,val_err,test_err);
end
