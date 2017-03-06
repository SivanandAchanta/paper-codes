% Forward Pass
[zfm,ifm,ffm,cfm,ofm,hcfm,hfm] = fp_lstm(X,Wzf,Rzf,bzf,Wif,Rif,pif,bif,Wff,Rff,pff,bff,Wof,Rof,pof,bof,nl,sl,'frnn');
[zbm,ibm,fbm,cbm,obm,hcbm,hbm] = fp_lstm(X,Wzb,Rzb,bzb,Wib,Rib,pib,bib,Wfb,Rfb,pfb,bfb,Wob,Rob,pob,bob,nl,sl,'brnn');

switch f(2)
    case 'L'
        ac = Uf*hfm' + Ub*hbm';
        ac = bsxfun(@plus,ac,bu)';
        ol_mat = ac;
    case 'M'
        ac = Uf*hfm' + Ub*hbm';
        ac = bsxfun(@plus,ac,bu)';
        ol_mat = get_actf('M',ac);
end

