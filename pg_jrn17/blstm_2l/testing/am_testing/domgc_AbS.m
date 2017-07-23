function [gmgc,gsp,gf0,gvuv,gbap,gap] = domgc_AbS(mt,mgcdim,bapdim,X2X,MGC2SP,FREQWARP,GAMMA,MGCORDER,lenfac,nfftby2)

gmgc = mt(:,1:mgcdim);
gsp = mgc2sp(gmgc,X2X,MGC2SP,FREQWARP,GAMMA,MGCORDER,lenfac,nfftby2);

% Convert lf0 to f0
lf0 = mt(:,3*(mgcdim+bapdim)+1);
gf0 = exp(lf0);
gf0(gf0<1) = 0;
gvuv = zeros(size(gf0));
gvuv(gf0>0) = 1;

% Convert bap to ap
gbap = mt(:,3*(mgcdim)+1:3*(mgcdim)+bapdim);
[gap] = bap2ap(gbap,nfftby2);

end