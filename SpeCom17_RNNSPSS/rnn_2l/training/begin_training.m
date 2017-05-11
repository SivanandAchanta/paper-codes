% weight initialization
p = []; [Gpi1] = wt_init_rl(p,gpu_flag,nl(2),nl(1),si,ri,wtdir,wtinit_meth,sgd_type);
p = []; [Gpi2] = wt_init_rl(p,gpu_flag,nl(3),nl(2),si,ri,wtdir,wtinit_meth,sgd_type);
p = []; [Gpo] = wt_init_ll(p,gpu_flag,nl(end),nl(end-1),so,wtdir,wtinit_meth,sgd_type);

% get full arch_name
get_fullarchname

% train the model
if gpu_flag
    trainrnn_gpu
else
    trainrnn_cpu
end
