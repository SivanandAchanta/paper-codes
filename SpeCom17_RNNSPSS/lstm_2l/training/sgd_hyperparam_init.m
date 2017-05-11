switch sgd_type
    case 'sgdcm'
        lr_vec = [1e-1 1e-2];
        mf_vec = [0.0];
        rho_hp = 0; eps_hp = 0; alpha = 0; beta1 = 0; beta2 = 0; lam = 0;
    case 'adadelta'
        rho_vec = [0.98];
        eps_vec = [1e-8 1e-9];
        mf_vec = [0];
        mf = 0; lr = 0; alpha = 0; beta1 = 0; beta2 = 0; lam = 0;
    case 'adam'
        alpha_vec = [3e-4];
        beta1_vec = [0.9];
        beta2_vec = [0.999];
        eps_hp = 1e-8;
        lam = 1 - eps_hp;
        lr = 0 ; mf = 0; rho_hp = 0 ; 
end


