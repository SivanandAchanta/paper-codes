% Error at Output Layer
switch cfn
    case 'ls'
        E   = -(Y - ym)/sl;
    case  'nll'
        E   = -(Y - ym)/sl;
end

% Backprop top layer
p_f_2.gU = (E'*ie2);
p_f_2.gbu = sum(E,1)';
Eb = E*p_f_2.U;

Ebf = Eb(:,1:nl(4));
[dhm,dom,dcm,dfm,dim,dzm,Ebf] = bp_lstm(Ebf',p_lf_2,zfm2,ifm2,ffm2,cfm2,ofm2,hcfm2,nl(4),sl,'frnn');
[p_lf_2] = gradients_lstm(ie1,p_lf_2,hfm2,cfm2,dom,dfm,dim,dzm,nl(4),'frnn');

Ebb = Eb(:,nl(4)+1:2*nl(4));
[dhm,dom,dcm,dfm,dim,dzm,Ebb] = bp_lstm(Ebb',p_lb_2,zbm2,ibm2,fbm2,cbm2,obm2,hcbm2,nl(4),sl,'brnn');
[p_lb_2] = gradients_lstm(ie1,p_lb_2,hbm2,cbm2,dom,dfm,dim,dzm,nl(4),'brnn');

Eb = Ebb + Ebf;

Ebf = Eb(:,1:nl(3));
[dhm,dom,dcm,dfm,dim,dzm,Ebf] = bp_lstm(Ebf',p_lf_1,zfm1,ifm1,ffm1,cfm1,ofm1,hcfm1,nl(3),sl,'frnn');
[p_lf_1] = gradients_lstm(hm_f_1,p_lf_1,hfm1,cfm1,dom,dfm,dim,dzm,nl(3),'frnn');

Ebb = Eb(:,nl(3)+1:2*nl(3));
[dhm,dom,dcm,dfm,dim,dzm,Ebb] = bp_lstm(Ebb',p_lb_1,zbm1,ibm1,fbm1,cbm1,obm1,hcbm1,nl(3),sl,'brnn');
[p_lb_1] = gradients_lstm(hm_f_1,p_lb_1,hbm1,cbm1,dom,dfm,dim,dzm,nl(3),'brnn');

Eb = Ebf + Ebb;
[p_f_1.gU,p_f_1.gbu,Eb] = bp_cpu_ll(nl(2),f(1),Eb,hm_f_1,X,p_f_1.U,sl);
