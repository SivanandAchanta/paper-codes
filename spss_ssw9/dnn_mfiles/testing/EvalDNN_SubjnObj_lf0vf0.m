% Purpose : Subjective and Objective Evaluation of DNN (Test DNN)

% Synthesize test files for Listening tests and compute MCD, F0 RMSE and VUV Error

clear all; close all; clc;

%% Set paths
addpath('/media/newHDD/hts_voices/STRAIGHTV40'); % STRAIGHT path
sptk_cmd % load sptk commands

testwavpath = '../../../../Blizzard15/voices/Telugu/data/test/acoustic_feats/wav/';
testfiles = dir(testwavpath);

resdir = '../../results/';
datadir = '../../matfiles/';
wtdir = '../../wt/';

%% synthesis params
%% STRAIGHT Params
fs = 48000;
frshift_s = round(0.005*fs) ; % frame shift in samples
UPPERF0 = 560;
LOWERF0 = 60;

frshiftms = round((frshift_s/fs)*1000); % frameshift in ms
prm.F0frameUpdateInterval = frshiftms;
prm.spectralUpdateInterval = frshiftms;
prm.F0searchUpperBound = UPPERF0;
prm.F0searchLowerBound = LOWERF0;

%% Speech Analysis conditions
SAMPFREQ    = fs;   % Sampling frequency (48kHz)
FRAMESHIFT  = round(0.005*SAMPFREQ); % Frame shift in point (240 = 48000 * 0.005)
FREQWARP    = 0.55;   % frequency warping factor
GAMMA       = 0;      % pole/zero weight for mel-generalized cepstral (MGC) analysis
MGCORDER    = 49;   % order of MGC analysis
LNGAIN      = 1;     % use logarithmic gain rather than linear gain
mgcdim      = MGCORDER+1;
bapdim      = 26;
lenfac = 2048;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% read test data
nfft = 2048;
nfftby2 = round(nfft/2 + 1);

outvec = [229:235];
invec = [1:347];
mvnivec = [303:339 343:347];
read_testdata
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% load weights
arch_name = '347L500R500R7L_l25e-05_rho0.98_eps0.0001_mf0_bs1000_yi_lf0vf0_80';
load(strcat(wtdir,'W_',arch_name,'.mat'))

nl = [din 500 500 dout];
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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% NN param initialization
a_tanh = 1.7159;
b_tanh = 2/3;
bby2a = (b_tanh/(2*a_tanh));

testerr = 0;
varfloor = 0;
sumrmse_f0 = 0;
sumerr_vuv = 0;
sum_mmcd = 0;
objscores = zeros(test_numbats,6);
vuvth = 0.3;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
test_numbats = 20;

% compute error on test set
for li = 1:test_numbats
    
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
    
    % read test - wav
    [str,tok] = strtok(testfiles(li+2).name,'.');
    str
    %     [y,fs1] = wavread(strcat(testwavpath,testfiles(li+2).name));
    %     y = resample(y,fs,fs1);
    
    %     % Step 2 : STRAIGHT ANALYSIS
    %     [f0raw, ap] = exstraightsource(y,fs,prm);
    %     [st_sgram] = exstraightspec(y, f0raw, fs, prm);
    %     % Synthesize AbS
    %     [sy_stght,prmS] = exstraightsynth(f0raw,st_sgram,ap,fs,prm);
    %     sy_stght=sy_stght./(1.01*max(abs(sy_stght)));
    %     %     soundsc(sy_stght,fs)
    %     wavwrite(sy_stght,fs,strcat(abssynthdir,str,'_abs','.wav'));
    
    
    % do an AbS
    mt = test_batchtargets_orig(test_clv(li):test_clv(li+1)-1,:);
    mgc_gt = mt(:,1:MGCORDER+1);
    [N,dim] = size(mgc_gt);
    dlmwrite('temp.mgc',mgc_gt,'delimiter', ' ');
    
    % convert MGC into spectrum
    command = [X2X, ' ', '+af', ' ', 'temp.mgc', ' ', '|' ...
        MGC2SP, ' ', '-a', ' ', num2str(FREQWARP),' ', '-g',' ', num2str(GAMMA),' ', '-m', ' ', num2str(MGCORDER), ' ', ...
        '-l', ' ', num2str(lenfac), ' ', '-o', ' ', num2str(2), ' ', '>', ' ', 'temp.sp' ];
    
    system(command);
    
    fid1 = fopen('temp.sp','r','ieee-le');
    M1 = fread(fid1, [nfftby2 N],'float');
    fclose(fid1);
    
    % Convert lf0 to f0
    lf0 = mt(:,3*(mgcdim+bapdim)+1);
    f01 = exp(lf0);
    f01(f01<1) = 0;
    
    % Convert bap to ap
    bap = mt(:,3*(mgcdim)+1:3*(mgcdim)+bapdim);
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
    
