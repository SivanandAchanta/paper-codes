function [total_err] = compute_error(data,targets,clv,numbats,gpu_flag,Gpi1,Gpi2,Gpo,f,nl,cfn,a_tanh,b_tanh)

total_err = 0;
% error computation
for li = 1:numbats
    [X,Y,sl] = get_XY_seqver(data, targets, clv, (1:numbats), li, gpu_flag);
    
    % fp
    if gpu_flag
        [hcm,ol_mat] = fp_gpu(X,GWi,GWfr,GU,Gbh,Gbo,f,nl,a_tanh,b_tanh,sl);
    else
	hcm1 = fp_cpu_rl(X,Gpi1,f(1),nl(2),sl);
    	hcm2 = fp_cpu_rl(hcm1,Gpi2,f(2),nl(3),sl);
    	ol_mat = fp_cpu_ll(hcm2,Gpo,f(end));
    end
    
    switch cfn
        case 'nll'
            me = compute_zerooneloss(ol_mat,Y);
        case 'ls'
            me = compute_nmlMSE(ol_mat,Y);
    end
    
    total_err = total_err + me/numbats;
    
end
