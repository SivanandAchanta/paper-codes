% Purpose : Compute sequence error instead of frame error

% References :
% [1] Improving trajectory modelling for DNN-based speech synthesis by
% using stacked bottleneck features and MGE training - Zhizheng Wu and Simon King (TASLP) (seqerr_v1.m)

% [2] Minimum trajectory error training for DNNs combined with stacked
% bottleneck features - Zhizheng Wu and Simon King (seqerr_v1.m)

% [3] Trajectory training considering GV for speech synthesis based on
% neural netwroks - Tokuda et.al,. (seqerr_v2.m)



% load statistics

% load(strcat(datadir,'mvni.mat'))
% load(strcat(datadir,'mvno.mat'))
% load(strcat(datadir,'mvno_voiced.mat')) % for voiced f0 variances
% load(strcat(datadir,'maxmino.mat'))
% S = vo.^2;
% 
MGCORDER = 49;

% denormalize the output 
ol_md = denormalize(ol_m,mo,vo,maxv,minv,outvec,outtmvnf,outtmmnf);
%Yd = denormalize(Y,mo,vo,maxv,minv,outvec,outtmvnf,outtmmnf);
C = Y(:,1:MGCORDER+1);
 
% % Perform MLPG on predicted sequence
% [cl_md,costder] = mlpg(S,ol_md,C);
% cl_md = cl_md(2:end-1,1:MGCORDER+1);
% 
% % perform MVN on cl_md and C
% % cl_m = mvn_normalize(cl_md,mo(1:MGCORDER+1),vo(1:MGCORDER+1));

% [Y,costder] = seqerr_v1(S,ol_md,C,mo,vo);

[Y,costder,dS] = seqerr_v2(S,ol_md,C,mo,vo,dS_flag);

if dS_flag
   PS = S;
   S = S - 1./dS;
   S(S <= 0) = PS(S <= 0);   
end
% compute cost derivative dim-by-dim
costder = costder/bs;

