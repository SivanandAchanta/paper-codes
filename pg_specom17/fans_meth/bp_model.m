% Error at Output Layer
switch cfn
    case 'ls'
        E   = -(Y - ym)/sl;
    case  'nll'
        E   = -(Y - ym)/sl;
end

% Backprop top layer
switch sid
    case 1
        p_f_2_1.gU = (E'*ie2);
        p_f_2_1.gbu = sum(E,1)';
        Eb = E*p_f_2_1.U;
    case 2
        p_f_2_2.gU = (E'*ie2);
        p_f_2_2.gbu = sum(E,1)';
        Eb = E*p_f_2_2.U;
    case 3
        p_f_2_3.gU = (E'*ie2);
        p_f_2_3.gbu = sum(E,1)';
        Eb = E*p_f_2_3.U;
    case 4
        p_f_2_4.gU = (E'*ie2);
        p_f_2_4.gbu = sum(E,1)';
        Eb = E*p_f_2_4.U;
    case 5
        p_f_2_5.gU = (E'*ie2);
        p_f_2_5.gbu = sum(E,1)';
        Eb = E*p_f_2_5.U;
    case 6
        p_f_2_6.gU = (E'*ie2);
        p_f_2_6.gbu = sum(E,1)';
        Eb = E*p_f_2_6.U;
    case 7
        p_f_2_7.gU = (E'*ie2);
        p_f_2_7.gbu = sum(E,1)';
        Eb = E*p_f_2_7.U;
    case 8
        p_f_2_8.gU = (E'*ie2);
        p_f_2_8.gbu = sum(E,1)';
        Eb = E*p_f_2_8.U;
    case 9
        p_f_2_9.gU = (E'*ie2);
        p_f_2_9.gbu = sum(E,1)';
        Eb = E*p_f_2_9.U;
        
end


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

switch lid
    case 1
        [p_f_1_1.gU,p_f_1_1.gbu,Eb] = bp_cpu_ll(nl(2),f(1),Eb,hm_f_1,X,p_f_1_1.U,sl);
    case 2
        [p_f_1_2.gU,p_f_1_2.gbu,Eb] = bp_cpu_ll(nl(2),f(1),Eb,hm_f_1,X,p_f_1_2.U,sl);
    case 3
        [p_f_1_3.gU,p_f_1_3.gbu,Eb] = bp_cpu_ll(nl(2),f(1),Eb,hm_f_1,X,p_f_1_3.U,sl);
    case 4
        [p_f_1_4.gU,p_f_1_4.gbu,Eb] = bp_cpu_ll(nl(2),f(1),Eb,hm_f_1,X,p_f_1_4.U,sl);
    case 5
        [p_f_1_5.gU,p_f_1_5.gbu,Eb] = bp_cpu_ll(nl(2),f(1),Eb,hm_f_1,X,p_f_1_5.U,sl);
end