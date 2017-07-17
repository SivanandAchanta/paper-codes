function[mcd,bapd,f0rmse,vuvd,pmgc_mlpg,pbap_mlpg,pf0_mlpg,pvuv] = get_objscores(pcmp_deltas,ocmp_deltas,LOWERF0,UPPERF0,vo,vo_v,mgcdim,bapdim,outvec_mgc,outvec_bap,outvec_f0,vuvth)

gmgc = ocmp_deltas(:,1:mgcdim);
gbap = ocmp_deltas(:,151:176);
of0 = ocmp_deltas(:,233);
of0(of0 < LOWERF0) = 0;
gvuv = zeros(size(of0));
gvuv(of0 ~= 0) = 1;


% MGC - MLPG
S = vo(outvec_mgc).^2;
pmgc_deltas = pcmp_deltas(:,outvec_mgc);
[pmgc_mlpg] = mlpg(S,pmgc_deltas);
pmgc_mlpg = pmgc_mlpg(2:end-1,1:mgcdim);   

% MCD computation
mcd = 6.14185*mean(sqrt(sum((gmgc(:,2:mgcdim) - pmgc_mlpg(:,2:end)).^2,2)));

% BAP - MLPG
S = vo(outvec_bap).^2;
pbap_deltas = pcmp_deltas(:,outvec_bap);
[pbap_mlpg] = mlpg(S,pbap_deltas);
pbap_mlpg = pbap_mlpg(2:end-1,1:bapdim);

% BAPD computation
bapd = sqrt(mean(sum((pbap_mlpg-gbap).^2,2)));

% F0 - MLPG
S = vo_v(outvec_f0).^2;
pf0_deltas = pcmp_deltas(:,outvec_f0);
pvuv = pcmp_deltas(:,232);
pvuv(pvuv<vuvth) = 0;
pvuv(pvuv>vuvth) = 1;

[pf0_mlpg] = f0_mlpg(pf0_deltas,S,pvuv);
pf0_mlpg(pf0_mlpg<LOWERF0) = 0;
pf0_mlpg(pf0_mlpg>UPPERF0) = UPPERF0;

% F0 RMSE and VUVD
f0rmse = sqrt(mean((of0 - pf0_mlpg).^2));
vuvd = ((sum(abs(pvuv - gvuv))/length(gvuv))*100);


end
