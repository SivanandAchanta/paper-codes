% Forward Pass
[zfm,ifm,ffm,cfm,ofm,hcfm,hfm] = fp_lstm(X,Wzf,Rzf,bzf,Wif,Rif,pif,bif,Wff,Rff,pff,bff,Wof,Rof,pof,bof,nl,sl,'frnn');
[zbm,ibm,fbm,cbm,obm,hcbm,hbm] = fp_lstm(X,Wzb,Rzb,bzb,Wib,Rib,pib,bib,Wfb,Rfb,pfb,bfb,Wob,Rob,pob,bob,nl,sl,'brnn');

switch f(2)
    case 'L'
        ac = Uf*hfm' + Ub*hbm';
        ac = bsxfun(@plus,ac,bu)';
        ym = ac;
    case 'M'
        ac = Uf*hfm' + Ub*hbm';
        ac = bsxfun(@plus,ac,bu)';
        ym = get_actf('M',ac);
end

% Error at Output Layer
switch cfn
    case 'ls'
        E   = -(Y - ym)/sl;
    case  'nll'
        E   = -(Y - ym)/sl;
end

% Backprop
gUf = (E'*hfm);
gUb = (E'*hbm);
gbu = sum(E,1)';

Ebf = Uf'*E';
[dhm,dom,dcm,dfm,dim,dzm] = bp_lstm(Ebf,Rzf,Rif,pif,Rff,pff,Rof,pof,zfm,ifm,ffm,cfm,ofm,hcfm,nl,sl,'frnn');
[gWzf,gRzf,gbzf,gWif,gRif,gpif,gbif,gWff,gRff,gpff,gbff,gWof,gRof,gpof,gbof] = gradients_lstm(X,hfm,cfm,dom,dfm,dim,dzm,nl,'frnn');

Ebb = Ub'*E';
[dhm,dom,dcm,dfm,dim,dzm] = bp_lstm(Ebb,Rzb,Rib,pib,Rfb,pfb,Rob,pob,zbm,ibm,fbm,cbm,obm,hcbm,nl,sl,'brnn');
[gWzb,gRzb,gbzb,gWib,gRib,gpib,gbib,gWfb,gRfb,gpfb,gbfb,gWob,gRob,gpob,gbob] = gradients_lstm(X,hbm,cbm,dom,dfm,dim,dzm,nl,'brnn');