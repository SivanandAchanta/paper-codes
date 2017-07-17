
switch sgd_type
    case 'sgdcm'
        lr_vec = [rho_hp];
        mf_vec = [eps_hp];
	rho_hp = 0; eps_hp = 0; alpha = 0; beta1 = 0; beta2 = 0; lam = 0;
    case 'adadelta'
        rho_vec = [rho_hp];
        eps_vec = [eps_hp];
        mf_vec = [0];
	mf = 0; lr = 0; alpha = 0; beta1 = 0; beta2 = 0; lam = 0;
    case 'adam'
        alpha_vec = [rho_hp];
        beta1_vec = [eps_hp];
        beta2_vec = [0.99];
        eps_hp = 1e-8;
        lam = 1 - eps_hp;
	lr = 0 ; mf = 0; rho_hp = 0 ;
end

