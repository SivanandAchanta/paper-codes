function [me,ol_mat,Y] = compute_error_singlefile(data,targets,clv,numbats,li,Wzf,Rzf,bzf,Wif,Rif,pif,bif,Wff,Rff,pff,bff,Wof,Rof,pof,bof,Uf,bu, ...
    Wzb,Rzb,bzb,Wib,Rib,pib,bib,Wfb,Rfb,pfb,bfb,Wob,Rob,pob,bob,Ub,f,nl,cfn,switch_spk_flag,spix)

gpu_flag = 0;

[X,Y,sl] = get_XY_seqver(data, targets, clv, (1:numbats), li, gpu_flag);


if switch_spk_flag
    % interchange last two columns
    s1 = X(:,end-4);
    s2 = X(:,end-3);
    s3 = X(:,end-2);
    s4 = X(:,end-1);
    s5 = X(:,end);
    
    spk_ix = zeros(size(X,1),5);
    spk_ix(:,spix) = 1;
    
    X = [X(:,1:end-5) spk_ix];
end

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

% Cost Funtion
switch cfn
    case 'nll'
        me = compute_zerooneloss(ol_mat,Y);
    case 'ls'
        me = compute_nmlMSE(ol_mat,Y);
end

