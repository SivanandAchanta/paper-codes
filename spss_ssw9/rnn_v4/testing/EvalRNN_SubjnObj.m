% Purpose : Subjective and Objective Evaluation of RNN (Test RNN)

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
fs          = 48000;
frshift_s   = round(0.005*fs) ; % frame shift in samples
UPPERF0     = 560;
LOWERF0     = 60;

frshiftms                   = round((frshift_s/fs)*1000); % frameshift in ms
prm.F0frameUpdateInterval   = frshiftms;
prm.spectralUpdateInterval  = frshiftms;
prm.F0searchUpperBound      = UPPERF0;
prm.F0searchLowerBound      = LOWERF0;

%% Speech Analysis conditions
SAMPFREQ    = fs;   % Sampling frequency (48kHz)
FRAMESHIFT  = round(0.005*SAMPFREQ); % Frame shift in point (240 = 48000 * 0.005)
FREQWARP    = 0.55;   % frequency warping factor
GAMMA       = 0;      % pole/zero weight for mel-generalized cepstral (MGC) analysis
MGCORDER    = 49;   % order of MGC analysis
LNGAIN      = 1;     % use logarithmic gain rather than linear gain
mgcdim      = MGCORDER+1;
bapdim      = 26;
lenfac      = 2048;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% read test data
nfft    = 2048;
nfftby2 = round(nfft/2 + 1);

outvec  = [232:235];
invec   = [101:347];
mvnivec = [303:339 343:347];

intmvnf     = 1;
intmmnf     = 0;
outtmvnf    = 1;
outtmmnf    = 0;

mgc_flag = 0;
f0_flag = 1;
bap_flag = 0;

% load mvn of input
load(strcat(datadir,'mvni.mat'))

% load maxmin of output
load(strcat(datadir,'mvno.mat'))
load(strcat(datadir,'maxmino.mat'))

% GV variables
load(strcat(datadir,'uv_msdv.mat'));
mu_gv = uv_m(outvec);
p_gv = 1./uv_sdv(outvec);
mu_gv_sdv = sqrt(mu_gv);

read_testdata
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% load weights
arch_name = '247L500R4L_rnn_di_l20_lr0.003_mf0.3_gc1_si0.01_ri0.1_so0.01_rnn_mvni_mvno_21';
load(strcat(wtdir,'W_',arch_name,'.mat'))

arch_name1 = '500R';
ol_type = 'L';
arch_name1 = strcat(arch_name1,num2str(dout),ol_type);
arch_init

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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
test_numbats = 20;

