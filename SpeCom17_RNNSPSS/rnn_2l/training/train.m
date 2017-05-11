% fp and bp for each batch
for i = 1:train_numbats
    
    num_up = num_up + 1;
    
    % get data
    [X,Y,sl] = get_XY_seqver(train_batchdata, train_batchtargets, train_clv, rp, i, gpu_flag);
    
    % fp
    hcm1 = fp_cpu_rl(X,Gpi1,f(1),nl(2),sl);
    hcm2 = fp_cpu_rl(hcm1,Gpi2,f(2),nl(3),sl);
    ol_mat = fp_cpu_ll(hcm2,Gpo,f(end));
    
    % bp
    [Gpo.gU,Gpo.gbu,Eb] = bp_cpu_ll(nl(end),f(end),Y,ol_mat,hcm2,Gpo.U,sl,cfn);
    [Gpi2.gWi,Gpi2.gWfr,Gpi2.gbh,Eb] = bp_cpu_rl(nl(3),f(2),Eb',hcm2,hcm1,Gpi2,sl);
    [Gpi1.gWi,Gpi1.gWfr,Gpi1.gbh,Eb] = bp_cpu_rl(nl(2),f(1),Eb',hcm1,X,Gpi1,sl);
    
    % clip the gradients above a threshold
    if gc_flag
        clip_grad
    end
    
    if gradCheckFlag
        gradCheck
    end
    
    % Update Params using Appropriate SGD Method
    update_params
    
    compute_train_val_test_error
    
    if isnan(val_err)
        break;
    end
    
end
