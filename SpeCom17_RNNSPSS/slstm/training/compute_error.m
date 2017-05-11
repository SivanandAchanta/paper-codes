function [tot_err] = compute_error(data,targets,clv,numbats,Wz,Rz,bz,Wf,Rf,bf,U,bu,ff,nl,cfn)

tot_err = 0;
gpu_flag = 0;

for li  = 1:numbats
    
    [X,Y,sl] = get_XY_seqver(data, targets, clv, (1:numbats), li, gpu_flag);
    
    % Forward Pass
    [~,~,~,~,ol_mat] = fp_lstm(X,Wz,Rz,bz,Wf,Rf,bf,nl,sl,ff,U,bu);
    
    % Cost Funtion
    switch cfn
        case 'nll'
            me = compute_zerooneloss(ol_mat,Y);
        case 'ls'
            me = compute_nmlMSE(ol_mat,Y);
    end
 
    tot_err     = tot_err + me/numbats;
    
end
