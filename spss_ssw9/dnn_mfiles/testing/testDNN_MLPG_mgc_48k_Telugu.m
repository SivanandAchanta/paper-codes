% Purpose : Test DNN

clear all; close all; clc;
addpath('/media/newHDD/hts_voices/STRAIGHTV40');

resdir = '../../results/';
datadir = '../../matfiles/';
wtdir = '../../wt/';

% testfiles
testwavpath = '../../../../Blizzard15/voices/Telugu/data/test/acoustic_feats/feats_16k/wav/';
testfiles = dir(testwavpath);

% synthesis params
% STRAIGHT Params
fs = 48000;
frshift_s = round(0.005*fs) ; % frame shift in samples
UPPERF0 = 560;
LOWERF0 = 60;

frshiftms = round((frshift_s/fs)*1000); % frameshift in ms
prm.F0frameUpdateInterval = frshiftms;
prm.spectralUpdateInterval = frshiftms;
prm.F0searchUpperBound = UPPERF0;
prm.F0searchLowerBound = LOWERF0;

% msasb params
nfft = 2048;
nfftby2 = round(nfft/2 + 1);

% load mvn of input
load(strcat(datadir,'mvni.mat'))

% load maxmin of output
load(strcat(datadir,'mvno.mat'))
load(strcat(datadir,'maxmino.mat'))

% make test data
% % Step3: make test data

outvec = [1:231];
invec = [1:263 297:347];
mvnivec = [303:339 343:347];

intmvnf = 1;
outtmvnf = 1;

load(strcat(datadir,'test.mat'));
test_batchdata = single(data);
if intmvnf
    I1 = bsxfun(@minus,test_batchdata(:,mvnivec),m(:,mvnivec));
    I1 = bsxfun(@rdivide,I1,v(:,mvnivec)+1e-5);
    test_batchdata(:,mvnivec) = I1;
end
clear I1;
test_batchdata = test_batchdata(:,invec);

test_batchtargets = single(targets(:,outvec));
if outtmvnf
    I1 = bsxfun(@minus,test_batchtargets,minv);
    I1 = bsxfun(@rdivide,I1,maxv);
    nml_test_batchtargets = I1;
end
nml_test_batchtargets = single(nml_test_batchtargets(:,outvec));
test_clv = cumsum([1 clv]);
test_numbats = length(test_clv) - 1;

[Nin,din] = size(test_batchdata);
[Nout,dout] = size(test_batchtargets);

% Step4 : Load weight matrix
% train_batchsize = 1000;
% arch_name = strcat('2x1000R182L','_bs',num2str(train_batchsize),'_flr_mf',num2str(eta),num2str(mf),'_withoutdropout');
arch_name = '314L1000R1000R231L_l25e-05alpha0.001_b10.9_b20.999_bs500_yi_2';
% load weights
load(strcat(wtdir,'W_',arch_name,'.mat'))

nl = [din 1000 1000 dout];
nh = length(nl) - 1; % number of hidden layers
f = [ 'R' 'R' 'L'];

if (length(nl) - 1) ~= length(f)
    disp('number of hidden o/p fns mus be same as number of hidden layers');
end

nlv = 1:nh;
wtl = [1 nl(nlv).*nl(nlv+1)];
wtl = cumsum(wtl);
btl = cumsum([1 nl(nlv+1)]);

a_tanh = 1.7159;
b_tanh = 2/3;
bby2a = (b_tanh/(2*a_tanh));

% set synthesis directories
abssynthdir = strcat(resdir,'synth_',arch_name,'/abs/');
spssynthdir = strcat(resdir,'synth_',arch_name,'/sps/');
mgcdir = 'temp_mgc/';

% make direcotries
mkdir(abssynthdir);
mkdir(spssynthdir);
mkdir(mgcdir);

