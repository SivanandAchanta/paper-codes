switch wtinit_meth
    
    case 'ui'
        
        si = sqrt(1/(nl(2)*nl(1)));        
        Wf = 2*si*rand(nl(2),nl(1)) - si;        
        ri = (1/nl(2));
        Rf = 2*ri*rand(nl(2),nl(2)) - ri;        
        bf = fb_init*ones(nl(2),1);        
        so = sqrt(1/(nl(3)*nl(2)));
        U  = 2*so*rand(nl(3),nl(2)) - so;
        bu = zeros(nl(3),1);
        
        
    case 'gi'
        Wz = si*randn(nl(2),nl(1));        
        Rz = ri*randn(nl(2),nl(2));        
        bz = zeros(nl(2),1);        
        
        Wf = si*randn(nl(2),nl(1));        
        Rf = ri*randn(nl(2),nl(2));        
        bf = fb_init*ones(nl(2),1);        
        U  = so*randn(nl(3),nl(2));
        bu = zeros(nl(3),1);
        
end


switch sgd_type
    case 'sgdcm'
        pdWz = zeros(size(Wz));        
        pdRz = zeros(size(Rz));        
        pdbz = zeros(size(bz));        
        pdWf = zeros(size(Wf));        
        pdRf = zeros(size(Rf));        
        pdbf = zeros(size(bf));        
        pdU  = zeros(size(U));
        pdbu = zeros(size(bu));
        
        
    case 'adadelta'
        
        pdWz = zeros(size(Wz));        
        pdRz = zeros(size(Rz));        
        pdbz = zeros(size(bz));        
        pdWf = zeros(size(Wf));        
        pdRf = zeros(size(Rf));        
        pdbf = zeros(size(bf));        
        pdU  = zeros(size(U));
        pdbu = zeros(size(bu));
        
        
        pmsgWz = zeros(size(Wz));        
        pmsgRz = zeros(size(Rz));        
        pmsgbz = zeros(size(bz));        
        pmsgWf = zeros(size(Wf));        
        pmsgRf = zeros(size(Rf));        
        pmsgbf = zeros(size(bf));        
        pmsgU  = zeros(size(U));
        pmsgbu = zeros(size(bu));
        
        pmsxWz = zeros(size(Wz));        
        pmsxRz = zeros(size(Rz));        
        pmsxbz = zeros(size(bz));        
        pmsxWf = zeros(size(Wf));        
        pmsxRf = zeros(size(Rf));        
        pmsxbf = zeros(size(bf));        
        pmsxU  = zeros(size(U));
        pmsxbu = zeros(size(bu));
        
    case 'adam'
        
        pmWz = zeros(size(Wz));        
        pmRz = zeros(size(Rz));        
        pmbz = zeros(size(bz));                
        pmWf = zeros(size(Wf));        
        pmRf = zeros(size(Rf));        
        pmbf = zeros(size(bf));                
        pmU  = zeros(size(U));
        pmbu = zeros(size(bu));
                        
        pvWz = zeros(size(Wz));        
        pvRz = zeros(size(Rz));        
        pvbz = zeros(size(bz));                
        pvWf = zeros(size(Wf));        
        pvRf = zeros(size(Rf));        
        pvbf = zeros(size(bf));                
        pvU  = zeros(size(U));
        pvbu = zeros(size(bu));
        
        
end
