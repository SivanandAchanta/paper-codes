function [f0rmse,f0rmse_mlpg,pf0_gvuv,pf0_gvuv_mlpg,vuverr,pvuv_final,f0rmse_pvuv,f0rmse_pvuv_mlpg,pf0_pvuv,pf0_pvuv_mlpg] = f0_RMSE(pf0_deltas,gf0,gvuv,LOWERF0,UPPERF0,std_v,vuvth_final)

% Compute F0 RMSE with ground truth VUV
pf0 = pf0_deltas(:,2); % predicted f0
pvuv = pf0_deltas(:,1); % predicted vuv

len_gf0 = length(gf0);
len_pf0 = length(pf0);

if len_gf0 > len_pf0
    gf0 = gf0(1:len_pf0); gvuv = gvuv(1:len_pf0);
else
    pf0 = pf0(1:len_gf0); pvuv = pvuv(1:len_gf0);
end

pf0(pf0 < LOWERF0) = LOWERF0;
pf0(pf0 > UPPERF0) = UPPERF0;
pf0_gvuv = pf0.*gvuv;

f0rmse = sqrt(mean((gf0 - pf0_gvuv).^2));


% do F0 MLPG in the voiced regions
S = (std_v(:,end-2:end)).^2;
dvuv = diff(gvuv);
pzc = find(dvuv > 0); pzc = pzc + 1;
nzc = find(dvuv < 0);

if nzc(1) < pzc(1)
    pzc = [1;pzc];
end

if nzc(end) < pzc(end)
    nzc = [nzc;length(gf0)];
end

pf0_gvuv_mlpg = zeros(length(pf0_gvuv),1);

for zc = 1:length(pzc)
    
%     % mean normalize before MLPG
%     if mn_bmlpg_flag
%         ym(pzc(zc):nzc(zc),end-2:end) = bsxfun(@minus,ym(pzc(zc):nzc(zc),end-2:end),mean(ym(pzc(zc):nzc(zc),end-2:end)));
%         ym(pzc(zc):nzc(zc),end-2:end) = bsxfun(@plus,ym(pzc(zc):nzc(zc),end-2:end),mu_v(end-2:end));
%     end
    
    [ym_f0_mlpg_part] = mlpg_f0(S,pf0_deltas(pzc(zc):nzc(zc),end-2:end)); % Do MLPG only in Voiced frames
    pf0_gvuv_mlpg(pzc(zc):nzc(zc),1) = ym_f0_mlpg_part(2:end-1,1);
end

pf0_gvuv_mlpg(pf0_gvuv_mlpg < LOWERF0) = LOWERF0;
pf0_gvuv_mlpg(pf0_gvuv_mlpg > UPPERF0) = UPPERF0;
pf0_gvuv_mlpg = pf0_gvuv_mlpg.*gvuv;

f0rmse_mlpg = sqrt(mean((gf0 - pf0_gvuv_mlpg).^2));


% Compute VUV (% error)
pvuv_final = zeros(size(pvuv));
pvuv_final(pvuv > vuvth_final) = 1;

vuverr = ((sum(abs(pvuv_final - gvuv))/length(gvuv))*100);

% Synthesis with F0 and predicted VUV

pf0_pvuv = pf0.*pvuv_final;
f0rmse_pvuv = sqrt(mean((gf0 - pf0_pvuv).^2));

% do F0 MLPG in the voiced regions
S = (std_v(:,end-2:end)).^2;
dvuv = diff(pvuv_final);
pzc = find(dvuv > 0); pzc = pzc + 1;
nzc = find(dvuv < 0);

if nzc(1) < pzc(1)
    pzc = [1;pzc];
end

if nzc(end) < pzc(end)
    nzc = [nzc;length(gf0)];
end

pf0_pvuv_mlpg = zeros(length(pf0_pvuv),1);

for zc = 1:length(pzc)
    
%     % mean normalize before MLPG
%     if mn_bmlpg_flag
%         ym(pzc(zc):nzc(zc),end-2:end) = bsxfun(@minus,ym(pzc(zc):nzc(zc),end-2:end),mean(ym(pzc(zc):nzc(zc),end-2:end)));
%         ym(pzc(zc):nzc(zc),end-2:end) = bsxfun(@plus,ym(pzc(zc):nzc(zc),end-2:end),mu_v(end-2:end));
%     end
    
    [ym_f0_mlpg_part] = mlpg_f0(S,pf0_deltas(pzc(zc):nzc(zc),end-2:end)); % Do MLPG only in Voiced frames
    pf0_pvuv_mlpg(pzc(zc):nzc(zc),1) = ym_f0_mlpg_part(2:end-1,1);
end

pf0_pvuv_mlpg(pf0_pvuv_mlpg < LOWERF0) = LOWERF0;
pf0_pvuv_mlpg(pf0_pvuv_mlpg > UPPERF0) = UPPERF0;
pf0_pvuv_mlpg = pf0_pvuv_mlpg.*pvuv_final;

f0rmse_pvuv_mlpg = sqrt(mean((gf0 - pf0_pvuv_mlpg).^2));


