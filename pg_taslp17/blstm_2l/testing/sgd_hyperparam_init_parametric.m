switch sgd_type
    case 'sgdcm'
        lr_vec = [rho_hp];
        mf_vec = [eps_hp];
    case 'adadelta'
        rho_vec = [rho_hp];
        eps_vec = [eps_hp];
        mf_vec = [0];
    case 'adam'
        alpha_vec = [rho_hp];
        beta1_vec = [eps_hp];
        beta2_vec = [0.999];
        eps_hp = 1e-6;
        lam = 1 - eps_hp;
end