%     [sy_stght,prmS] = exstraightsynth(f01',M1,ap1,fs,prm);
%     sy_stght=sy_stght./(1.01*max(abs(sy_stght)));
%     %     soundsc(sy_stght,fs)
%     wavwrite(sy_stght,fs,strcat(abssynthdir,str,'_mgcfullabs','.wav'));
    
    
    % Step 3 : Synthesize using predicted f0
    % denormalization
    if outtmvnf
        I1 = bsxfun(@times,ym,maxv(:,outvec));
        I1 = bsxfun(@plus,I1,minv(:,outvec));
        ym = I1;
    end
    
    % Compute VUV (% error)
    ym_vuv_ec = ym(:,4); % for error computation
    vuvraw = (f01 > 0);
    ym_vuv_ec_final = zeros(size(ym_vuv_ec));
    ym_vuv_ec_final(ym_vuv_ec > vuvth) = 1;
    
    len_gf0 = length(f01);
    len_pf0 = length(ym_vuv_ec);
    
    if len_gf0 > len_pf0
        vuvraw = vuvraw(1:len_pf0);
    else
        ym_vuv_ec_final = ym_vuv_ec_final(1:len_gf0);
    end
    
    err_vuv = ((sum(abs(ym_vuv_ec_final - vuvraw))/length(vuvraw))*100);
    sumerr_vuv = sumerr_vuv + err_vuv;
    
    % Compute F0 RMSE from log F0
    ym_lf0_ec = ym(:,1); % for error computation
    ym_f0_ec = exp(ym_lf0_ec);
    ym_f0_ec(ym_f0_ec<60) = 0;
    
    len_gf0 = length(f01);
    len_pf0 = length(ym_f0_ec);
    
    if len_gf0 > len_pf0
        f01 = f01(1:len_pf0);
    else
        ym_f0_ec = ym_f0_ec(1:len_gf0);
    end
    
    
    ym_f0_ec = ym_f0_ec.*ym_vuv_ec_final;
    rmse_f0_v1 = sqrt(mean((f01 - ym_f0_ec).^2));
    sumrmse_f0 = sumrmse_f0 + rmse_f0_v1;
    
    f0_pred_v1 = ym_f0_ec';
    % synthesis without MLPG
    [sy_stght,prmS] = exstraightsynth(f0_pred_v1,M1,ap1,fs,prm);
    sy_stght=sy_stght./(1.01*max(abs(sy_stght)));
    %soundsc(diff(sy_stght),fs)
    wavwrite(sy_stght,fs,strcat(spssynthdir,str,'_f0only_v1.wav'));
    
    % Compute F0 RMSE from F0
    ym_f0_ec = ym(:,5); % for error computation
    ym_f0_ec(ym_f0_ec<60) = 0;
    
    len_gf0 = length(f01);
    len_pf0 = length(ym_f0_ec);
    
    if len_gf0 > len_pf0
        f01 = f01(1:len_pf0);
    else
        ym_f0_ec = ym_f0_ec(1:len_gf0);
    end
    
    ym_f0_ec = ym_f0_ec.*ym_vuv_ec_final;
    rmse_f0_v2 = sqrt(mean((f01 - ym_f0_ec).^2));
    sumrmse_f0 = sumrmse_f0 + rmse_f0_v2;
    
    f0_pred_v2 = ym_f0_ec';
    % synthesis without MLPG
    [sy_stght,prmS] = exstraightsynth(f0_pred_v2,M1,ap1,fs,prm);
    sy_stght=sy_stght./(1.01*max(abs(sy_stght)));
    %soundsc(diff(sy_stght),fs)
    wavwrite(sy_stght,fs,strcat(spssynthdir,str,'_f0only_v2.wav'));
    
    
    %         % Step 4: Synthesis with MLPG
    %         [T,d3] = size(ym);
    %
    %         % Step 4-1: make W
    %         [W_hts] = deltas_HTS(1,T+2); % 3N x N matrix
    %         S = vo.^2;
    %
    %         % Step 4-2: do MLPG
    %         M_mlpg = zeros(T+2,MGCORDER+1);
    %
    %         for i = 1:(MGCORDER+1)
    %             i
    %             M_feat = [ym(:,i) ym(:,i+(MGCORDER+1)) ym(:,i+2*(MGCORDER+1))];
    %             M_feat = M_feat';
    %             M_feat = M_feat(:); % 3N x 1 vector
    %
    %             % make sigma 3N x 3N matrix
    %             S_feat = [S(:,i) S(:,i+(MGCORDER+1)) S(:,i+2*(MGCORDER+1))];
    %             S_feat = S_feat';
    %             S_feat = S_feat(:); % 3 x 1 vector
    %             S_feat = repmat(S_feat,T,1); % 3N x 1 vector
    %
    %             S_feat(S_feat == 0) = 1e-5; % substitute zero variance with small number (to avoid NaNs)
    %             S_feat = 1./S_feat; % inverse of the variances
    %             %         S_feat = diag(S_feat); % 3N x 3N matrix
    %
    %             %         WS = W_hts'*S_feat;
    %             WTS = bsxfun(@times,W_hts',S_feat');
    %             Rq = WTS*W_hts; % N x N matrix
    %             rq = WTS*M_feat; % N x 1 vector
    %
    %             M_mlpg(:,i) = pinv(Rq)*rq; % Nx 1 vector
    %         end
    %
    %         if sum(sum(isnan(M_mlpg)))
    %             disp('there are nan elements in M_mlpg');
    %             pause
    %         end
    %
    %         ym_mgc = M_mlpg(2:end-1,1:MGCORDER+1);
    %         mmcd_mlpg = 6.14185*mean(sqrt(sum((mt(:,2:end) - ym_mgc(:,2:end)).^2,2))); % no power coefficient
    %         [N,dim] = size(ym_mgc);
    %         dlmwrite(strcat(mgcdir,'temp.mgc'),ym_mgc,'delimiter', ' ');
    %         mgcfile = strcat(mgcdir,'temp.mgc');
    %
    %         % convert MGC into spectrum
    %         command = [X2X, ' ', '+af', ' ', mgcfile, ' ', '|' ...
    %             MGC2SP, ' ', '-a', ' ', num2str(FREQWARP),' ', '-g',' ', num2str(GAMMA),' ', '-m', ' ', num2str(MGCORDER), ' ', ...
    %             '-l', ' ', num2str(lenfac), ' ', '-o', ' ', num2str(2), ' ', '>', ' ', 'temp.sp' ];
    %
    %         system(command);
    %
    %         fid1 = fopen('temp.sp','r','ieee-le');
    %         M1 = fread(fid1, [nfftby2 N],'float');
    %         fclose(fid1);
    %
    %         [sy_stght,prmS] = exstraightsynth(f01',M1,ap1,fs,prm);
    %         sy_stght=sy_stght./(1.01*max(abs(sy_stght)));
    %         %     soundsc(diff(sy_stght),fs)
    %         wavwrite(sy_stght,fs,strcat(spssynthdir,str,'_speconlymlpg.wav'));
    
    %     % get VS mgc
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
    %     [sy_stght,prmS] = exstraightsynth(ym_f0,M1,seali_ap,fs,prm);
    %     sy_stght=sy_stght./(1.01*max(abs(sy_stght)));
    %     %     soundsc(diff(sy_stght),fs)
    %     wavwrite(sy_stght,fs,strcat(spssynthdir,str,'_specnapf0_specmlpg_vs.wav'));
    %
    %
    %     % Compute MCD (SYNTHESIZER VOICE QUALITY OF NEW LANGUAGES CALIBRATED  WITH MEAN MEL CEPSTRAL DISTORTION - Kominek et.al SLTU 2008)
    %     mmcd_mlpg_vs_1 = 6.14185*mean(sqrt(sum((mt(:,2:end) - ym_mgc(:,2:end)).^2,2))); % no power coefficient
    %     mmcd_mlpg_vs_2 = 6.14185*mean(sqrt(sum((mt - ym_mgc).^2,2)));
    %     sum_mmcd = sum_mmcd + mmcd_mlpg_vs_2;
    
    %     % Compute F0 RMSE
    %     ym_f0_ec = ym(:,end-1); % for error computation
    %
    %     len_gf0 = length(f0raw);
    %     len_pf0 = length(ym_f0_ec);
    %
    %     if len_gf0 > len_pf0
    %         f0raw = f0raw(1:len_pf0);
    %     else
    %         ym_f0_ec = ym_f0_ec(1:len_gf0);
    %     end
    %
    %     f0raw = f0raw';
    %     ym_f0_ec = ym_f0_ec.*(f0raw > 0);
    %     rmse_f0 = sqrt(mean((f0raw - ym_f0_ec).^2));
    %     sumrmse_f0 = sumrmse_f0 + rmse_f0;
    
    %     % Compute VUV (% error)
    %     ym_vuv_ec = ym(:,end); % for error computation
    %     vuvraw = (f0raw > 0);
    %     ym_vuv_ec_final = zeros(size(ym_vuv_ec));
    %     ym_vuv_ec_final(ym_vuv_ec > 0.4) = 1;
    %
    %     len_gf0 = length(f0raw);
    %     len_pf0 = length(ym_vuv_ec);
    %
    %     if len_gf0 > len_pf0
    %         vuvraw = vuvraw(1:len_pf0);
    %     else
    %         ym_vuv_ec_final = ym_vuv_ec_final(1:len_gf0);
    %     end
    %
    %     err_vuv = ((sum(abs(ym_vuv_ec_final - vuvraw))/length(vuvraw))*100);
    %     sumerr_vuv = sumerr_vuv + err_vuv;
    
    objscores(li,1) = rmse_f0_v1;
    objscores(li,2) = err_vuv;
    %     objscores(li,3) = mmcd;
    objscores(li,4) = rmse_f0_v2;
    %     objscores(li,5) = mmcd_mlpg_vs_1;
    %     objscores(li,6) = mmcd_mlpg_vs_2;
    
end

% avgrmse_f0 = sumrmse_f0/test_numbats;
% avgerr_vuv = sumerr_vuv/test_numbats;
% avg_mmcd = sum_mmcd/test_numbats;

fid = fopen(strcat('../../results/objscores','_',arch_name,'_vuvth',num2str(vuvth),'.txt'),'w');
for i = 1:li-1
    [str,tok] = strtok(testfiles(i+2).name,'.');
    str
    fprintf(fid,'%s %f %f %f %f %f %f \n',str,objscores(i,:));
end
fprintf(fid,'%s %f %f %f %f %f %f \n','mean',mean(objscores(1:li-1,:)));
fclose(fid);

testerr
command = ['rm', ' ', 'temp*'];
system(command)