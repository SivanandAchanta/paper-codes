function [pmgc_mlpg,psp_mlpg,varargout] = gen_sp(pmgc_deltas,mgcdim,vo,X2X,MGC2SP,FREQWARP,GAMMA,MGCORDER,lenfac,nfftby2,gv_flag,varargin)

pmgc = pmgc_deltas(:,1:mgcdim);
psp = mgc2sp(pmgc,X2X,MGC2SP,FREQWARP,GAMMA,MGCORDER,lenfac,nfftby2);

S = vo.^2;

if nargin > 11
   mu_gv = varargin{1};
   p_gv  = varargin{2};
end
    
if gv_flag
    
    [pmgc_mlpg,pmgc_mlpg_gv] = mlpg_gv_sd(S,pmgc_deltas,mu_gv,p_gv);
    pmgc_mlpg = pmgc_mlpg(2:end-1,1:MGCORDER+1);
    pmgc_mlpg_gv = pmgc_mlpg_gv(2:end-1,1:MGCORDER+1);
    
    psp_mlpg = mgc2sp(pmgc_mlpg,X2X,MGC2SP,FREQWARP,GAMMA,MGCORDER,lenfac,nfftby2);    
    
    if nargout > 2; varargout{1} = mgc2sp(pmgc_mlpg_gv,X2X,MGC2SP,FREQWARP,GAMMA,MGCORDER,lenfac,nfftby2); end;
else
    
    [pmgc_mlpg] = mlpg(S,pmgc_deltas);
    pmgc_mlpg = pmgc_mlpg(2:end-1,1:MGCORDER+1);   
    
    
    psp_mlpg = mgc2sp(pmgc_mlpg,X2X,MGC2SP,FREQWARP,GAMMA,MGCORDER,lenfac,nfftby2);
    
    
end