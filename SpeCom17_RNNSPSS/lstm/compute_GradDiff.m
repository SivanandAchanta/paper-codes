% Compute the difference between numerical and back-prop gradients

dg = abs(gWzn - gWz)./max(abs(gWz),abs(gWzn));
ix_int = find(dg > 1e-4);
fprintf('diff in gWz : %d \n',length(ix_int))

dg = abs(gWin - gWi)./max(abs(gWi),abs(gWin));
ix_int = find(dg > 1e-4);
fprintf('diff in gWi : %d \n',length(ix_int))

dg = abs(gWfn - gWf)./max(abs(gWf),abs(gWfn));
ix_int = find(dg > 1e-4);
fprintf('diff in gWf : %d \n',length(ix_int))

dg = abs(gWon - gWo)./max(abs(gWo),abs(gWon));
ix_int = find(dg > 1e-4);
fprintf('diff in gWo : %d \n',length(ix_int))




dg = abs(gRzn - gRz)./max(abs(gRz),abs(gRzn));
ix_int = find(dg > 1e-4);
fprintf('diff in gRz : %d \n',length(ix_int))

dg = abs(gRin - gRi)./max(abs(gRi),abs(gRin));
ix_int = find(dg > 1e-4);
fprintf('diff in gRi : %d \n',length(ix_int))

dg = abs(gRfn - gRf)./max(abs(gRf),abs(gRfn));
ix_int = find(dg > 1e-4);
fprintf('diff in gRf : %d \n',length(ix_int))

dg = abs(gRon - gRo)./max(abs(gRo),abs(gRon));
ix_int = find(dg > 1e-4);
fprintf('diff in gRo : %d \n',length(ix_int))

dg = abs(gUn - gU)./max(abs(gU),abs(gUn));
ix_int = find(dg > 1e-4);
fprintf('diff in gU : %d \n',length(ix_int))



dg = abs(gbzn - gbz)./max(abs(gbzn),abs(gbz));
ix_int = find(dg > 1e-4);
fprintf('diff in gbz : %d \n',length(ix_int))

dg = abs(gbin - gbi)./max(abs(gbin),abs(gbi));
ix_int = find(dg > 1e-4);
fprintf('diff in gbi : %d \n',length(ix_int))

dg = abs(gbfn - gbf)./max(abs(gbfn),abs(gbf));
ix_int = find(dg > 1e-4);
fprintf('diff in gbf : %d \n',length(ix_int))

dg = abs(gbon - gbo)./max(abs(gbon),abs(gbo));
ix_int = find(dg > 1e-4);
fprintf('diff in gbo : %d \n',length(ix_int))



% gpin'
% gpi'
dg = abs(gpin - gpi)./max(abs(gpin),abs(gpi));
ix_int = find(dg > 1e-4);
fprintf('diff in gpi : %d \n',length(ix_int))

% gpfn'
% gpf'
dg = abs(gpfn - gpf)./max(abs(gpfn),abs(gpf));
ix_int = find(dg > 1e-4);
fprintf('diff in gpf : %d \n',length(ix_int))

% gpon'
% gpo'
dg = abs(gpon - gpo)./max(abs(gpon),abs(gpo));
ix_int = find(dg > 1e-4);
fprintf('diff in gpo : %d \n',length(ix_int))

% 
% gbun'
% gbu'
dg = abs(gbun - gbu)./max(abs(gbun),abs(gbu));
ix_int = find(dg > 1e-4);
fprintf('diff in gbu : %d \n',length(ix_int))
