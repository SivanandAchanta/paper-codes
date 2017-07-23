function [pf0_mlpg] = f0_mlpg(pf0_deltas,S,vuv)

pf0 = pf0_deltas(:,1);

dvuv = diff(vuv);
pzc = find(dvuv > 0); pzc = pzc + 1;
nzc = find(dvuv < 0);

if nzc(1) < pzc(1)
    pzc = [1;pzc];
end

if nzc(end) < pzc(end)
    nzc = [nzc;length(pf0)];
end

pf0_mlpg = zeros(length(pf0),1);

for zc = 1:length(pzc)
    [ym_f0_mlpg_part] = mlpg(S,pf0_deltas(pzc(zc):nzc(zc),1:3)); % Do MLPG only in Voiced frames
    pf0_mlpg(pzc(zc):nzc(zc),1) = ym_f0_mlpg_part(2:end-1,1);
end




