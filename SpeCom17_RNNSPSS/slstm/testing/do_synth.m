function[y_mlpg] = do_synth(pmgc_mlpg,pbap_mlpg,pf0,fs,prm,spsssynthdir,li,mlpgstr,X2X,MGC2SP,FREQWARP,GAMMA,MGCORDER,lenfac,nfftby2)

% osp = mgc2sp(gmgc,X2X,MGC2SP,FREQWARP,GAMMA,MGCORDER,lenfac,nfftby2);
% oap = bap2ap(gbap,nfftby2);
% of0 = ocmp_deltas(:,233);
% of0(of0 < LOWERF0) = 0;

% load sptk commands
sptk_cmd

psp = mgc2sp(pmgc_mlpg,X2X,MGC2SP,FREQWARP,GAMMA,MGCORDER,lenfac,nfftby2);
pap = bap2ap(pbap_mlpg,nfftby2);

% y_mlpg = synth_st(of0',osp,oap,fs,prm,spsssynthdir,num2str(li),'_abs.wav');
y_mlpg = synth_st(pf0',psp,pap,fs,prm,spsssynthdir,num2str(li),strcat(mlpgstr,'.wav'));

end