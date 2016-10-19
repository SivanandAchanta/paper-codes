
% add l1 and l2 regularization terms to the gradients
gbi = (gbi + l1*sign(Gbi) + l2*Gbi);
gbba1 = (gbba1 + l1*sign(Gbba1) + l2*Gbba1);
gbba2 = (gbba2 + l1*sign(Gbba2) + l2*Gbba2);
gba = (gba + l1*sign(Gba) + l2*Gba);
gbh = (gbh + l1*sign(Gbh) + l2*Gbh);
gbo = (gbo + l1*sign(Gbo) + l2*Gbo);
gWi = (gWi + l1*sign(GWi) + l2*GWi);
gWba1 = (gWba1 + l1*sign(GWba1) + l2*GWba1);
gWba2 = (gWba2 + l1*sign(GWba2) + l2*GWba2);
gWa = (gWa + l1*sign(GWa) + l2*GWa);
gWh = (gWh + l1*sign(GWh) + l2*GWh);
gWo = (gWo + l1*sign(GWo) + l2*GWo);

switch sgd_type
    
    case 'sgdcm'
        
        Gdbi = -lr*gbi;
        Gdbba1 = -lr*gbba1;
        Gdbba2 = -lr*gbba2;
        Gdba = -lr*gba;
        Gdbh = -lr*gbh;
        Gdbo = -lr*gbo;
        GdWi = -lr*gWi;
        GdWba1 = -lr*gWba1;
        GdWba2 = -lr*gWba2;
        GdWa = -lr*gWa;
        GdWh = -lr*gWh;
        GdWo = -lr*gWo;
        
        Gpdbi = Gdbi + mf*Gpdbi;
        Gpdbba1 = Gdbba1 + mf*Gpdbba1;
        Gpdbba2 = Gdbba2 + mf*Gpdbba2;
        Gpdba = Gdba + mf*Gpdba;
        Gpdbh = Gdbh + mf*Gpdbh;
        Gpdbo = Gdbo + mf*Gpdbo;
        GpdWi = GdWi + mf*GpdWi;
        GpdWba1 = GdWba1 + mf*GpdWba1;
        GpdWba2 = GdWba2 + mf*GpdWba2;
        GpdWa = GdWa + mf*GpdWa;
        GpdWh = GdWh + mf*GpdWh;
        GpdWo = GdWo + mf*GpdWo;
        
        % Update weights
        Gbi = Gbi + Gpdbi;
        Gbba1 = Gbba1 + Gpdbba1;
        Gbba2 = Gbba2 + Gpdbba2;
        Gba = Gba + Gpdba;
        Gbh = Gbh + Gpdbh;
        Gbo = Gbo + Gpdbo;
        GWi = GWi + GpdWi;
        GWba1 = GWba1 + GpdWba1;
        GWba2 = GWba2 + GpdWba2;
        GWa = GWa + GpdWa;
        GWh = GWh + GpdWh;
        GWo = GWo + GpdWo;
        
    case 'adadelta'
        
        % adadelta equations
        Gpmsgbi = rho*(Gpmsgbi) + (1-rho)*(gbi.^2);
        Gpmsgbba1 = rho*(Gpmsgbba1) + (1-rho)*(gbba1.^2);
        Gpmsgbba2 = rho*(Gpmsgbba2) + (1-rho)*(gbba2.^2);
        Gpmsgba = rho*(Gpmsgba) + (1-rho)*(gba.^2);
        Gpmsgbh = rho*(Gpmsgbh) + (1-rho)*(gbh.^2);
        Gpmsgbo = rho*(Gpmsgbo) + (1-rho)*(gbo.^2);
        GpmsgWi = rho*(GpmsgWi) + (1-rho)*(gWi.^2);
        GpmsgWba1 = rho*(GpmsgWba2) + (1-rho)*(gWba1.^2);
        GpmsgWba2 = rho*(GpmsgWba2) + (1-rho)*(gWba2.^2);
        GpmsgWa = rho*(GpmsgWa) + (1-rho)*(gWa.^2);
        GpmsgWh = rho*(GpmsgWh) + (1-rho)*(gWh.^2);
        GpmsgWo = rho*(GpmsgWo) + (1-rho)*(gWo.^2);
        
        %
        rmsgbi = sqrt(Gpmsgbi + eps);  rmsxbi = sqrt(Gpmsxbi + eps);
        rmsgbba1 = sqrt(Gpmsgbba1 + eps);  rmsxbba1 = sqrt(Gpmsxbba1 + eps);
        rmsgbba2 = sqrt(Gpmsgbba2 + eps);  rmsxbba2 = sqrt(Gpmsxbba2 + eps);
        rmsgba = sqrt(Gpmsgba + eps);  rmsxba = sqrt(Gpmsxba + eps);
        rmsgbh = sqrt(Gpmsgbh + eps);  rmsxbh = sqrt(Gpmsxbh + eps);
        rmsgbo = sqrt(Gpmsgbo + eps);  rmsxbo = sqrt(Gpmsxbo + eps);
        rmsgWi = sqrt(GpmsgWi + eps); rmsxWi = sqrt(GpmsxWi + eps);
        rmsgWba1 = sqrt(GpmsgWba1 + eps); rmsxWba1 = sqrt(GpmsxWba1 + eps);
        rmsgWba2 = sqrt(GpmsgWba2 + eps); rmsxWba2 = sqrt(GpmsxWba2 + eps);
        rmsgWa = sqrt(GpmsgWa + eps); rmsxWa = sqrt(GpmsxWa + eps);
        rmsgWh = sqrt(GpmsgWh + eps); rmsxWh = sqrt(GpmsxWh + eps);
        rmsgWo = sqrt(GpmsgWo + eps); rmsxWo = sqrt(GpmsxWo + eps);
        
        Gdbi = -(rmsxbi./rmsgbi).*gbi;
        Gdbba1 = -(rmsxbba1./rmsgbba1).*gbba1;
        Gdbba2 = -(rmsxbba2./rmsgbba2).*gbba2;
        Gdba = -(rmsxba./rmsgba).*gba;
        Gdbh = -(rmsxbh./rmsgbh).*gbh;
        Gdbo = -(rmsxbo./rmsgbo).*gbo;
        GdWi = -(rmsxWi./rmsgWi).*gWi;
        GdWba1 = -(rmsxWba1./rmsgWba1).*gWba1;
        GdWba2 = -(rmsxWba2./rmsgWba2).*gWba2;
        GdWa = -(rmsxWa./rmsgWa).*gWa;
        GdWh = -(rmsxWh./rmsgWh).*gWh;
        GdWo = -(rmsxWo./rmsgWo).*gWo;
        
        
        %
        Gpmsxbi = rho*(Gpmsxbi) + (1-rho)*(Gdbi.^2);
        Gpmsxbba1 = rho*(Gpmsxbba1) + (1-rho)*(Gdbba1.^2);
        Gpmsxbba2 = rho*(Gpmsxbba2) + (1-rho)*(Gdbba2.^2);
        Gpmsxba = rho*(Gpmsxba) + (1-rho)*(Gdba.^2);
        Gpmsxbh = rho*(Gpmsxbh) + (1-rho)*(Gdbh.^2);
        Gpmsxbo = rho*(Gpmsxbo) + (1-rho)*(Gdbo.^2);
        GpmsxWi = rho*(GpmsxWi) + (1-rho)*(GdWi.^2);
        GpmsxWba1 = rho*(GpmsxWba1) + (1-rho)*(GdWba1.^2);
        GpmsxWba2 = rho*(GpmsxWba2) + (1-rho)*(GdWba2.^2);
        GpmsxWa = rho*(GpmsxWa) + (1-rho)*(GdWa.^2);
        GpmsxWh = rho*(GpmsxWh) + (1-rho)*(GdWh.^2);
        GpmsxWo = rho*(GpmsxWo) + (1-rho)*(GdWo.^2);
        
        Gpdbi = Gdbi + mf*Gpdbi;
        Gpdbba1 = Gdbba1 + mf*Gpdbba1;
        Gpdbba2 = Gdbba2 + mf*Gpdbba2;
        Gpdba = Gdba + mf*Gpdba;
        Gpdbh = Gdbh + mf*Gpdbh;
        Gpdbo = Gdbo + mf*Gpdbo;
        GpdWi = GdWi + mf*GpdWi;
        GpdWba1 = GdWba1 + mf*GpdWba1;
        GpdWba2 = GdWba2 + mf*GpdWba2;
        GpdWa = GdWa + mf*GpdWa;
        GpdWh = GdWh + mf*GpdWh;
        GpdWo = GdWo + mf*GpdWo;
        
        % Update weights
        Gbi = Gbi + Gpdbi;
        Gbba1 = Gbba1 + Gpdbba1;
        Gbba2 = Gbba2 + Gpdbba2;
        Gba = Gba + Gpdba;
        Gbh = Gbh + Gpdbh;
        Gbo = Gbo + Gpdbo;
        GWi = GWi + GpdWi;
        GWba1 = GWba1 + GpdWba1;
        GWba2 = GWba2 + GpdWba2;
        GWa = GWa + GpdWa;
        GWh = GWh + GpdWh;
        GWo = GWo + GpdWo;
        
    case 'adam'
        
        % Adam equations
        beta1_t = beta1*(lam^(num_up-1));
        
        % biased moments
        Gpmbi = beta1_t*Gpmbi + (1 - beta1_t)*gbi;
        Gpmbba1 = beta1_t*Gpmbba1 + (1 - beta1_t)*gbba1;
        Gpmbba2 = beta1_t*Gpmbba2 + (1 - beta1_t)*gbba2;
        Gpmba = beta1_t*Gpmba + (1 - beta1_t)*gba;
        Gpmbh = beta1_t*Gpmbh + (1 - beta1_t)*gbh;
        Gpmbo = beta1_t*Gpmbo + (1 - beta1_t)*gbo;
        GpmWi = beta1_t*GpmWi + (1 - beta1_t)*gWi;
        GpmWba1 = beta1_t*GpmWba1 + (1 - beta1_t)*gWba1;
        GpmWba2 = beta1_t*GpmWba2 + (1 - beta1_t)*gWba2;
        GpmWa = beta1_t*GpmWa + (1 - beta1_t)*gWa;
        GpmWh = beta1_t*GpmWh + (1 - beta1_t)*gWh;
        GpmWo = beta1_t*GpmWo + (1 - beta1_t)*gWo;
        
        Gpvbi = beta2*Gpvbi + (1 - beta2)*(gbi.^2);
        Gpvbba1 = beta2*Gpvbba1 + (1 - beta2)*(gbba1.^2);
        Gpvbba2 = beta2*Gpvbba2 + (1 - beta2)*(gbba2.^2);
        Gpvba = beta2*Gpvba + (1 - beta2)*(gba.^2);
        Gpvbh = beta2*Gpvbh + (1 - beta2)*(gbh.^2);
        Gpvbo = beta2*Gpvbo + (1 - beta2)*(gbo.^2);
        GpvWi = beta2*GpvWi + (1 - beta2)*(gWi.^2);
        GpvWba1 = beta2*GpvWba1 + (1 - beta2)*(gWba1.^2);
        GpvWba2 = beta2*GpvWba2 + (1 - beta2)*(gWba2.^2);
        GpvWa = beta2*GpvWa + (1 - beta2)*(gWa.^2);
        GpvWh = beta2*GpvWh + (1 - beta2)*(gWh.^2);
        GpvWo = beta2*GpvWo + (1 - beta2)*(gWo.^2);
        
        % bias correction
        mbit_cap = Gpmbi./(1 - beta1^num_up);
        mbbat1_cap = Gpmbba1./(1 - beta1^num_up);
        mbbat2_cap = Gpmbba2./(1 - beta1^num_up);
        mbat_cap = Gpmba./(1 - beta1^num_up);
        mbht_cap = Gpmbh./(1 - beta1^num_up);
        mbot_cap = Gpmbo./(1 - beta1^num_up);
        mWit_cap = GpmWi./(1 - beta1^num_up);
        mWbat1_cap = GpmWba1./(1 - beta1^num_up);
        mWbat2_cap = GpmWba2./(1 - beta1^num_up);
        mWat_cap = GpmWa./(1 - beta1^num_up);
        mWht_cap = GpmWh./(1 - beta1^num_up);
        mWot_cap = GpmWo./(1 - beta1^num_up);
        
        vbit_cap = Gpvbi./(1 - beta2^num_up);
        vbbat1_cap = Gpvbba1./(1 - beta2^num_up);
        vbbat2_cap = Gpvbba2./(1 - beta2^num_up);
        vbat_cap = Gpvba./(1 - beta2^num_up);
        vbht_cap = Gpvbh./(1 - beta2^num_up);
        vbot_cap = Gpvbo./(1 - beta2^num_up);
        vWit_cap = GpvWi./(1 - beta2^num_up);
        vWbat1_cap = GpvWba1./(1 - beta2^num_up);
        vWbat2_cap = GpvWba2./(1 - beta2^num_up);
        vWat_cap = GpvWa./(1 - beta2^num_up);
        vWht_cap = GpvWh./(1 - beta2^num_up);
        vWot_cap = GpvWo./(1 - beta2^num_up);
        
        % Update Params
        Gbi = Gbi - alpha_adam*mbit_cap./(sqrt(vbit_cap)+eps_hp);
        Gbba1 = Gbba1 - alpha_adam*mbbat1_cap./(sqrt(vbbat1_cap)+eps_hp);
        Gbba2 = Gbba2 - alpha_adam*mbbat2_cap./(sqrt(vbbat2_cap)+eps_hp);
        Gba = Gba - alpha_adam*mbat_cap./(sqrt(vbat_cap)+eps_hp);
        Gbh = Gbh - alpha_adam*mbht_cap./(sqrt(vbht_cap)+eps_hp);
        Gbo = Gbo - alpha_adam*mbot_cap./(sqrt(vbot_cap)+eps_hp);
        GWi = GWi - alpha_adam*mWit_cap./(sqrt(vWit_cap)+eps_hp);
        GWba1 = GWba1 - alpha_adam*mWbat1_cap./(sqrt(vWbat1_cap)+eps_hp);
        GWba2 = GWba2 - alpha_adam*mWbat2_cap./(sqrt(vWbat2_cap)+eps_hp);
        GWa = GWa - alpha_adam*mWat_cap./(sqrt(vWat_cap)+eps_hp);
        GWh = GWh - alpha_adam*mWht_cap./(sqrt(vWht_cap)+eps_hp);
        GWo = GWo - alpha_adam*mWot_cap./(sqrt(vWot_cap)+eps_hp);
        
end



