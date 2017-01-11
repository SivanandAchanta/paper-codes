
switch sgd_type
    
    case 'sgdcm'
        
        
        %         cpu_U_bu_2 = gather((GU));
        %         cpu_Wfr_bu_2 = gather(GWfr);
        %         cpu_Wi_bu_2 = gather(GWi);
        %         cpu_bh_bu_2 = gather(Gbh);
        %         cpu_bo_bu_2 = gather(Gbo);
        
        Gdbh = -lr*gbh;
        Gdbo = -lr*gbo;
        GdWi = -lr*gWi;
        GdWfr = -lr*gWfr;
        GdU = -lr*gU;
        
        %         cpu_dU_2 = gather((GdU));
        %         cpu_dWfr_2 = gather(GdWfr);
        %         cpu_dWi_2 = gather(GdWi);
        %         cpu_dbh_2 = gather(Gdbh);
        %         cpu_dbo_2 = gather(Gdbo);
        
        Gpdbh = Gdbh + mf*Gpdbh;
        Gpdbo = Gdbo + mf*Gpdbo;
        GpdWi = GdWi + mf*GpdWi;
        GpdWfr = GdWfr + mf*GpdWfr;
        GpdU = GdU + mf*GpdU;
        
        %         cpu_pdU_2 = gather((GpdU));
        %         cpu_pdWfr_2 = gather(GpdWfr);
        %         cpu_pdWi_2 = gather(GpdWi);
        %         cpu_pdbh_2 = gather(Gpdbh);
        %         cpu_pdbo_2 = gather(Gpdbo);
        
        
        % Update weights
        Gbh = Gbh + Gpdbh;
        Gbo = Gbo + Gpdbo;
        GWi = GWi + GpdWi;
        GWfr = GWfr + GpdWfr;
        GU = GU + GpdU;
        
        %         cpu_U_au_2 = gather((GU));
        %         cpu_Wfr_au_2 = gather(GWfr);
        %         cpu_Wi_au_2 = gather(GWi);
        %         cpu_bh_au_2 = gather(Gbh);
        %         cpu_bo_au_2 = gather(Gbo);
        
        
        %         save(strcat('../drnn_v1/rnn_update_params_',num2str(num_up),'.mat'),'cpu_U_bu_2','cpu_bo_bu_2','cpu_Wi_bu_2','cpu_Wfr_bu_2','cpu_bh_bu_2', ...
        %             'cpu_dU_2','cpu_dbo_2','cpu_dWi_2','cpu_dWfr_2','cpu_dbh_2','cpu_pdU_2','cpu_pdbo_2','cpu_pdWi_2','cpu_pdWfr_2','cpu_pdbh_2',...
        %             'cpu_U_au_2','cpu_bo_au_2','cpu_Wi_au_2','cpu_Wfr_au_2','cpu_bh_au_2');
        
    case 'adadelta'
        
        % adadelta equations
        Gpmsgbh = rho*(Gpmsgbh) + (1-rho)*(gbh.^2);
        Gpmsgbo = rho*(Gpmsgbo) + (1-rho)*(gbo.^2);
        GpmsgWi = rho*(GpmsgWi) + (1-rho)*(gWi.^2);
        GpmsgWfr = rho*(GpmsgWfr) + (1-rho)*(gWfr.^2);
        GpmsgU = rho*(GpmsgU) + (1-rho)*(gU.^2);
        
        %
        rmsgbh = sqrt(Gpmsgbh + eps);  rmsxbh = sqrt(Gpmsxbh + eps);
        rmsgbo = sqrt(Gpmsgbo + eps);  rmsxbo = sqrt(Gpmsxbo + eps);
        rmsgWi = sqrt(GpmsgWi + eps); rmsxWi = sqrt(GpmsxWi + eps);
        rmsgWfr = sqrt(GpmsgWfr + eps); rmsxWfr = sqrt(GpmsxWfr + eps);
        rmsgU = sqrt(GpmsgU + eps); rmsxU = sqrt(GpmsxU + eps);
        
        Gdbh = -(rmsxbh./rmsgbh).*gbh;
        Gdbo = -(rmsxbo./rmsgbo).*gbo;
        GdWi = -(rmsxWi./rmsgWi).*gWi;
        GdWfr = -(rmsxWfr./rmsgWfr).*gWfr;
        GdU = -(rmsxU./rmsgU).*gU;
        
        %
        Gpmsxbh = rho*(Gpmsxbh) + (1-rho)*(Gdbh.^2);
        Gpmsxbo = rho*(Gpmsxbo) + (1-rho)*(Gdbo.^2);
        GpmsxWi = rho*(GpmsxWi) + (1-rho)*(GdWi.^2);
        GpmsxWfr = rho*(GpmsxWfr) + (1-rho)*(GdWfr.^2);
        GpmsxU = rho*(GpmsxU) + (1-rho)*(GdU.^2);
        
        Gpdbh = Gdbh + mf*Gpdbh;
        Gpdbo = Gdbo + mf*Gpdbo;
        GpdWi = GdWi + mf*GpdWi;
        GpdWfr = GdWfr + mf*GpdWfr;
        GpdU = GdU + mf*GpdU;
        
        % Update weights
        Gbh = Gbh + Gpdbh;
        Gbo = Gbo + Gpdbo;
        GWi = GWi + GpdWi;
        GWfr = GWfr + GpdWfr;
        GU = GU + GpdU;
        
    case 'adam'
        
        % Adam equations
        beta1_t = beta1*(lam^(num_up-1));
        
        % biased moments
        Gpmbh = beta1_t*Gpmbh + (1 - beta1_t)*gbh;
        Gpmbo = beta1_t*Gpmbo + (1 - beta1_t)*gbo;
        GpmWi = beta1_t*GpmWi + (1 - beta1_t)*gWi;
        GpmWfr = beta1_t*GpmWfr + (1 - beta1_t)*gWfr;
        GpmU = beta1_t*GpmU + (1 - beta1_t)*gU;
        
        Gpvbh = beta2*Gpvbh + (1 - beta2)*(gbh.^2);
        Gpvbo = beta2*Gpvbo + (1 - beta2)*(gbo.^2);
        GpvWi = beta2*GpvWi + (1 - beta2)*(gWi.^2);
        GpvWfr = beta2*GpvWfr + (1 - beta2)*(gWfr.^2);
        GpvU = beta2*GpvU + (1 - beta2)*(gU.^2);
        
        % bias correction
        mbht_cap = Gpmbh./(1 - beta1^num_up);
        mbot_cap = Gpmbo./(1 - beta1^num_up);
        mWit_cap = GpmWi./(1 - beta1^num_up);
        mWfrt_cap = GpmWfr./(1 - beta1^num_up);
        mUt_cap = GpmU./(1 - beta1^num_up);
        
        vbht_cap = Gpvbh./(1 - beta2^num_up);
        vbot_cap = Gpvbo./(1 - beta2^num_up);
        vWit_cap = GpvWi./(1 - beta2^num_up);
        vWfrt_cap = GpvWfr./(1 - beta2^num_up);
        vUt_cap = GpvU./(1 - beta2^num_up);
        
        % Update Params
        Gbh = Gbh - alpha*mbht_cap./(sqrt(vbht_cap)+eps_hp);
        Gbo = Gbo - alpha*mbot_cap./(sqrt(vbot_cap)+eps_hp);
        GWi = GWi - alpha*mWit_cap./(sqrt(vWit_cap)+eps_hp);
        GWfr = GWfr - alpha*mWfrt_cap./(sqrt(vWfrt_cap)+eps_hp);
        GU = GU - alpha*mUt_cap./(sqrt(vUt_cap)+eps_hp);
        
end



