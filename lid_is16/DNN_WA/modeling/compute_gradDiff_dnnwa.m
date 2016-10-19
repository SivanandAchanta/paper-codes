% Compute the difference between numerical and back-prop gradients

dgWi = abs(gWin - gWi)./max(abs(gWin),abs(gWi));
ix_int = find(dgWi > 1e-4);
fprintf('diff in gWi : %d \n',length(ix_int))

dgbi = abs(gbin - gbi)./max(abs(gbin),abs(gbi));
ix_int = find(dgbi > 1e-4);
fprintf('diff in gbi : %d \n',length(ix_int))


dgWa = abs(gWan - gWa)./max(abs(gWan),abs(gWa));
ix_int = find(dgWa > 1e-4);
fprintf('diff in gWa : %d \n',length(ix_int))

dgba = abs(gban - gba)./max(abs(gban),abs(gba));
ix_int = find(dgba > 1e-4);
fprintf('diff in gbi : %d \n',length(ix_int))


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

