function [mmcd,mmcd_mlpg,psp,psp_mlpg,varargout] = mgc_distortion(pmgc_deltas,mgcdim,gmgc,vo,X2X,MGC2SP,FREQWARP,GAMMA,MGCORDER,lenfac,nfftby2,gv_flag,varargin)

pmgc = pmgc_deltas(:,1:mgcdim);
mmcd = 6.14185*mean(sqrt(sum((gmgc(:,2:mgcdim) - pmgc(:,2:mgcdim)).^2,2))); % no power coefficient
psp = mgc2sp(pmgc,X2X,MGC2SP,FREQWARP,GAMMA,MGCORDER,lenfac,nfftby2);

S = vo.^2;

% gv_var = varargin{1};
% varargin
if nargin > 12
   mu_gv = varargin{1};
   p_gv  = varargin{2};
end
    
if gv_flag
    
    [pmgc_mlpg,pmgc_mlpg_gv] = mlpg_gv_sd(S,pmgc_deltas,mu_gv,p_gv);
    pmgc_mlpg = pmgc_mlpg(2:end-1,1:MGCORDER+1);
    pmgc_mlpg_gv = pmgc_mlpg_gv(2:end-1,1:MGCORDER+1);
    
    psp_mlpg = mgc2sp(pmgc_mlpg,X2X,MGC2SP,FREQWARP,GAMMA,MGCORDER,lenfac,nfftby2);
    
    mmcd_mlpg = 6.14185*mean(sqrt(sum((gmgc(:,2:mgcdim) - pmgc_mlpg(:,2:end)).^2,2))); % no power coefficient
    
    if nargout > 4; varargout{1} = mgc2sp(pmgc_mlpg_gv,X2X,MGC2SP,FREQWARP,GAMMA,MGCORDER,lenfac,nfftby2); end;
    if nargout > 4; varargout{2} = 6.14185*mean(sqrt(sum((gmgc(:,2:mgcdim) - pmgc_mlpg_gv(:,2:end)).^2,2))); end; % no power coefficient
    
else
    
    [pmgc_mlpg] = mlpg(S,pmgc_deltas);
    pmgc_mlpg = pmgc_mlpg(2:end-1,1:MGCORDER+1);
    
    psp_mlpg = mgc2sp(pmgc_mlpg,X2X,MGC2SP,FREQWARP,GAMMA,MGCORDER,lenfac,nfftby2);
    
    mmcd_mlpg = 6.14185*mean(sqrt(sum((gmgc(:,2:mgcdim) - pmgc_mlpg(:,2:end)).^2,2))); % no power coefficient
    
end