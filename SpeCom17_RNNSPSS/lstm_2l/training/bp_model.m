[Gpo.gU,Gpo.gbu,Eb] = bp_cpu_ll(nl(end),f(end),Y,ym,hm2,Gpo.U,sl,cfn);
[dhm,dom,dcm,dfm,dim,dzm,Eb] = bp_lstm(Eb',zm2,im2,fm2,cm2,om2,hcm2,Gpi2,nl(3),sl);
[Gpi2] = gradients_lstm(Gpi2,hm1,hm2,cm2,dom,dfm,dim,dzm,nl(3));
[dhm,dom,dcm,dfm,dim,dzm,Eb] = bp_lstm(Eb',zm1,im1,fm1,cm1,om1,hcm1,Gpi1,nl(2),sl);
[Gpi1] = gradients_lstm(Gpi1,X,hm1,cm1,dom,dfm,dim,dzm,nl(2));
