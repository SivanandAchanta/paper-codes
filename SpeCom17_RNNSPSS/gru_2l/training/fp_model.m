% Forward Pass
[fm1,zm1,cm1,hm1] = fp_lstm(X,Gpi1,nl(2),sl,f(1));
[fm2,zm2,cm2,hm2] = fp_lstm(hm1,Gpi2,nl(3),sl,f(2));
[ym] = fp_cpu_ll(hm2,Gpo,f(end));
