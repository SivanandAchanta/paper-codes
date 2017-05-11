% Error at Output Layer
[Gpo.gU,Gpo.gbu,Eb] = bp_cpu_ll(nl(end),f(end),Y,ym,hm2,Gpo.U,sl,cfn);
[dhm,dcm,dfm,dzm,Eb] = bp_lstm(Eb',zm2,fm2,cm2,hm2,Gpi2,nl(3),sl);
[Gpi2] = gradients_lstm(Gpi2,hm1,hm2,dfm,dzm,nl(3));
[dhm,dcm,dfm,dzm,Eb] = bp_lstm(Eb',zm1,fm1,cm1,hm1,Gpi1,nl(2),sl);
[Gpi1] = gradients_lstm(Gpi1,X,hm1,dfm,dzm,nl(2));
