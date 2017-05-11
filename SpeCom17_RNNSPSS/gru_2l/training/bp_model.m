
[Gpo.gU,Gpo.gbu,Eb] = bp_cpu_ll(nl(end),f(end),Y,ym,hm2,Gpo.U,sl,cfn);
[dcm,dzm,dfm,Eb] = bp_lstm(Eb',fm2,zm2,cm2,hm2,Gpi2,nl(3),sl);
[Gpi2.gWz,Gpi2.gRz,Gpi2.gbz,Gpi2.gWf,Gpi2.gRf,Gpi2.gbf,Gpi2.gWc,Gpi2.gRc,Gpi2.gbc] = gradients_lstm(hm1,hm2,fm2,dfm,dzm,dcm,nl(3));
[dcm,dzm,dfm,Eb] = bp_lstm(Eb',fm1,zm1,cm1,hm1,Gpi1,nl(2),sl);
[Gpi1.gWz,Gpi1.gRz,Gpi1.gbz,Gpi1.gWf,Gpi1.gRf,Gpi1.gbf,Gpi1.gWc,Gpi1.gRc,Gpi1.gbc] = gradients_lstm(X,hm1,fm1,dfm,dzm,dcm,nl(2));
