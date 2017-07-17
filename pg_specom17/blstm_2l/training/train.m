% fp and bp for each batch
for i = 1:train_numbats
    
    num_up = num_up + 1;
    
    % get data
    [X,Y,sl] = get_XY_seqver(train_batchdata, train_batchtargets, train_clv, rp, i, gpu_flag);

    % fp and bp
    fp_model
    bp_model
    
    % gradient checking with numerical gradients
    %if gradCheckFlag
    %    gradCheck
    %end
    
    % gradient clipping
    %if gc_flag
    clip_grad
    %end
    
    % update params
    update_params
    
    % compute train val test loss
    compute_train_val_test_loss
    
    if isnan(val_err) || isnan(test_err)
        break;
    end
end