% Postfiltering params
% SPTK commands
X2X     = '/home/siva/tools/TTS/SPTK/bin/x2x';
MGCEP   = '/home/siva/tools/TTS/SPTK/bin/mcep';
LPC2LSP = '/home/siva/tools/TTS/SPTK/bin/lpc2lsp';
AVERAGE = '/home/siva/tools/TTS/SPTK/bin/average';
NAN     = '/home/siva/tools/TTS/SPTK/bin/nan';
MINMAX  = '/home/siva/tools/TTS/SPTK/bin/minmax';

FREQT    = '/home/siva/tools/TTS/SPTK/bin/freqt';
C2ACR    = '/home/siva/tools/TTS/SPTK/bin/c2acr';
VOPR     = '/home/siva/tools/TTS/SPTK/bin/vopr';
MC2B     = '/home/siva/tools/TTS/SPTK/bin/mc2b';
SOPR     = '/home/siva/tools/TTS/SPTK/bin/sopr';
B2MC     = '/home/siva/tools/TTS/SPTK/bin/b2mc';
LSP2LPC  = '/home/siva/tools/TTS/SPTK/bin/lsp2lpc';
MGC2MGC  = '/home/siva/tools/TTS/SPTK/bin/mgc2mgc';
MERGE    = '/home/siva/tools/TTS/SPTK/bin/merge';
BCP      = '/home/siva/tools/TTS/SPTK/bin/bcp';
LSPCHECK = '/home/siva/tools/TTS/SPTK/bin/lspcheck';
MGC2SP      = '/home/siva/tools/TTS/SPTK/bin/mgc2sp';
INTERPOLATE = '/home/siva/tools/TTS/SPTK/bin/interpolate';
DFS         = '/home/siva/tools/TTS/SPTK/bin/dfs';
BCUT     = '/home/siva/tools/TTS/SPTK/bin/bcut';
VSTAT    = '/home/siva/tools/TTS/SPTK/bin/vstat';



% speech analysis conditions
SAMPFREQ    = 48000;   % Sampling frequency (48kHz)
FRAMESHIFT  = round(0.005*SAMPFREQ); % Frame shift in point (240 = 48000 * 0.005)
FREQWARP    = 0.55;   % frequency warping factor
GAMMA       = 0;      % pole/zero weight for mel-generalized cepstral (MGC) analysis
MGCORDER    = 49;   % order of MGC analysis
LNGAIN      = 1;     % use logarithmic gain rather than linear gain
mgcdim      = MGCORDER+1;
bapdim      = 26;
lenfac      = 2048;

testerr  = 0;
varfloor = 0;

% predfeatpath = strcat(resdir,'pred_feats/');
% mkdir(predfeatpath);

