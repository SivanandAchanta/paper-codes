hm_f_1 = fp_cpu_ll(X,p_f_1,f(1));

% 2 - BLSTM Layers
[zfm1,ifm1,ffm1,cfm1,ofm1,hcfm1,hfm1] = fp_lstm(hm_f_1,p_lf_1,nl(3),sl,'frnn');
[zbm1,ibm1,fbm1,cbm1,obm1,hcbm1,hbm1] = fp_lstm(hm_f_1,p_lb_1,nl(3),sl,'brnn');

ie1 = [hfm1 hbm1];
[zfm2,ifm2,ffm2,cfm2,ofm2,hcfm2,hfm2] = fp_lstm(ie1,p_lf_2,nl(4),sl,'frnn');
[zbm2,ibm2,fbm2,cbm2,obm2,hcbm2,hbm2] = fp_lstm(ie1,p_lb_2,nl(4),sl,'brnn');

ie2 = [hfm2 hbm2];
ym = fp_cpu_ll(ie2,p_f_2,f(end));
