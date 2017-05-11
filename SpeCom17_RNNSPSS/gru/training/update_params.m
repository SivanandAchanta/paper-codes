
switch sgd_type
    
    case 'sgdcm'
        
        [Wz,pdWz]     = sgdcm(lr,mf,gWz,pdWz,Wz);
        [Rz,pdRz]     = sgdcm(lr,mf,gRz,pdRz,Rz);
        [bz,pdbz]     = sgdcm(lr,mf,gbz,pdbz,bz);
        [Wf,pdWf]     = sgdcm(lr,mf,gWf,pdWf,Wf);
        [Rf,pdRf]     = sgdcm(lr,mf,gRf,pdRf,Rf);
        [bf,pdbf]     = sgdcm(lr,mf,gbf,pdbf,bf);
        [Wc,pdWc]     = sgdcm(lr,mf,gWc,pdWc,Wc);
        [Rc,pdRc]     = sgdcm(lr,mf,gRc,pdRc,Rc);
        [bc,pdbc]     = sgdcm(lr,mf,gbc,pdbc,bc);        
        [U,pdU]       = sgdcm(lr,mf,gU,pdU,U);
        [bu,pdbu]     = sgdcm(lr,mf,gbu,pdbu,bu);
        
        
    case 'adadelta'
        
        [Wz,pmsgWz,pmsxWz,pdWz]     = adadelta(rho,eps_hp,mf,gWz,pmsgWz,pmsxWz,pdWz,Wz);
        [Rz,pmsgRz,pmsxRz,pdRz]     = adadelta(rho,eps_hp,mf,gRz,pmsgRz,pmsxRz,pdRz,Rz);
        [bz,pmsgbz,pmsxbz,pdbz]     = adadelta(rho,eps_hp,mf,gbz,pmsgbz,pmsxbz,pdbz,bz);
        [Wf,pmsgWf,pmsxWf,pdWf]     = adadelta(rho,eps_hp,mf,gWf,pmsgWf,pmsxWf,pdWf,Wf);
        [Rf,pmsgRf,pmsxRf,pdRf]     = adadelta(rho,eps_hp,mf,gRf,pmsgRf,pmsxRf,pdRf,Rf);
        [bf,pmsgbf,pmsxbf,pdbf]     = adadelta(rho,eps_hp,mf,gbf,pmsgbf,pmsxbf,pdbf,bf);        
        [Wc,pmsgWc,pmsxWc,pdWc]     = adadelta(rho,eps_hp,mf,gWc,pmsgWc,pmsxWc,pdWc,Wc);
        [Rc,pmsgRc,pmsxRc,pdRc]     = adadelta(rho,eps_hp,mf,gRc,pmsgRc,pmsxRc,pdRc,Rc);
        [bc,pmsgbc,pmsxbc,pdbc]     = adadelta(rho,eps_hp,mf,gbc,pmsgbc,pmsxbc,pdbc,bc);        
        [U,pmsgU,pmsxU,pdU]         = adadelta(rho,eps_hp,mf,gU,pmsgU,pmsxU,pdU,U);
        [bu,pmsgbu,pmsxbu,pdbu]     = adadelta(rho,eps_hp,mf,gbu,pmsgbu,pmsxbu,pdbu,bu);
        
    case 'adam'
        
        [Wz,pmWz,pvWz]      = adam(alpha,beta1,beta2,eps_hp,lam,num_up,gWz,pmWz,pvWz,Wz);
        [Rz,pmRz,pvRz]      = adam(alpha,beta1,beta2,eps_hp,lam,num_up,gRz,pmRz,pvRz,Rz);
        [bz,pmbz,pvbz]      = adam(alpha,beta1,beta2,eps_hp,lam,num_up,gbz,pmbz,pvbz,bz);
        [Wf,pmWf,pvWf]      = adam(alpha,beta1,beta2,eps_hp,lam,num_up,gWf,pmWf,pvWf,Wf);
        [Rf,pmRf,pvRf]      = adam(alpha,beta1,beta2,eps_hp,lam,num_up,gRf,pmRf,pvRf,Rf);
        [bf,pmbf,pvbf]      = adam(alpha,beta1,beta2,eps_hp,lam,num_up,gbf,pmbf,pvbf,bf);        
        [Wc,pmWc,pvWc]      = adam(alpha,beta1,beta2,eps_hp,lam,num_up,gWc,pmWc,pvWc,Wc);
        [Rc,pmRc,pvRc]      = adam(alpha,beta1,beta2,eps_hp,lam,num_up,gRc,pmRc,pvRc,Rc);
        [bc,pmbc,pvbc]      = adam(alpha,beta1,beta2,eps_hp,lam,num_up,gbc,pmbc,pvbc,bc);
        [U,pmU,pvU]         = adam(alpha,beta1,beta2,eps_hp,lam,num_up,gU,pmU,pvU,U);
        [bu,pmbu,pvbu]      = adam(alpha,beta1,beta2,eps_hp,lam,num_up,gbu,pmbu,pvbu,bu);
end