% compute error on test set
for li = 1:(test_numbats)
    
    %% Step 1 : Predict parameters form the network
    X = []; mt = [];
    sl = test_clv(li+1) - test_clv(li);
    X = test_batchdata(test_clv(li):test_clv(li+1)-1,:);
    % fp
    [ol] = fpav_cpu(X,W,b,nl,f,nh,a_tanh,b_tanh,wtl,btl,sl);
    
    % % test set variables
    ottl = [1 sl*(nl(nlv+1))];
    ottl = cumsum(ottl);
    
    ym = reshape(ol(1,ottl(end-1):ottl(end)-1),sl,nl(end));
    clear ol;
    mt = nml_test_batchtargets(test_clv(li):test_clv(li+1)-1,:);
    
    % compute error
    me = mean(sum((mt - ym).^2,2)./(sum(mt.^2,2)));
    testerr = testerr + me/(test_numbats);
    
    %% read test - wav
    [str,tok] = strtok(testfiles(li+2).name,'.');
    str
    [y,fs1] = wavread(strcat(testwavpath,testfiles(li+2).name));
    y = resample(y,fs,fs1);
    
    % Step 2 : STRAIGHT ANALYSIS
    [f0raw, ap] = exstraightsource(y,fs,prm);
    [st_sgram] = exstraightspec(y, f0raw, fs, prm);
    
    % synthesize AbS
    [sy_stght,prmS] = exstraightsynth(f0raw,st_sgram,ap,fs,prm);
    sy_stght=sy_stght./(1.01*max(abs(sy_stght)));
    %     soundsc(sy_stght,fs)
    wavwrite(sy_stght,fs,strcat(abssynthdir,str,'_abs','.wav'));
    
    % do an cmp-AbS
    mt = test_batchtargets(test_clv(li):test_clv(li+1)-1,:);
    mgc = mt(:,1:mgcdim);
    [N,dim] = size(mgc);
    dlmwrite('temp.mgc',mgc,'delimiter', ' ');
    
    % convert MGC into spectrum
    command = [X2X, ' ', '+af', ' ', 'temp.mgc', ' ', '|' ...
        MGC2SP, ' ', '-a', ' ', num2str(FREQWARP),' ', '-g',' ', num2str(GAMMA),' ', '-m', ' ', num2str(MGCORDER), ' ', ...
        '-l', ' ', num2str(lenfac), ' ', '-o', ' ', num2str(2), ' ', '>', ' ', 'temp.sp' ];
    
    system(command);
    
    fid1 = fopen('temp.sp','r','ieee-le');
    M1 = fread(fid1, [nfftby2 N],'float');
    fclose(fid1);
    
    [sy_stght,prmS] = exstraightsynth(f0raw,M1,ap,fs,prm);
    sy_stght=sy_stght./(1.01*max(abs(sy_stght)));
    %     soundsc(sy_stght,fs)
    wavwrite(sy_stght,fs,strcat(abssynthdir,str,'_mgcabs','.wav'));
    
    % Convert lf0 to f0
    lf0 = mt(:,3*(mgcdim)+1);
    f01 = exp(lf0);
    f01(f01<1) = 0;
    
    % Convert bap to ap
    bap = mt(:,3*(mgcdim+1)+1:3*(mgcdim+1)+bapdim);
