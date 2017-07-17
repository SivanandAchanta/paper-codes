function [J] = compute_Fofx(X,Y,Wzf,Rzf,bzf,Wif,Rif,pif,bif,Wff,Rff,pff,bff,Wof,Rof,pof,bof,Uf, ...
    Wzb,Rzb,bzb,Wib,Rib,pib,bib,Wfb,Rfb,pfb,bfb,Wob,Rob,pob,bob,Ub,bu,nl,sl,f,cfn)


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

% Cost Funtion
switch cfn
    case 'ls'
        J   = 0.5*mean(sum(power((Y - ym),2),2));
    case  'nll'
        J   = mean(sum((-Y.*log(ym)),2));
        
end


end
