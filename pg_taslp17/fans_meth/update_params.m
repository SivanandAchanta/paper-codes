switch lid
    case 1
        [p_f_1_1] = update_params_ll(p_f_1_1,sgd_type,lr,mf,rho_hp,eps_hp,alpha,beta1,beta2,lam,num_up);
    case 2
        [p_f_1_2] = update_params_ll(p_f_1_2,sgd_type,lr,mf,rho_hp,eps_hp,alpha,beta1,beta2,lam,num_up);
    case 3
        [p_f_1_3] = update_params_ll(p_f_1_3,sgd_type,lr,mf,rho_hp,eps_hp,alpha,beta1,beta2,lam,num_up);
    case 4
        [p_f_1_4] = update_params_ll(p_f_1_4,sgd_type,lr,mf,rho_hp,eps_hp,alpha,beta1,beta2,lam,num_up);
    case 5
        [p_f_1_5] = update_params_ll(p_f_1_5,sgd_type,lr,mf,rho_hp,eps_hp,alpha,beta1,beta2,lam,num_up);
        
end


[p_lf_1] = update_params_lstm(p_lf_1,sgd_type,lr,mf,rho_hp,eps_hp,alpha,beta1,beta2,lam,num_up);
[p_lb_1] = update_params_lstm(p_lb_1,sgd_type,lr,mf,rho_hp,eps_hp,alpha,beta1,beta2,lam,num_up);
[p_lf_2] = update_params_lstm(p_lf_2,sgd_type,lr,mf,rho_hp,eps_hp,alpha,beta1,beta2,lam,num_up);
[p_lb_2] = update_params_lstm(p_lb_2,sgd_type,lr,mf,rho_hp,eps_hp,alpha,beta1,beta2,lam,num_up);


switch sid
    case 1
        [p_f_2_1] = update_params_ll(p_f_2_1,sgd_type,lr,mf,rho_hp,eps_hp,alpha,beta1,beta2,lam,num_up);
    case 2
        [p_f_2_2] = update_params_ll(p_f_2_2,sgd_type,lr,mf,rho_hp,eps_hp,alpha,beta1,beta2,lam,num_up);
    case 3
        [p_f_2_3] = update_params_ll(p_f_2_3,sgd_type,lr,mf,rho_hp,eps_hp,alpha,beta1,beta2,lam,num_up);
    case 4
        [p_f_2_4] = update_params_ll(p_f_2_4,sgd_type,lr,mf,rho_hp,eps_hp,alpha,beta1,beta2,lam,num_up);
    case 5
        [p_f_2_5] = update_params_ll(p_f_2_5,sgd_type,lr,mf,rho_hp,eps_hp,alpha,beta1,beta2,lam,num_up);
    case 6
        [p_f_2_6] = update_params_ll(p_f_2_6,sgd_type,lr,mf,rho_hp,eps_hp,alpha,beta1,beta2,lam,num_up);
    case 7
        [p_f_2_7] = update_params_ll(p_f_2_7,sgd_type,lr,mf,rho_hp,eps_hp,alpha,beta1,beta2,lam,num_up);
    case 8
        [p_f_2_8] = update_params_ll(p_f_2_8,sgd_type,lr,mf,rho_hp,eps_hp,alpha,beta1,beta2,lam,num_up);
    case 9
        [p_f_2_9] = update_params_ll(p_f_2_9,sgd_type,lr,mf,rho_hp,eps_hp,alpha,beta1,beta2,lam,num_up);
end