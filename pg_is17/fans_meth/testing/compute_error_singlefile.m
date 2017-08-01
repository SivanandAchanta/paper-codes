function [me,ym,Y] = compute_error_singlefile(data,targets,clv,numbats,li,p_f_1_1,p_f_1_2,p_f_1_3,p_f_1_4,p_f_1_5,p_lf_1,p_lb_1,p_lf_2,p_lb_2,p_f_2_1,p_f_2_2,p_f_2_3,p_f_2_4,p_f_2_5,p_f_2_6,p_f_2_7,p_f_2_8,p_f_2_9,f,nl,cfn)

gpu_flag = 0;

    
    [X,Y,sl] = get_XY_seqver(data, targets, clv, (1:numbats), li, gpu_flag);
    [lid,sid] = get_lidnsid(X(1,:));

    fp_model
    
    % Cost Funtion
    switch cfn
        case 'nll'
            me = compute_zerooneloss(ym,Y);
        case 'ls'
            me = compute_nmlMSE(ym,Y);
    end
    
    
