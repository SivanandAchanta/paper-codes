GWz = gpuArray(Wz);
GWi = gpuArray(Wi);
GWf = gpuArray(Wf);
GWo = gpuArray(Wo);

GRz = gpuArray(Rz);
GRi = gpuArray(Ri);
GRf = gpuArray(Rf);
GRo = gpuArray(Ro);

Gbz = gpuArray(bz);
Gbi = gpuArray(bi);
Gbf = gpuArray(bf);
Gbo = gpuArray(bo);

Gpi = gpuArray(pi);
Gpf = gpuArray(pf);
Gpo = gpuArray(po);

GU  = gpuArray(U);
Gbu = gpuArray(bu);

GpdWz = gpuArray(zeros(size(Wz)));
GpdWi = gpuArray(zeros(size(Wi)));
GpdWf = gpuArray(zeros(size(Wf)));
GpdWo = gpuArray(zeros(size(Wo)));

GpdRz = gpuArray(zeros(size(Rz)));
GpdRi = gpuArray(zeros(size(Ri)));
GpdRf = gpuArray(zeros(size(Rf)));
GpdRo = gpuArray(zeros(size(Ro)));

Gpdbz = gpuArray(zeros(size(bz)));
Gpdbi = gpuArray(zeros(size(bi)));
Gpdbf = gpuArray(zeros(size(bf)));
Gpdbo = gpuArray(zeros(size(bo)));

Gpdpi = gpuArray(zeros(size(pi)));
Gpdpf = gpuArray(zeros(size(pf)));
Gpdpo = gpuArray(zeros(size(po)));

GpdU  = gpuArray(zeros(size(U)));
Gpdbu = gpuArray(zeros(size(bu)));
