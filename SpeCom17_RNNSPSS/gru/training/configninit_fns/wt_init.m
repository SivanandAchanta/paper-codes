switch wtinit_meth
    
    case 'ui'
        
        si = sqrt(1/(nl(2)*nl(1)));
        
        Wz = 2*si*rand(nl(2),nl(1)) - si;
        Wc = 2*si*rand(nl(2),nl(1)) - si;
        Wf = 2*si*rand(nl(2),nl(1)) - si;
        Wo = 2*si*rand(nl(2),nl(1)) - si;
        
        ri = (1/nl(2));
        Rz = 2*ri*rand(nl(2),nl(2)) - ri;
        Rc = 2*ri*rand(nl(2),nl(2)) - ri;
        Rf = 2*ri*rand(nl(2),nl(2)) - ri;
        Ro = 2*ri*rand(nl(2),nl(2)) - ri;
        
        bz = zeros(nl(2),1);
        bc = zeros(nl(2),1);
        bf = zeros(nl(2),1);
        bo = zeros(nl(2),1);
        
        pi = zeros(nl(2),1);
        pf = zeros(nl(2),1);
        po = zeros(nl(2),1);
        
        so = sqrt(1/(nl(3)*nl(2)));
        U  = 2*so*rand(nl(3),nl(2)) - so;
        bu = zeros(nl(3),1);
        
        
    case 'gi'
        
        Wz = si*randn(nl(2),nl(1));
        Wc = si*randn(nl(2),nl(1));
        Wf = si*randn(nl(2),nl(1));
        
        Rz = ri*randn(nl(2),nl(2));
        Rc = ri*randn(nl(2),nl(2));
        Rf = ri*randn(nl(2),nl(2));
        
        bz = zeros(nl(2),1);
        bc = zeros(nl(2),1);
        bf = zeros(nl(2),1);
        
        U  = so*randn(nl(3),nl(2));
        bu = zeros(nl(3),1);
        
end


switch sgd_type
    case 'sgdcm'
        pdWz = zeros(size(Wz));
        pdWc = zeros(size(Wc));
        pdWf = zeros(size(Wf));
        
        pdRz = zeros(size(Rz));
        pdRc = zeros(size(Rc));
        pdRf = zeros(size(Rf));
        
        pdbz = zeros(size(bz));
        pdbc = zeros(size(bc));
        pdbf = zeros(size(bf));
        
        pdU  = zeros(size(U));
        pdbu = zeros(size(bu));
        
        
    case 'adadelta'
        
        pdWz = zeros(size(Wz));
        pdWc = zeros(size(Wc));
        pdWf = zeros(size(Wf));
        
        pdRz = zeros(size(Rz));
        pdRc = zeros(size(Rc));
        pdRf = zeros(size(Rf));
        
        pdbz = zeros(size(bz));
        pdbc = zeros(size(bc));
        pdbf = zeros(size(bf));
        
        pdU  = zeros(size(U));
        pdbu = zeros(size(bu));
        
        
        pmsgWz = zeros(size(Wz));
        pmsgWc = zeros(size(Wc));
        pmsgWf = zeros(size(Wf));
        
        pmsgRz = zeros(size(Rz));
        pmsgRc = zeros(size(Rc));
        pmsgRf = zeros(size(Rf));
        
        pmsgbz = zeros(size(bz));
        pmsgbc = zeros(size(bc));
        pmsgbf = zeros(size(bf));
        
        pmsgU  = zeros(size(U));
        pmsgbu = zeros(size(bu));
        
        pmsxWz = zeros(size(Wz));
        pmsxWc = zeros(size(Wc));
        pmsxWf = zeros(size(Wf));
        
        pmsxRz = zeros(size(Rz));
        pmsxRc = zeros(size(Rc));
        pmsxRf = zeros(size(Rf));
        
        pmsxbz = zeros(size(bz));
        pmsxbc = zeros(size(bc));
        pmsxbf = zeros(size(bf));
        
        pmsxU  = zeros(size(U));
        pmsxbu = zeros(size(bu));
        
    case 'adam'
        
        pmWz = zeros(size(Wz));
        pmWc = zeros(size(Wc));
        pmWf = zeros(size(Wf));
        
        pmRz = zeros(size(Rz));
        pmRc = zeros(size(Rc));
        pmRf = zeros(size(Rf));
        
        pmbz = zeros(size(bz));
        pmbc = zeros(size(bc));
        pmbf = zeros(size(bf));
        
        pmU  = zeros(size(U));
        pmbu = zeros(size(bu));
        
        
        
        pvWz = zeros(size(Wz));
        pvWc = zeros(size(Wc));
        pvWf = zeros(size(Wf));
        
        pvRz = zeros(size(Rz));
        pvRc = zeros(size(Rc));
        pvRf = zeros(size(Rf));
        
        pvbz = zeros(size(bz));
        pvbc = zeros(size(bc));
        pvbf = zeros(size(bf));
        
        pvU  = zeros(size(U));
        pvbu = zeros(size(bu));
        
        
end
