switch lid
    case 1
        hm_f_1 = fp_cpu_ll(X,p_f_1_1,f(1));
    case 2
        hm_f_2 = fp_cpu_ll(X,p_f_1_2,f(1));
    case 3
        hm_f_3 = fp_cpu_ll(X,p_f_1_3,f(1));
    case 4
        hm_f_4 = fp_cpu_ll(X,p_f_1_4,f(1));
    case 5
        hm_f_5 = fp_cpu_ll(X,p_f_1_5,f(1));
end

% 2 - BLSTM Layers
[zfm1,ifm1,ffm1,cfm1,ofm1,hcfm1,hfm1] = fp_lstm(hm_f_1,p_lf_1,nl(3),sl,'frnn');
[zbm1,ibm1,fbm1,cbm1,obm1,hcbm1,hbm1] = fp_lstm(hm_f_1,p_lb_1,nl(3),sl,'brnn');

ie1 = [hfm1 hbm1];
[zfm2,ifm2,ffm2,cfm2,ofm2,hcfm2,hfm2] = fp_lstm(ie1,p_lf_2,nl(4),sl,'frnn');
[zbm2,ibm2,fbm2,cbm2,obm2,hcbm2,hbm2] = fp_lstm(ie1,p_lb_2,nl(4),sl,'brnn');

ie2 = [hfm2 hbm2];

switch sid
    case 1
        ym = fp_cpu_ll(ie2,p_f_2_1,f(end));
    case 2
        ym = fp_cpu_ll(ie2,p_f_2_2,f(end));
    case 3
        ym = fp_cpu_ll(ie2,p_f_2_3,f(end));
    case 4
        ym = fp_cpu_ll(ie2,p_f_2_4,f(end));
    case 5
        ym = fp_cpu_ll(ie2,p_f_2_5,f(end));
    case 6
        ym = fp_cpu_ll(ie2,p_f_2_6,f(end));
    case 7
        ym = fp_cpu_ll(ie2,p_f_2_7,f(end));
    case 8
        ym = fp_cpu_ll(ie2,p_f_2_8,f(end));
    case 9
        ym = fp_cpu_ll(ie2,p_f_2_9,f(end));
end