%     bap = bap';
    [N,dim] = size(bap);
    dlmwrite('temp_ascii.bap',bap,'delimiter', ' ');
    
    command = [X2X, ' ', '+af', ' ', 'temp_ascii.bap', ' ', ' >', ' ', 'temp.bap'];
    system(command);
    command = ['perl', ' ', 'bap2ap.pl'];
    system(command);
    
    fid1 = fopen('temp.ap','r','ieee-le');
    ap1 = fread(fid1, [nfftby2 N],'float');
    fclose(fid1);
    
    [sy_stght,prmS] = exstraightsynth(f01',M1,ap1,fs,prm);
    sy_stght=sy_stght./(1.01*max(abs(sy_stght)));
    %     soundsc(sy_stght,fs)
    wavwrite(sy_stght,fs,strcat(abssynthdir,str,'_mgcfullabs','.wav'));
    
    
    % Step 3 : Synthesize using predicted spectral without MLPG
    % denormalization
    if outtmvnf
        I1 = bsxfun(@times,ym,maxv);
        I1 = bsxfun(@plus,I1,minv);
        ym = I1;
    end
    
    ym_mgc = ym(:,1:mgcdim);
    [N,dim] = size(ym_mgc);
    dlmwrite('temp.mgc',ym_mgc,'delimiter', ' ');
    
    % convert MGC into spectrum
    command = [X2X, ' ', '+af', ' ', 'temp.mgc', ' ', '|' ...
        MGC2SP, ' ', '-a', ' ', num2str(FREQWARP),' ', '-g',' ', num2str(GAMMA),' ', '-m', ' ', num2str(MGCORDER), ' ', ...
        '-l', ' ', num2str(lenfac), ' ', '-o', ' ', num2str(2), ' ', '>', ' ', 'temp.sp' ];
    
    system(command);
    
    fid1 = fopen('temp.sp','r','ieee-le');
    M1 = fread(fid1, [nfftby2 N],'float');
    fclose(fid1);
    
    
    % synthesis without MLPG
    [sy_stght,prmS] = exstraightsynth(f0raw,M1,ap,fs,prm);
    sy_stght=sy_stght./(1.01*max(abs(sy_stght)));
    %soundsc(diff(sy_stght),fs)
    wavwrite(sy_stght,fs,strcat(spssynthdir,str,'_speconly_nomlpg.wav'));
    
    
    bap = ym(:,3*(mgcdim+1)+1:3*(mgcdim+1)+bapdim);
%     bap = bap';
    [N,dim] = size(bap);
    dlmwrite('temp_ascii.bap',bap,'delimiter', ' ');
    
    command = [X2X, ' ', '+af', ' ', 'temp_ascii.bap', ' ', ' >', ' ', 'temp.bap'];
    system(command);
    command = ['perl', ' ', 'bap2ap.pl'];
    system(command);
    
    fid1 = fopen('temp.ap','r','ieee-le');
    ap1 = fread(fid1, [nfftby2 N],'float');
    fclose(fid1);
    
    [sy_stght,prmS] = exstraightsynth(f0raw,M1,ap1,fs,prm);
    sy_stght=sy_stght./(1.01*max(abs(sy_stght)));
    %soundsc(diff(sy_stght),fs)
    wavwrite(sy_stght,fs,strcat(spssynthdir,str,'_specnaponly_nomlpg.wav'));
    
    
    % predicted f0
    % Convert lf0 to f0
    lf0 = ym(:,3*(mgcdim)+1);
    f01 = exp(lf0);
    f01(f01<1) = 0;
    
    %     dlmwrite(strcat(predfeatpath,str,'.f0'),ym_f0(:));
    
    [sy_stght,prmS] = exstraightsynth(f01',M1,ap1,fs,prm);
    sy_stght=sy_stght./(1.01*max(abs(sy_stght)));
    %soundsc(diff(sy_stght),fs)
    wavwrite(sy_stght,fs,strcat(spssynthdir,str,'_specnapf0_nomlpg.wav'));
    
    %     % Step 4: Synthesis with MLPG
    %     [T,d3] = size(ym);
    %
    %     % Step 4-1: make W
    %     [W_hts] = deltas_HTS(1,T+2); % 3N x N matrix
    %     S = vo.^2;
    %
    %     % Step 4-2: do MLPG
    %     M_mlpg = zeros(T+2,MGCORDER+1);
    %
    %     for i = 1:(MGCORDER+1)
    %         i
    %         M_feat = [ym(:,i) ym(:,i+(MGCORDER+1)) ym(:,i+2*(MGCORDER+1))];
    %         M_feat = M_feat';
    %         M_feat = M_feat(:); % 3N x 1 vector
    %
    %         % make sigma 3N x 3N matrix
    %         S_feat = [S(:,i) S(:,i+(MGCORDER+1)) S(:,i+2*(MGCORDER+1))];
    %         S_feat = S_feat';
    %         S_feat = S_feat(:); % 3 x 1 vector
    %         S_feat = repmat(S_feat,T,1); % 3N x 1 vector
    %
    %         S_feat(S_feat == 0) = 1e-5; % substitute zero variance with small number (to avoid NaNs)
    %         S_feat = 1./S_feat; % inverse of the variances
    % %         S_feat = diag(S_feat); % 3N x 3N matrix
    %
    % %         WS = W_hts'*S_feat;
    %         WTS = bsxfun(@times,W_hts',S_feat');
    %         Rq = WTS*W_hts; % N x N matrix
    %         rq = WTS*M_feat; % N x 1 vector
    %
    %         M_mlpg(:,i) = pinv(Rq)*rq; % Nx 1 vector
    %     end
    %
    %     if sum(sum(isnan(M_mlpg)))
    %         disp('there are nan elements in M_mlpg');
    %         pause
    %     end
    %
    %     ym_mgc = M_mlpg(2:end-1,1:MGCORDER+1);
    %     [N,dim] = size(ym_mgc);
    %     dlmwrite(strcat(mgcdir,'temp.mgc'),ym_mgc,'delimiter', ' ');
    %     mgcfile = strcat(mgcdir,'temp.mgc');
    %
    %     % convert MGC into spectrum
    %     command = [X2X, ' ', '+af', ' ', mgcfile, ' ', '|' ...
    %         MGC2SP, ' ', '-a', ' ', num2str(FREQWARP),' ', '-g',' ', num2str(GAMMA),' ', '-m', ' ', num2str(MGCORDER), ' ', ...
    %         '-l', ' ', num2str(lenfac), ' ', '-o', ' ', num2str(2), ' ', '>', ' ', 'temp.sp' ];
    %
    %     system(command);
    %
    %     fid1 = fopen('temp.sp','r','ieee-le');
    %     M1 = fread(fid1, [nfftby2 N],'float');
    %     fclose(fid1);
    %
    %     %     % Step 4-3: synthesis with MLPG spectra
    %     %     ym_mlpg = M_mlpg(2:end-1,:);
    %     %     ym_mlpg = ym_mlpg(:,1:nbands+2);
    %     %     ym_mlpg = 10.^(ym_mlpg/20);
    %     %     ym_mlpg = ym_mlpg';
    %     %     nframe = size(ym_mlpg,2);
    %     %     seali = zeros(nfftby2,nframe);
    %     %     for ii = 1:nframe;
    %     %         seali(:,ii) = interp1(x,ym_mlpg(:,ii),xi);
    %     %     end
    %
    %     [sy_stght,prmS] = exstraightsynth(ym_f0,M1,seali_ap,fs,prm);
    %     sy_stght=sy_stght./(1.01*max(abs(sy_stght)));
    % %     soundsc(diff(sy_stght),fs)
    %     wavwrite(sy_stght,fs,strcat(spssynthdir,str,'_specnapf0_specmlpg.wav'));
    %
    %      % get VS mgc
    %     ym_mgc = M_mlpg(2:end-1,1:MGCORDER+1);
    %
    %     mbvs = mean(ym_mgc);
    %     stdbvs = std(ym_mgc);
    %
    %     std_ratio = vo(:,1:MGCORDER+1)./(stdbvs+varfloor);
    %
    %     ym_mgc_ms = bsxfun(@minus,ym_mgc,mbvs);
    %     ym_mgc_vs = bsxfun(@times,ym_mgc_ms,std_ratio);
    %     ym_mgc_vs = bsxfun(@plus,ym_mgc_vs,mbvs);
    %     ym_mgc = ym_mgc_vs;
    %
    %     [N,dim] = size(ym_mgc);
    %     dlmwrite(strcat(mgcdir,'temp.mgc'),ym_mgc,'delimiter', ' ');
    %     mgcfile = strcat(mgcdir,'temp.mgc');
    %
    %     % convert MGC into spectrum
    %     command = [X2X, ' ', '+af', ' ', mgcfile, ' ', '|' ...
    %         MGC2SP, ' ', '-a', ' ', num2str(FREQWARP),' ', '-g',' ', num2str(GAMMA),' ', '-m', ' ', num2str(MGCORDER), ' ', ...
    %         '-l', ' ', num2str(lenfac), ' ', '-o', ' ', num2str(2), ' ', '>', ' ', 'temp.sp' ];
    %
    %     system(command);
    %
    %     fid1 = fopen('temp.sp','r','ieee-le');
    %     M1 = fread(fid1, [nfftby2 N],'float');
    %     fclose(fid1);
    %
    %     %     % Step 4-3: synthesis with MLPG spectra
    %     %     ym_mlpg = M_mlpg(2:end-1,:);
    %     %     ym_mlpg = ym_mlpg(:,1:nbands+2);
    %     %     ym_mlpg = 10.^(ym_mlpg/20);
    %     %     ym_mlpg = ym_mlpg';
    %     %     nframe = size(ym_mlpg,2);
    %     %     seali = zeros(nfftby2,nframe);
    %     %     for ii = 1:nframe;
    %     %         seali(:,ii) = interp1(x,ym_mlpg(:,ii),xi);
    %     %     end
    %
    %     [sy_stght,prmS] = exstraightsynth(ym_f0,M1,seali_ap,fs,prm);
    %     sy_stght=sy_stght./(1.01*max(abs(sy_stght)));
    % %     soundsc(diff(sy_stght),fs)
    %     wavwrite(sy_stght,fs,strcat(spssynthdir,str,'_specnapf0_specmlpg_vs.wav'));
    
    %     ym_f0 = ym(:,end-1);
    %     ym_vuv = ym(:,end);
    %     ym_vuv_final = zeros(size(ym_vuv));
    %     ym_vuv_final(ym_vuv > 0.4) = 1;
    %     ym_f0(ym_f0 < 60) = 60;
    %     ym_f0 = ym_f0.*ym_vuv_final;
    %     ym_f0 = ym_f0';
    
    %     [sy_stght,prmS] = exstraightsynth(ym_f0,seali,ap,fs,prm);
    %     sy_stght=sy_stght./(1.01*max(abs(sy_stght)));
    %     soundsc(diff(sy_stght),fs)
    %     wavwrite(sy_stght,fs,strcat(spssynthdir,str,'_specmlpg_pf0nomlpg','.wav'));
    
    % Step 5: Do post filtering
    
    % step 5-1 : compute MGC
    %         dlmwrite('temp.sp',seali','delimiter', ' ');
    %         spfile = 'temp.sp';
    
    
    %         command = [X2X, ' ', '+af', ' ', spfile, ' ', '|' ...
    %             ' ', MGCEP, ' ', '-a', ' ', num2str(FREQWARP), ' ', '-m', ' ', num2str(MGCORDER),' ', '-l', ' ', num2str(1024) ...
    %             ' ', '-e', ' ', num2str(1.0E-08), ' ', '-j', ' ',num2str(0), ' ','-f' ,' ', num2str(0.0), ' ', '-q',' ',num2str(3), ' ', '>', ' ', mgcfile];
    %
    %         system(command)
    
    %     % step 5-2 : do post filtering and compute post filtered spectra
    %     pf = 1.1;
    %
    %     % convert mgc file to float format
    %     mgcbinfile = strcat(mgcdir,'tempbin.mgc');
    %     command = [X2X, ' ', '+af', ' ', mgcfile, ' ', '>', ' ', mgcbinfile];
    %     system(command);
    %
    %     system(['perl', ' ', 'temp.pl', ' ', 'tempbin', ' ', mgcdir,' ',num2str(MGCORDER), ' ', num2str(pf)])
    %
    %     % Step 5-2.1 : Convert MGC back to spectrum
    %     pmgcfile = strcat(mgcdir,'tempbin.p_mgc');
    %     convspfile = strcat(mgcdir,'/',str,'.sp');
    %     command = [MGC2SP, ' ', '-a', ' ', num2str(FREQWARP),' ', '-g',' ', num2str(GAMMA),' ', '-m', ' ', num2str(MGCORDER), ' ', ...
    %         '-l', ' ', num2str(lenfac), ' ', '-o', ' ', num2str(2), ' ', pmgcfile, ' ', '>', ' ', convspfile ];
    %
    %     system( command);
    %
    %
    %     fid1 = fopen(strcat(mgcdir,'/',str,'.sp'),'r','ieee-le');
    %     pf_spec = fread(fid1, [nfftby2 T],'float');
    %     fclose(fid1);
    %
    %     % step 5-3 : synthesis with post filtered spectra
    %     [sy_stght,prmS] = exstraightsynth(ym_f0,pf_spec,seali_ap,fs,prm);
    %     sy_stght=sy_stght./(1.01*max(abs(sy_stght)));
    % %     soundsc(diff(sy_stght),fs)
    %     wavwrite(sy_stght,fs,strcat(spssynthdir,str,'_mlpg_pf.wav'));
    
end

testerr
