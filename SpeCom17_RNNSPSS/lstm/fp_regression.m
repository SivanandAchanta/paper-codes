
[zm,im,fm,cm,om,hcm,hm] = fp_lstm(X,GWz,GRz,Gbz,GWi,GRi,Gpi,Gbi,GWf,GRf,Gpf,Gbf,GWo,GRo,Gpo,Gbo,nl,sl); ym = bsxfun(@plus,GU*hm',Gbu); ym = ym';

