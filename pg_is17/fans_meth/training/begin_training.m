% weight initialization
p = []; [p_f_1_1] = wt_init_ll(p,gpu_flag,nl(2),nl(1),si,wtdir,wtinit_meth,sgd_type);
p = []; [p_f_1_2] = wt_init_ll(p,gpu_flag,nl(2),nl(1),si,wtdir,wtinit_meth,sgd_type);
p = []; [p_f_1_3] = wt_init_ll(p,gpu_flag,nl(2),nl(1),si,wtdir,wtinit_meth,sgd_type);
p = []; [p_f_1_4] = wt_init_ll(p,gpu_flag,nl(2),nl(1),si,wtdir,wtinit_meth,sgd_type);
p = []; [p_f_1_5] = wt_init_ll(p,gpu_flag,nl(2),nl(1),si,wtdir,wtinit_meth,sgd_type);
p = []; [p_lf_1] = wt_init_lstm(p,nl(3),nl(2),si,fb_init,wtdir,wtinit_meth,sgd_type);
p = []; [p_lb_1] = wt_init_lstm(p,nl(3),nl(2),si,fb_init,wtdir,wtinit_meth,sgd_type);
p = []; [p_lf_2] = wt_init_lstm(p,nl(4),2*nl(3),si,fb_init,wtdir,wtinit_meth,sgd_type);
p = []; [p_lb_2] = wt_init_lstm(p,nl(4),2*nl(3),si,fb_init,wtdir,wtinit_meth,sgd_type);
p = []; [p_f_2_1] = wt_init_ll(p,gpu_flag,nl(end),2*nl(end-1),si,wtdir,wtinit_meth,sgd_type);
p = []; [p_f_2_2] = wt_init_ll(p,gpu_flag,nl(end),2*nl(end-1),si,wtdir,wtinit_meth,sgd_type);
p = []; [p_f_2_3] = wt_init_ll(p,gpu_flag,nl(end),2*nl(end-1),si,wtdir,wtinit_meth,sgd_type);
p = []; [p_f_2_4] = wt_init_ll(p,gpu_flag,nl(end),2*nl(end-1),si,wtdir,wtinit_meth,sgd_type);
p = []; [p_f_2_5] = wt_init_ll(p,gpu_flag,nl(end),2*nl(end-1),si,wtdir,wtinit_meth,sgd_type);
p = []; [p_f_2_6] = wt_init_ll(p,gpu_flag,nl(end),2*nl(end-1),si,wtdir,wtinit_meth,sgd_type);
p = []; [p_f_2_7] = wt_init_ll(p,gpu_flag,nl(end),2*nl(end-1),si,wtdir,wtinit_meth,sgd_type);
p = []; [p_f_2_8] = wt_init_ll(p,gpu_flag,nl(end),2*nl(end-1),si,wtdir,wtinit_meth,sgd_type);
p = []; [p_f_2_9] = wt_init_ll(p,gpu_flag,nl(end),2*nl(end-1),si,wtdir,wtinit_meth,sgd_type);

% get full arch_name
get_fullarchname

% train the model
train_lstm