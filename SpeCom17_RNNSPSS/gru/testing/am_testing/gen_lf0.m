function [plf0_mlpg] = gen_lf0(plf0_deltas,std_v,vuv)



plf0_deltas(plf0_deltas(:,1)==-1e10,1) = 0;
plf0_deltas(plf0_deltas(:,2)==-1e10,2) = 0;
plf0_deltas(plf0_deltas(:,3)==-1e10,3) = 0;

plf0 = plf0_deltas(:,1);

% do F0 MLPG in the voiced regions
S = (std_v(:,229:231)).^2;
% S
% subplot(211); plot(plf0);
% subplot(212); plot(vuv);
% pause

dvuv = diff(vuv);
pzc = find(dvuv > 0); pzc = pzc + 1;
nzc = find(dvuv < 0);

if nzc(1) < pzc(1)
    pzc = [1;pzc];
end

if nzc(end) < pzc(end)
    nzc = [nzc;length(plf0)];
end

plf0_mlpg = zeros(length(plf0),1);

for zc = 1:length(pzc)
    
    %     % mean normalize before MLPG
    %     if mn_bmlpg_flag
    %         ym(pzc(zc):nzc(zc),end-2:end) = bsxfun(@minus,ym(pzc(zc):nzc(zc),end-2:end),mean(ym(pzc(zc):nzc(zc),end-2:end)));
    %         ym(pzc(zc):nzc(zc),end-2:end) = bsxfun(@plus,ym(pzc(zc):nzc(zc),end-2:end),mu_v(end-2:end));
    %     end
    
    [ym_f0_mlpg_part] = mlpg_f0(S,plf0_deltas(pzc(zc):nzc(zc),1:3)); % Do MLPG only in Voiced frames
    plf0_mlpg(pzc(zc):nzc(zc),1) = ym_f0_mlpg_part(2:end-1,1);
end




