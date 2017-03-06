
switch sgd_type
    
    case 'sgdcm'
        
        [Wzf,pdWzf]     = sgdcm(lr,mf,gWzf,pdWzf,Wzf);
        [Rzf,pdRzf]     = sgdcm(lr,mf,gRzf,pdRzf,Rzf);
        [bzf,pdbzf]     = sgdcm(lr,mf,gbzf,pdbzf,bzf);
        [Wif,pdWif]     = sgdcm(lr,mf,gWif,pdWif,Wif);
        [Rif,pdRif]     = sgdcm(lr,mf,gRif,pdRif,Rif);
        [bif,pdbif]     = sgdcm(lr,mf,gbif,pdbif,bif);
        [pif,pdpif]     = sgdcm(lr,mf,gpif,pdpif,pif);
        [Wff,pdWff]     = sgdcm(lr,mf,gWff,pdWff,Wff);
        [Rff,pdRff]     = sgdcm(lr,mf,gRff,pdRff,Rff);
        [bff,pdbff]     = sgdcm(lr,mf,gbff,pdbff,bff);
        [pff,pdpff]     = sgdcm(lr,mf,gpff,pdpff,pff);
        [Wof,pdWof]     = sgdcm(lr,mf,gWof,pdWof,Wof);
        [Rof,pdRof]     = sgdcm(lr,mf,gRof,pdRof,Rof);
        [bof,pdbof]     = sgdcm(lr,mf,gbof,pdbof,bof);
        [pof,pdpof]     = sgdcm(lr,mf,gpof,pdpof,pof);
        [Uf,pdUf]       = sgdcm(lr,mf,gUf,pdUf,Uf);
        [bu,pdbu]     = sgdcm(lr,mf,gbu,pdbu,bu);
        
        [Wzb,pdWzb]     = sgdcm(lr,mf,gWzb,pdWzb,Wzb);
        [Rzb,pdRzb]     = sgdcm(lr,mf,gRzb,pdRzb,Rzb);
        [bzb,pdbzb]     = sgdcm(lr,mf,gbzb,pdbzb,bzb);
        [Wib,pdWib]     = sgdcm(lr,mf,gWib,pdWib,Wib);
        [Rib,pdRib]     = sgdcm(lr,mf,gRib,pdRib,Rib);
        [bib,pdbib]     = sgdcm(lr,mf,gbib,pdbib,bib);
        [pib,pdpib]     = sgdcm(lr,mf,gpib,pdpib,pib);
        [Wfb,pdWfb]     = sgdcm(lr,mf,gWfb,pdWfb,Wfb);
        [Rfb,pdRfb]     = sgdcm(lr,mf,gRfb,pdRfb,Rfb);
        [bfb,pdbfb]     = sgdcm(lr,mf,gbfb,pdbfb,bfb);
        [pfb,pdpfb]     = sgdcm(lr,mf,gpfb,pdpfb,pfb);
        [Wob,pdWob]     = sgdcm(lr,mf,gWob,pdWob,Wob);
        [Rob,pdRob]     = sgdcm(lr,mf,gRob,pdRob,Rob);
        [bob,pdbob]     = sgdcm(lr,mf,gbob,pdbob,bob);
        [pob,pdpob]     = sgdcm(lr,mf,gpob,pdpob,pob);
        [Ub,pdUb]       = sgdcm(lr,mf,gUb,pdUb,Ub);
        
        
    case 'adadelta'
        
        [Wzf,pmsgWzf,pmsxWzf,pdWzf]     = adadelta(rho,eps_hp,mf,gWzf,pmsgWzf,pmsxWzf,pdWzf,Wzf);
        [Rzf,pmsgRzf,pmsxRzf,pdRzf]     = adadelta(rho,eps_hp,mf,gRzf,pmsgRzf,pmsxRzf,pdRzf,Rzf);
        [bzf,pmsgbzf,pmsxbzf,pdbzf]     = adadelta(rho,eps_hp,mf,gbzf,pmsgbzf,pmsxbzf,pdbzf,bzf);
        [Wif,pmsgWif,pmsxWif,pdWif]     = adadelta(rho,eps_hp,mf,gWif,pmsgWif,pmsxWif,pdWif,Wif);
        [Rif,pmsgRif,pmsxRif,pdRif]     = adadelta(rho,eps_hp,mf,gRif,pmsgRif,pmsxRif,pdRif,Rif);
        [bif,pmsgbif,pmsxbif,pdbif]     = adadelta(rho,eps_hp,mf,gbif,pmsgbif,pmsxbif,pdbif,bif);
        [pif,pmsgpif,pmsxpif,pdpif]     = adadelta(rho,eps_hp,mf,gpif,pmsgpif,pmsxpif,pdpif,pif);
        [Wff,pmsgWff,pmsxWff,pdWff]     = adadelta(rho,eps_hp,mf,gWff,pmsgWff,pmsxWff,pdWff,Wff);
        [Rff,pmsgRff,pmsxRff,pdRff]     = adadelta(rho,eps_hp,mf,gRff,pmsgRff,pmsxRff,pdRff,Rff);
        [bff,pmsgbff,pmsxbff,pdbff]     = adadelta(rho,eps_hp,mf,gbff,pmsgbff,pmsxbff,pdbff,bff);
        [pff,pmsgpff,pmsxpff,pdpff]     = adadelta(rho,eps_hp,mf,gpff,pmsgpff,pmsxpff,pdpff,pff);
        [Wof,pmsgWof,pmsxWof,pdWof]     = adadelta(rho,eps_hp,mf,gWof,pmsgWof,pmsxWof,pdWof,Wof);
        [Rof,pmsgRof,pmsxRof,pdRof]     = adadelta(rho,eps_hp,mf,gRof,pmsgRof,pmsxRof,pdRof,Rof);
        [bof,pmsgbof,pmsxbof,pdbof]     = adadelta(rho,eps_hp,mf,gbof,pmsgbof,pmsxbof,pdbof,bof);
        [pof,pmsgpof,pmsxpof,pdpof]     = adadelta(rho,eps_hp,mf,gpof,pmsgpof,pmsxpof,pdpof,pof);
        [Uf,pmsgUf,pmsxUf,pdUf]         = adadelta(rho,eps_hp,mf,gUf,pmsgUf,pmsxUf,pdUf,Uf);
        [bu,pmsgbu,pmsxbu,pdbu]     = adadelta(rho,eps_hp,mf,gbu,pmsgbu,pmsxbu,pdbu,bu);
        
        [Wzb,pmsgWzb,pmsxWzb,pdWzb]     = adadelta(rho,eps_hp,mf,gWzb,pmsgWzb,pmsxWzb,pdWzb,Wzb);
        [Rzb,pmsgRzb,pmsxRzb,pdRzb]     = adadelta(rho,eps_hp,mf,gRzb,pmsgRzb,pmsxRzb,pdRzb,Rzb);
        [bzb,pmsgbzb,pmsxbzb,pdbzb]     = adadelta(rho,eps_hp,mf,gbzb,pmsgbzb,pmsxbzb,pdbzb,bzb);
        [Wib,pmsgWib,pmsxWib,pdWib]     = adadelta(rho,eps_hp,mf,gWib,pmsgWib,pmsxWib,pdWib,Wib);
        [Rib,pmsgRib,pmsxRib,pdRib]     = adadelta(rho,eps_hp,mf,gRib,pmsgRib,pmsxRib,pdRib,Rib);
        [bib,pmsgbib,pmsxbib,pdbib]     = adadelta(rho,eps_hp,mf,gbib,pmsgbib,pmsxbib,pdbib,bib);
        [pib,pmsgpib,pmsxpib,pdpib]     = adadelta(rho,eps_hp,mf,gpib,pmsgpib,pmsxpib,pdpib,pib);
        [Wfb,pmsgWfb,pmsxWfb,pdWfb]     = adadelta(rho,eps_hp,mf,gWfb,pmsgWfb,pmsxWfb,pdWfb,Wfb);
        [Rfb,pmsgRfb,pmsxRfb,pdRfb]     = adadelta(rho,eps_hp,mf,gRfb,pmsgRfb,pmsxRfb,pdRfb,Rfb);
        [bfb,pmsgbfb,pmsxbfb,pdbfb]     = adadelta(rho,eps_hp,mf,gbfb,pmsgbfb,pmsxbfb,pdbfb,bfb);
        [pfb,pmsgpfb,pmsxpfb,pdpfb]     = adadelta(rho,eps_hp,mf,gpfb,pmsgpfb,pmsxpfb,pdpfb,pfb);
        [Wob,pmsgWob,pmsxWob,pdWob]     = adadelta(rho,eps_hp,mf,gWob,pmsgWob,pmsxWob,pdWob,Wob);
        [Rob,pmsgRob,pmsxRob,pdRob]     = adadelta(rho,eps_hp,mf,gRob,pmsgRob,pmsxRob,pdRob,Rob);
        [bob,pmsgbob,pmsxbob,pdbob]     = adadelta(rho,eps_hp,mf,gbob,pmsgbob,pmsxbob,pdbob,bob);
        [pob,pmsgpob,pmsxpob,pdpob]     = adadelta(rho,eps_hp,mf,gpob,pmsgpob,pmsxpob,pdpob,pob);
        [Ub,pmsgUb,pmsxUb,pdUb]         = adadelta(rho,eps_hp,mf,gUb,pmsgUb,pmsxUb,pdUb,Ub);
        
        
    case 'adam'
        
        [Wzf,pmWzf,pvWzf]      = adam(alpha,beta1,beta2,eps_hp,lam,num_up,gWzf,pmWzf,pvWzf,Wzf);
        [Rzf,pmRzf,pvRzf]      = adam(alpha,beta1,beta2,eps_hp,lam,num_up,gRzf,pmRzf,pvRzf,Rzf);
        [bzf,pmbzf,pvbzf]      = adam(alpha,beta1,beta2,eps_hp,lam,num_up,gbzf,pmbzf,pvbzf,bzf);
        [Wif,pmWif,pvWif]      = adam(alpha,beta1,beta2,eps_hp,lam,num_up,gWif,pmWif,pvWif,Wif);
        [Rif,pmRif,pvRif]      = adam(alpha,beta1,beta2,eps_hp,lam,num_up,gRif,pmRif,pvRif,Rif);
        [bif,pmbif,pvbif]      = adam(alpha,beta1,beta2,eps_hp,lam,num_up,gbif,pmbif,pvbif,bif);
        [pif,pmpif,pvpif]      = adam(alpha,beta1,beta2,eps_hp,lam,num_up,gpif,pmpif,pvpif,pif);
        [Wff,pmWff,pvWff]      = adam(alpha,beta1,beta2,eps_hp,lam,num_up,gWff,pmWff,pvWff,Wff);
        [Rff,pmRff,pvRff]      = adam(alpha,beta1,beta2,eps_hp,lam,num_up,gRff,pmRff,pvRff,Rff);
        [bff,pmbff,pvbff]      = adam(alpha,beta1,beta2,eps_hp,lam,num_up,gbff,pmbff,pvbff,bff);
        [pff,pmpff,pvpff]      = adam(alpha,beta1,beta2,eps_hp,lam,num_up,gpff,pmpff,pvpff,pff);
        [Wof,pmWof,pvWof]      = adam(alpha,beta1,beta2,eps_hp,lam,num_up,gWof,pmWof,pvWof,Wof);
        [Rof,pmRof,pvRof]      = adam(alpha,beta1,beta2,eps_hp,lam,num_up,gRof,pmRof,pvRof,Rof);
        [bof,pmbof,pvbof]      = adam(alpha,beta1,beta2,eps_hp,lam,num_up,gbof,pmbof,pvbof,bof);
        [pof,pmpof,pvpof]      = adam(alpha,beta1,beta2,eps_hp,lam,num_up,gpof,pmpof,pvpof,pof);
        [Uf,pmUf,pvUf]         = adam(alpha,beta1,beta2,eps_hp,lam,num_up,gUf,pmUf,pvUf,Uf);
        [bu,pmbu,pvbu]      = adam(alpha,beta1,beta2,eps_hp,lam,num_up,gbu,pmbu,pvbu,bu);
        
        
        [Wzb,pmWzb,pvWzb]      = adam(alpha,beta1,beta2,eps_hp,lam,num_up,gWzb,pmWzb,pvWzb,Wzb);
        [Rzb,pmRzb,pvRzb]      = adam(alpha,beta1,beta2,eps_hp,lam,num_up,gRzb,pmRzb,pvRzb,Rzb);
        [bzb,pmbzb,pvbzb]      = adam(alpha,beta1,beta2,eps_hp,lam,num_up,gbzb,pmbzb,pvbzb,bzb);
        [Wib,pmWib,pvWib]      = adam(alpha,beta1,beta2,eps_hp,lam,num_up,gWib,pmWib,pvWib,Wib);
        [Rib,pmRib,pvRib]      = adam(alpha,beta1,beta2,eps_hp,lam,num_up,gRib,pmRib,pvRib,Rib);
        [bib,pmbib,pvbib]      = adam(alpha,beta1,beta2,eps_hp,lam,num_up,gbib,pmbib,pvbib,bib);
        [pib,pmpib,pvpib]      = adam(alpha,beta1,beta2,eps_hp,lam,num_up,gpib,pmpib,pvpib,pib);
        [Wfb,pmWfb,pvWfb]      = adam(alpha,beta1,beta2,eps_hp,lam,num_up,gWfb,pmWfb,pvWfb,Wfb);
        [Rfb,pmRfb,pvRfb]      = adam(alpha,beta1,beta2,eps_hp,lam,num_up,gRfb,pmRfb,pvRfb,Rfb);
        [bfb,pmbfb,pvbfb]      = adam(alpha,beta1,beta2,eps_hp,lam,num_up,gbfb,pmbfb,pvbfb,bfb);
        [pfb,pmpfb,pvpfb]      = adam(alpha,beta1,beta2,eps_hp,lam,num_up,gpfb,pmpfb,pvpfb,pfb);
        [Wob,pmWob,pvWob]      = adam(alpha,beta1,beta2,eps_hp,lam,num_up,gWob,pmWob,pvWob,Wob);
        [Rob,pmRob,pvRob]      = adam(alpha,beta1,beta2,eps_hp,lam,num_up,gRob,pmRob,pvRob,Rob);
        [bob,pmbob,pvbob]      = adam(alpha,beta1,beta2,eps_hp,lam,num_up,gbob,pmbob,pvbob,bob);
        [pob,pmpob,pvpob]      = adam(alpha,beta1,beta2,eps_hp,lam,num_up,gpob,pmpob,pvpob,pob);
        [Ub,pmUb,pvUb]         = adam(alpha,beta1,beta2,eps_hp,lam,num_up,gUb,pmUb,pvUb,Ub);
end



