function [tot_err] = compute_error(data,targets,clv,numbats,Wzf,Rzf,bzf,Wif,Rif,pif,bif,Wff,Rff,pff,bff,Wof,Rof,pof,bof,Uf,bu, ...
    Wzb,Rzb,bzb,Wib,Rib,pib,bib,Wfb,Rfb,pfb,bfb,Wob,Rob,pob,bob,Ub,f,nl,cfn)

tot_err = 0;
gpu_flag = 0;

for li  = 1:numbats
    
    [X,Y,sl] = get_XY_seqver(data, targets, clv, (1:numbats), li, gpu_flag);
    
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
        case 'nll'
            me = compute_zerooneloss(ym,Y);
        case 'ls'
            me = compute_nmlMSE(ym,Y);
    end
    
    tot_err     = tot_err + me/numbats;
    
end
