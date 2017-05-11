
switch sgd_type
    
    case 'sgdcm'
        
        [Gpi1.Wi, Gpi1.pdWi] = sgdcm(lr, mf, Gpi1.gWi, Gpi1.pdWi, Gpi1.Wi);
        [Gpi1.Wfr, Gpi1.pdWfr] = sgdcm(lr, mf, Gpi1.gWfr, Gpi1.pdWfr, Gpi1.Wfr);
        [Gpi1.bh, Gpi1.pdbh] = sgdcm(lr, mf, Gpi1.gbh, Gpi1.pdbh, Gpi1.bh);

	[Gpi2.Wi, Gpi2.pdWi] = sgdcm(lr, mf, Gpi2.gWi, Gpi2.pdWi, Gpi2.Wi);
        [Gpi2.Wfr, Gpi2.pdWfr] = sgdcm(lr, mf, Gpi2.gWfr, Gpi2.pdWfr, Gpi2.Wfr);
        [Gpi2.bh, Gpi2.pdbh] = sgdcm(lr, mf, Gpi2.gbh, Gpi2.pdbh, Gpi2.bh);
        
        [Gpo.U, Gpo.pdU] = sgdcm(lr, mf, Gpo.gU, Gpo.pdU, Gpo.U);
        [Gpo.bu, Gpo.pdbu] = sgdcm(lr, mf, Gpo.gbu, Gpo.pdbu, Gpo.bu);
        
    case 'adadelta'
        
        [Gpi1.Wi, Gpi1.pmsgWi, Gpi1.pmsxWi, Gpi1.pdWi] = adadelta(rho_hp, eps_hp, mf, Gpi1.gWi, Gpi1.pmsgWi, Gpi1.pmsxWi, Gpi1.pdWi, Gpi1.Wi);
        [Gpi1.Wfr, Gpi1.pmsgWfr, Gpi1.pmsxWfr, Gpi1.pdWfr] = adadelta(rho_hp, eps_hp, mf, Gpi1.gWfr, Gpi1.pmsgWfr, Gpi1.pmsxWfr, Gpi1.pdWfr, Gpi1.Wfr);
        [Gpi1.bh, Gpi1.pmsgbh, Gpi1.pmsxbh, Gpi1.pdbh] = adadelta(rho_hp, eps_hp, mf, Gpi1.gbh, Gpi1.pmsgbh, Gpi1.pmsxbh, Gpi1.pdbh, Gpi1.bh);

	[Gpi2.Wi, Gpi2.pmsgWi, Gpi2.pmsxWi, Gpi2.pdWi] = adadelta(rho_hp, eps_hp, mf, Gpi2.gWi, Gpi2.pmsgWi, Gpi2.pmsxWi, Gpi2.pdWi, Gpi2.Wi);
        [Gpi2.Wfr, Gpi2.pmsgWfr, Gpi2.pmsxWfr, Gpi2.pdWfr] = adadelta(rho_hp, eps_hp, mf, Gpi2.gWfr, Gpi2.pmsgWfr, Gpi2.pmsxWfr, Gpi2.pdWfr, Gpi2.Wfr);
        [Gpi2.bh, Gpi2.pmsgbh, Gpi2.pmsxbh, Gpi2.pdbh] = adadelta(rho_hp, eps_hp, mf, Gpi2.gbh, Gpi2.pmsgbh, Gpi2.pmsxbh, Gpi2.pdbh, Gpi2.bh);
        
        [Gpo.U, Gpo.pmsgU, Gpo.pmsxU, Gpo.pdU] = adadelta(rho_hp, eps_hp, mf, Gpo.gU, Gpo.pmsgU, Gpo.pmsxU, Gpo.pdU, Gpo.U);
        [Gpo.bu, Gpo.pmsgbu, Gpo.pmsxbu, Gpo.pdbu] = adadelta(rho_hp, eps_hp, mf, Gpo.gbu, Gpo.pmsgbu, Gpo.pmsxbu, Gpo.pdbu, Gpo.bu);
        
    case 'adam'
        
        [Gpi1.Wi,Gpi1.pmWi,Gpi1.pvWi]      = adam(alpha,beta1,beta2,eps_hp,lam,num_up,Gpi1.gWi,Gpi1.pmWi,Gpi1.pvWi,Gpi1.Wi);
        [Gpi1.Wfr,Gpi1.pmWfr,Gpi1.pvWfr]      = adam(alpha,beta1,beta2,eps_hp,lam,num_up,Gpi1.gWfr,Gpi1.pmWfr,Gpi1.pvWfr,Gpi1.Wfr);
        [Gpi1.bh,Gpi1.pmbh,Gpi1.pvbh]      = adam(alpha,beta1,beta2,eps_hp,lam,num_up,Gpi1.gbh,Gpi1.pmbh,Gpi1.pvbh,Gpi1.bh);

        [Gpi2.Wi,Gpi2.pmWi,Gpi2.pvWi]      = adam(alpha,beta1,beta2,eps_hp,lam,num_up,Gpi2.gWi,Gpi2.pmWi,Gpi2.pvWi,Gpi2.Wi);
        [Gpi2.Wfr,Gpi2.pmWfr,Gpi2.pvWfr]      = adam(alpha,beta1,beta2,eps_hp,lam,num_up,Gpi2.gWfr,Gpi2.pmWfr,Gpi2.pvWfr,Gpi2.Wfr);
        [Gpi2.bh,Gpi2.pmbh,Gpi2.pvbh]      = adam(alpha,beta1,beta2,eps_hp,lam,num_up,Gpi2.gbh,Gpi2.pmbh,Gpi2.pvbh,Gpi2.bh);

       
        [Gpo.U,Gpo.pmU,Gpo.pvU]      = adam(alpha,beta1,beta2,eps_hp,lam,num_up,Gpo.gU,Gpo.pmU,Gpo.pvU,Gpo.U);
        [Gpo.bu,Gpo.pmbu,Gpo.pvbu]      = adam(alpha,beta1,beta2,eps_hp,lam,num_up,Gpo.gbu,Gpo.pmbu,Gpo.pvbu,Gpo.bu);
        
end



