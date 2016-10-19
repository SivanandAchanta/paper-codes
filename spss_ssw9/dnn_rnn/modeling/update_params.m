

switch sgd_type
    
    case 'sgdcm'
        
        Gdb = -lr*gb; GdW = -lr*gW;        
        Gpdb = Gdb + mf*Gpdb;  GpdW = GdW + mf*GpdW;

        % Update weights
        Gb = Gb + Gpdb;
        GW = GW + GpdW;
        
    case 'adadelta'
        
        % adadelta equations 
        Gpmsgbt = rho*(Gpmsgbt) + (1-rho)*(gb.^2);
        GpmsgWt = rho*(GpmsgWt) + (1-rho)*(gW.^2);

        %
        rmsgbt = sqrt(Gpmsgbt + eps);  rmsgWt = sqrt(GpmsgWt + eps);
        rmsxbt = sqrt(Gpmsxbt + eps);  rmsxWt = sqrt(GpmsxWt + eps);

        Gdb = -(rmsxbt./rmsgbt).*gb;   GdW = -(rmsxWt./rmsgWt).*gW;

        % 
        Gpmsxbt = rho*(Gpmsxbt) + (1-rho)*(Gdb.^2);
        GpmsxWt = rho*(GpmsxWt) + (1-rho)*(GdW.^2);

        Gpdb = Gdb + mf*Gpdb;  GpdW = GdW + mf*GpdW;

        % Update weights
        Gb = Gb + Gpdb;
        GW = GW + GpdW;
       
    case 'adam'
        
        % Adam equations
        beta1_t = beta1*(lam^(num_up-1));
        
        % biased moments
        Gpmbt = beta1_t*Gpmbt + (1 - beta1_t)*gb;
        GpmWt = beta1_t*GpmWt + (1 - beta1_t)*gW;
        
        Gpvbt = beta2*Gpvbt + (1 - beta2)*(gb.^2);
        GpvWt = beta2*GpvWt + (1 - beta2)*(gW.^2);
        
        % bias correction
        mbt_cap = Gpmbt./(1 - beta1^num_up);
        mWt_cap = GpmWt./(1 - beta1^num_up);
        
        vbt_cap = Gpvbt./(1 - beta2^num_up);
        vWt_cap = GpvWt./(1 - beta2^num_up);
        
        % Update Params       
        Gb = Gb - alpha*mbt_cap./(sqrt(vbt_cap)+eps_hp);
        GW = GW - alpha*mWt_cap./(sqrt(vWt_cap)+eps_hp);
        
end



