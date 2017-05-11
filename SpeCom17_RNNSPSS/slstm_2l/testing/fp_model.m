% Forward Pass
[zm1,fm1,cm1,hm1] = fp_lstm(X,Gpi1,nl(2),sl,f(1));
[zm2,fm2,cm2,hm2] = fp_lstm(hm1,Gpi2,nl(3),sl,f(2));
[ol_mat] = fp_cpu_ll(hm2,Gpo,f(end));
