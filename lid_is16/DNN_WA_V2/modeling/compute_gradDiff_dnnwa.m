% Compute the difference between numerical and back-prop gradients

dgWi = abs(gWin - gWi)./max(abs(gWin),abs(gWi));
ix_int = find(dgWi > 1e-4);
fprintf('diff in gWi : %d \n',length(ix_int))

dgbi = abs(gbin - gbi)./max(abs(gbin),abs(gbi));
ix_int = find(dgbi > 1e-4);
fprintf('diff in gbi : %d \n',length(ix_int))

dgWba1 = abs(gWba1n - gWba1)./max(abs(gWba1n),abs(gWba1));
ix_int = find(dgWba1 > 1e-4);
fprintf('diff in gWba1 : %d \n',length(ix_int))

dgbba1 = abs(gbba1n - gbba1)./max(abs(gbba1n),abs(gbba1));
ix_int = find(dgbba1 > 1e-4);
fprintf('diff in gbba1 : %d \n',length(ix_int))

dgWba2 = abs(gWba2n - gWba2)./max(abs(gWba2n),abs(gWba2));
ix_int = find(dgWba2 > 1e-4);
fprintf('diff in gWba2 : %d \n',length(ix_int))

dgbba2 = abs(gbba2n - gbba2)./max(abs(gbba2n),abs(gbba2));
ix_int = find(dgbba2 > 1e-4);
fprintf('diff in gbba2 : %d \n',length(ix_int))


dgWa = abs(gWan - gWa)./max(abs(gWan),abs(gWa));
ix_int = find(dgWa > 1e-4);
fprintf('diff in gWa : %d \n',length(ix_int))

dgba = abs(gban - gba)./max(abs(gban),abs(gba));
ix_int = find(dgba > 1e-4);
fprintf('diff in gba : %d \n',length(ix_int))


dgWh = abs(gWhn - gWh)./max(abs(gWhn),abs(gWh));
ix_int = find(dgWh > 1e-4);
fprintf('diff in gWh : %d \n',length(ix_int))

dgbh = abs(gbhn - gbh)./max(abs(gbhn),abs(gbh));
ix_int = find(dgbh > 1e-4);
fprintf('diff in gbh : %d \n',length(ix_int))


dgWo = abs(gWon - gWo)./max(abs(gWon),abs(gWo));
ix_int = find(dgWo > 1e-4);
fprintf('diff in gWo : %d \n',length(ix_int))

dgbo = abs(gbon - gbo)./max(abs(gbon),abs(gbo));
ix_int = find(dgbo > 1e-4);
fprintf('diff in gbo : %d \n',length(ix_int))