% compute error on test set
for li = 1:test_numbats
    
    %% Step 1 : Predict parameters form the network
    X = []; mt = [];
    sl = test_clv(li+1) - test_clv(li);
    X = double(test_batchdata(test_clv(li):test_clv(li+1)-1,:));
    Y = double(test_batchtargets(test_clv(li):test_clv(li+1)-1,:));
    
    [hcm,ym] = fp_rnn(X,Wi,Wfr,U,bh,bo,f,nl,a_tanh,b_tanh,sl);
    
    me = mean(sum((Y - ym).^2,2)./(sum(Y.^2,2)));
    
    
    testerr = testerr + me/test_numbats;
    
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
    
    [sy_stght,prmS] = exstraightsynth(f01',M1,ap1,fs,prm);
    sy_stght=sy_stght./(1.01*max(abs(sy_stght)));
    %     soundsc(sy_stght,fs)
    wavwrite(sy_stght,fs,strcat(abssynthdir,str,'_mgcfullabs','.wav'));
    
    
    % denormalization
    if outtmvnf
        I1 = bsxfun(@times,ym,vo(:,outvec));
        I1 = bsxfun(@plus,I1,mo(:,outvec));
        ym = I1;
    end
    
    if outtmmnf
        I1 = bsxfun(@times,ym,maxv(:,outvec));
        I1 = bsxfun(@plus,I1,minv(:,outvec));
        ym = I1;
    end
    
    % Step 3 : Synthesize using predicted spectral without MLPG
    if mgc_flag
        ym_mgc = ym(:,1:MGCORDER+1);
        mmcd = 6.14185*mean(sqrt(sum((mt(:,2:mgcdim) - ym_mgc(:,2:end)).^2,2))); % no power coefficient
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
        [sy_stght,prmS] = exstraightsynth(f01',M1,ap1,fs,prm);
        sy_stght=sy_stght./(1.01*max(abs(sy_stght)));
        %soundsc(diff(sy_stght),fs)
        wavwrite(sy_stght,fs,strcat(spssynthdir,str,'_speconly_nomlpg.wav'));
        
        
        % Step 4: Synthesis with MLPG
        
        S = vo.^2;
        [ym_mgc_mlpg,ym_mgc_mlpg_gv] = mlpg_gv_sd(S,ym(:,1:3*(MGCORDER+1)),mu_gv,p_gv);
        ym_mgc_mlpg = ym_mgc_mlpg(2:end-1,1:MGCORDER+1);
        ym_mgc_mlpg_gv = ym_mgc_mlpg_gv(2:end-1,1:MGCORDER+1);
        
        mmcd_mlpg = 6.14185*mean(sqrt(sum((mt(:,2:mgcdim) - ym_mgc_mlpg(:,2:end)).^2,2))); % no power coefficient
        mmcd_mlpg_gv = 6.14185*mean(sqrt(sum((mt(:,2:mgcdim) - ym_mgc_mlpg_gv(:,2:end)).^2,2))); % no power coefficient
        
        % Step 4-2: do MLPG
        
        M1 = mgc2sp(ym_mgc_mlpg,X2X,MGC2SP,FREQWARP,GAMMA,MGCORDER,lenfac,nfftby2);
        synth_st(f01',M1,ap1,fs,prm,spssynthdir,str,'_speconly_mlpg.wav');
        
        M1 = mgc2sp(ym_mgc_mlpg_gv,X2X,MGC2SP,FREQWARP,GAMMA,MGCORDER,lenfac,nfftby2);
        synth_st(f01',M1,ap1,fs,prm,spssynthdir,str,'_speconly_mlpg_gv.wav');
        
    end
    
    if f0_flag
        % Compute F0 RMSE
        ym_f0_ec = ym(:,2); % for error computation
        
        len_gf0 = length(f01);
        len_pf0 = length(ym_f0_ec);
        
        if len_gf0 > len_pf0
            f01 = f01(1:len_pf0);
        else
            ym_f0_ec = ym_f0_ec(1:len_gf0);
        end
        
        %         f01 = f01';
        ym_f0_ec(ym_f0_ec < LOWERF0) = LOWERF0;
        ym_f0_ec(ym_f0_ec > UPPERF0) = UPPERF0;
        ym_f0_ec = ym_f0_ec.*(f01 > 0);
        
        rmse_f0 = sqrt(mean((f01 - ym_f0_ec).^2));
        %         sumrmse_f0 = sumrmse_f0 + rmse_f0;
        
        synth_st(ym_f0_ec',M1,ap1,fs,prm,spssynthdir,str,'_f0only_nomlpg.wav');
        
        S = (vo(:,end-2:end)).^2;
        [ym_f0_mlpg] = mlpg(S,ym(:,end-2:end));
        ym_f0_mlpg = ym_f0_mlpg(2:end-1,1);
        
        if len_gf0 > len_pf0
            f01 = f01(1:len_pf0);
        else
            ym_f0_mlpg = ym_f0_mlpg(1:len_gf0);
        end
        
        %         f01 = f01';
        ym_f0_mlpg(ym_f0_mlpg < LOWERF0) = LOWERF0;
        ym_f0_mlpg(ym_f0_mlpg > UPPERF0) = UPPERF0;
        ym_f0_mlpg = ym_f0_mlpg.*(f01 > 0);
        
        rmse_f0_mlpg = sqrt(mean((f01 - ym_f0_mlpg).^2));
        
        synth_st(ym_f0_mlpg',M1,ap1,fs,prm,spssynthdir,str,'_f0only_mlpg.wav');
        
        
        % Compute VUV (% error)
        ym_vuv_ec = ym(:,1); % for error computation
        vuvraw = (f01 > 0);
        ym_vuv_ec_final = zeros(size(ym_vuv_ec));
        ym_vuv_ec_final(ym_vuv_ec > 0.4) = 1;
        
        len_gf0 = length(f01);
        len_pf0 = length(ym_vuv_ec);
        
        if len_gf0 > len_pf0
            vuvraw = vuvraw(1:len_pf0);
        else
            ym_vuv_ec_final = ym_vuv_ec_final(1:len_gf0);
        end
        
        err_vuv = ((sum(abs(ym_vuv_ec_final - vuvraw))/length(vuvraw))*100);
        sumerr_vuv = sumerr_vuv + err_vuv;
    end
    
    if f0_flag
        objscores(li,1) = rmse_f0;
        objscores(li,2) = err_vuv;
        objscores(li,6) = rmse_f0_mlpg;
    end
    
    if mgc_flag
        objscores(li,3) = mmcd;
        objscores(li,4) = mmcd_mlpg;
        objscores(li,5) = mmcd_mlpg_gv;
    end
    
    
    
end

% avgrmse_f0 = sumrmse_f0/test_numbats;
% avgerr_vuv = sumerr_vuv/test_numbats;
% avg_mmcd = sum_mmcd/test_numbats;

fid = fopen(strcat('../../results/objscores','_',arch_name,'.txt'),'w');
for i = 1:test_numbats
    [str,tok] = strtok(testfiles(i+2).name,'.');
    str
    fprintf(fid,'%s %f %f %f %f %f %f \n',str,objscores(i,:));
end
fprintf(fid,'%s %f %f %f %f %f %f \n','mean',mean(objscores(1:li-1,:)));
fclose(fid);

testerr
