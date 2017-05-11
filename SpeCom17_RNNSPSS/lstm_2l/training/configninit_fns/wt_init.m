switch wtinit_meth
    
    case 'ui'
        
        si = sqrt(1/(nl(2)*nl(1)));
        
        Wz = 2*si*rand(nl(2),nl(1)) - si;
        Wi = 2*si*rand(nl(2),nl(1)) - si;
        Wf = 2*si*rand(nl(2),nl(1)) - si;
        Wo = 2*si*rand(nl(2),nl(1)) - si;
        
        ri = (1/nl(2));
        Rz = 2*ri*rand(nl(2),nl(2)) - ri;
        Ri = 2*ri*rand(nl(2),nl(2)) - ri;
        Rf = 2*ri*rand(nl(2),nl(2)) - ri;
        Ro = 2*ri*rand(nl(2),nl(2)) - ri;
        
        bz = zeros(nl(2),1);
        bi = zeros(nl(2),1);
        bf = fb_init*ones(nl(2),1);
        bo = zeros(nl(2),1);
        
        pi = zeros(nl(2),1);
        pf = zeros(nl(2),1);
        po = zeros(nl(2),1);
        
        so = sqrt(1/(nl(3)*nl(2)));
        U  = 2*so*rand(nl(3),nl(2)) - so;
        bu = zeros(nl(3),1);
        
        
    case 'gi'
        
        Wz = si*randn(nl(2),nl(1));
        Wi = si*randn(nl(2),nl(1));
        Wf = si*randn(nl(2),nl(1));
        Wo = si*randn(nl(2),nl(1));
        
        Rz = ri*randn(nl(2),nl(2));
        Ri = ri*randn(nl(2),nl(2));
        Rf = ri*randn(nl(2),nl(2));
        Ro = ri*randn(nl(2),nl(2));
        
        bz = zeros(nl(2),1);
        bi = zeros(nl(2),1);
        bf = fb_init*ones(nl(2),1);
        bo = zeros(nl(2),1);
        
        pi = zeros(nl(2),1);
        pf = zeros(nl(2),1);
        po = zeros(nl(2),1);
        
        U  = so*randn(nl(3),nl(2));
        bu = zeros(nl(3),1);
        
end


switch sgd_type
    case 'sgdcm'
        pdWz = zeros(size(Wz));
        pdWi = zeros(size(Wi));
        pdWf = zeros(size(Wf));
        pdWo = zeros(size(Wo));
        
        pdRz = zeros(size(Rz));
        pdRi = zeros(size(Ri));
        pdRf = zeros(size(Rf));
        pdRo = zeros(size(Ro));
        
        pdbz = zeros(size(bz));
        pdbi = zeros(size(bi));
        pdbf = zeros(size(bf));
        pdbo = zeros(size(bo));
        
        pdpi = zeros(size(pi));
        pdpf = zeros(size(pf));
        pdpo = zeros(size(po));
        
        pdU  = zeros(size(U));
        pdbu = zeros(size(bu));
        
        
    case 'adadelta'
        
        pdWz = zeros(size(Wz));
        pdWi = zeros(size(Wi));
        pdWf = zeros(size(Wf));
        pdWo = zeros(size(Wo));
        
        pdRz = zeros(size(Rz));
        pdRi = zeros(size(Ri));
        pdRf = zeros(size(Rf));
        pdRo = zeros(size(Ro));
        
        pdbz = zeros(size(bz));
        pdbi = zeros(size(bi));
        pdbf = zeros(size(bf));
        pdbo = zeros(size(bo));
        
        pdpi = zeros(size(pi));
        pdpf = zeros(size(pf));
        pdpo = zeros(size(po));
        
        pdU  = zeros(size(U));
        pdbu = zeros(size(bu));
        
        
        pmsgWz = zeros(size(Wz));
        pmsgWi = zeros(size(Wi));
        pmsgWf = zeros(size(Wf));
        pmsgWo = zeros(size(Wo));
        
        pmsgRz = zeros(size(Rz));
        pmsgRi = zeros(size(Ri));
        pmsgRf = zeros(size(Rf));
        pmsgRo = zeros(size(Ro));
        
        pmsgbz = zeros(size(bz));
        pmsgbi = zeros(size(bi));
        pmsgbf = zeros(size(bf));
        pmsgbo = zeros(size(bo));
        
        pmsgpi = zeros(size(pi));
        pmsgpf = zeros(size(pf));
        pmsgpo = zeros(size(po));
        
        pmsgU  = zeros(size(U));
        pmsgbu = zeros(size(bu));
        
        pmsxWz = zeros(size(Wz));
        pmsxWi = zeros(size(Wi));
        pmsxWf = zeros(size(Wf));
        pmsxWo = zeros(size(Wo));
        
        pmsxRz = zeros(size(Rz));
        pmsxRi = zeros(size(Ri));
        pmsxRf = zeros(size(Rf));
        pmsxRo = zeros(size(Ro));
        
        pmsxbz = zeros(size(bz));
        pmsxbi = zeros(size(bi));
        pmsxbf = zeros(size(bf));
        pmsxbo = zeros(size(bo));
        
        pmsxpi = zeros(size(pi));
        pmsxpf = zeros(size(pf));
        pmsxpo = zeros(size(po));
        
        pmsxU  = zeros(size(U));
        pmsxbu = zeros(size(bu));
        
    case 'adam'
        
        pmWz = zeros(size(Wz));
        pmWi = zeros(size(Wi));
        pmWf = zeros(size(Wf));
        pmWo = zeros(size(Wo));
        
        pmRz = zeros(size(Rz));
        pmRi = zeros(size(Ri));
        pmRf = zeros(size(Rf));
        pmRo = zeros(size(Ro));
        
        pmbz = zeros(size(bz));
        pmbi = zeros(size(bi));
        pmbf = zeros(size(bf));
        pmbo = zeros(size(bo));
        
        pmpi = zeros(size(pi));
        pmpf = zeros(size(pf));
        pmpo = zeros(size(po));
        
        pmU  = zeros(size(U));
        pmbu = zeros(size(bu));
        
        
        
        pvWz = zeros(size(Wz));
        pvWi = zeros(size(Wi));
        pvWf = zeros(size(Wf));
        pvWo = zeros(size(Wo));
        
        pvRz = zeros(size(Rz));
        pvRi = zeros(size(Ri));
        pvRf = zeros(size(Rf));
        pvRo = zeros(size(Ro));
        
        pvbz = zeros(size(bz));
        pvbi = zeros(size(bi));
        pvbf = zeros(size(bf));
        pvbo = zeros(size(bo));
        
        pvpi = zeros(size(pi));
        pvpf = zeros(size(pf));
        pvpo = zeros(size(po));
        
        pvU  = zeros(size(U));
        pvbu = zeros(size(bu));
        
        
end
