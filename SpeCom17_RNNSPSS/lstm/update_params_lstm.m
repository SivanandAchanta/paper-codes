% Update Parameters using SGDCM

% learning rate
GdWz = -lr*gWz;
GdWi = -lr*gWi;
GdWf = -lr*gWf;
GdWo = -lr*gWo;

GdRz = -lr*gRz;
GdRi = -lr*gRi;
GdRf = -lr*gRf;
GdRo = -lr*gRo;

Gdbz = -lr*gbz;
Gdbi = -lr*gbi;
Gdbf = -lr*gbf;
Gdbo = -lr*gbo;

Gdpi = -lr*gpi;
Gdpf = -lr*gpf;
Gdpo = -lr*gpo;

% momentum factor
GdWz = GdWz + mf*GpdWz;
GdWi = GdWi + mf*GpdWi;
GdWf = GdWf + mf*GpdWf;
GdWo = GdWo + mf*GpdWo;

GdRz = GdRz + mf*GpdRz;
GdRi = GdRi + mf*GpdRi;
GdRf = GdRf + mf*GpdRf;
GdRo = GdRo + mf*GpdRo;

Gdbz = Gdbz + mf*Gpdbz;
Gdbi = Gdbi + mf*Gpdbi;
Gdbf = Gdbf + mf*Gpdbf;
Gdbo = Gdbo + mf*Gpdbo;

Gdpi = Gdpi + mf*Gpdpi;
Gdpf = Gdpf + mf*Gpdpf;
Gdpo = Gdpo + mf*Gpdpo;


% final update
GWz = GWz + GdWz;
GWi = GWi + GdWi;
GWf = GWf + GdWf;
GWo = GWo + GdWo;

GRz = GRz + GdRz;
GRi = GRi + GdRi;
GRf = GRf + GdRf;
GRo = GRo + GdRo;

Gbz = Gbz + Gdbz;
Gbi = Gbi + Gdbi;
Gbf = Gbf + Gdbf;
Gbo = Gbo + Gdbo;

Gpi = Gpi + Gdpi;
Gpf = Gpf + Gdpf;
Gpo = Gpo + Gdpo;

