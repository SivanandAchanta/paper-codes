function[pmgc_mlpg,pbap_mlpg,pf0_mlpg,pvuv] = do_mlpg(pcmp_deltas,LOWERF0,UPPERF0,vo,vo_v,mgcdim,bapdim,outvec_mgc,outvec_bap,outvec_f0,vuvth)


% MGC - MLPG
S = vo(outvec_mgc).^2;
pmgc_deltas = pcmp_deltas(:,outvec_mgc);
[pmgc_mlpg] = mlpg(S,pmgc_deltas);
pmgc_mlpg = pmgc_mlpg(2:end-1,1:mgcdim);   


% BAP - MLPG
S = vo(outvec_bap).^2;
pbap_deltas = pcmp_deltas(:,outvec_bap);
[pbap_mlpg] = mlpg(S,pbap_deltas);
pbap_mlpg = pbap_mlpg(2:end-1,1:bapdim);

% F0 - MLPG
S = vo_v(outvec_f0).^2;
pf0_deltas = pcmp_deltas(:,outvec_f0);
pvuv = pcmp_deltas(:,232);
pvuv(pvuv<vuvth) = 0;
pvuv(pvuv>vuvth) = 1;

[pf0_mlpg] = f0_mlpg(pf0_deltas,S,pvuv);
pf0_mlpg(pf0_mlpg<LOWERF0) = 0;
pf0_mlpg(pf0_mlpg>UPPERF0) = UPPERF0;

end
