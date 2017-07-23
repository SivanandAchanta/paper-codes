[p_f_1] = update_params_ll(p_f_1,sgd_type,lr,mf,rho_hp,eps_hp,alpha,beta1,beta2,lam,num_up);
[p_lf_1] = update_params_lstm(p_lf_1,sgd_type,lr,mf,rho_hp,eps_hp,alpha,beta1,beta2,lam,num_up);
[p_lb_1] = update_params_lstm(p_lb_1,sgd_type,lr,mf,rho_hp,eps_hp,alpha,beta1,beta2,lam,num_up);
[p_lf_2] = update_params_lstm(p_lf_2,sgd_type,lr,mf,rho_hp,eps_hp,alpha,beta1,beta2,lam,num_up);
[p_lb_2] = update_params_lstm(p_lb_2,sgd_type,lr,mf,rho_hp,eps_hp,alpha,beta1,beta2,lam,num_up);
[p_f_2] = update_params_ll(p_f_2,sgd_type,lr,mf,rho_hp,eps_hp,alpha,beta1,beta2,lam,num_up);
