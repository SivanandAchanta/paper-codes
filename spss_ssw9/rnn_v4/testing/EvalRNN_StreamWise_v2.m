% Purpose : Subjective and Objective Evaluation of DNN (Test DNN)

% A Seperate Networks is trained for MGC, F0-VUV and BAP

% Synthesize test files for Listening tests and compute MCD, F0 RMSE and VUV Error

clear all; close all; clc;

%% Set paths
addpath('/media/newHDD/hts_voices/STRAIGHTV40'); % STRAIGHT path
sptk_cmd % load sptk commands

testwavpath = '../../../../Blizzard15/voices/Telugu/data/test/acoustic_feats/wav/';
testfiles = dir(testwavpath);

resdir = '../../results_listeningtests_2/';
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

outvec  = [1:235];
invec   = [101:347];
mvnivec = [303:339 343:347];

intmvnf     = 1;
intmmnf     = 0;
outtmvnf    = 1;
outtmmnf    = 0;

% load mvn of input
load(strcat(datadir,'mvni.mat'))

% load maxmin of output
load(strcat(datadir,'mvno.mat'))
load(strcat(datadir,'mvno_voiced.mat')) % for voiced f0 variances
mn_bmlpg_flag = 0;
load(strcat(datadir,'maxmino.mat'))

% GV variables
gv_flag = 1;
if gv_flag
    load(strcat(datadir,'uv_msdv.mat'));
    mu_gv = uv_m(outvec);
    p_gv = 1./uv_sdv(outvec);
    mu_gv_sdv = sqrt(mu_gv);
end

read_testdata
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% What Streams to Predict ???

stabs_flag = 0; % STRAIGHT AbS Flag
mgcabs_flag = 1; % MGC AbS Flag
mgcspss_flag = 1; % MGC SPSS Flag
f0spss_flag = 1; % F0_VUV SPSS Flag
bapspss_flag = 1; % BAP SPSS Flag
fullspss_flag = 1; % FULL SPSS Flag (MGC + BAP + F0_VUV)

mgcp_flag = 1;
f0vuvp_flag = 1;
bapp_flag = 1;
arch_name = 'rnn_';

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% MGC-STREAM load weights
if mgcp_flag
    outvec_mgc = 1:150;
    dout = length(outvec_mgc);
    
    arch_name_mgc = '247L500R150L_rnn_di_l20_lr0.003_mf0.3_gc1_si0.01_ri0.1_so0.01_5';
    load(strcat(wtdir,'W_',arch_name_mgc,'.mat'))
    Wi_mgc = Wi; Wfr_mgc = Wfr; U_mgc = U;
    bh_mgc = bh; bo_mgc = bo;
    
    arch_name1 = '500R';
    ol_type = 'L';
    arch_name1 = strcat(arch_name1,num2str(dout),ol_type);
    arch_init
    nl_mgc = nl; f_mgc = f; nh_mgc = nh; wtl_mgc = wtl; btl_mgc = btl; nlv_mgc = nlv;
    clear nl f nh wtl btl nlv
    
    testerr_mgc = 0;
    arch_name = strcat(arch_name,arch_name1);
    
end

%% F0-VUV-STREAM load weights
if f0vuvp_flag
    outvec_f0 = 232:235;
    dout = length(outvec_f0);
    
    arch_name_f0 = '247L250R4L_rnn_di_l20_lr0.01_mf0.3_gc1_si0.04_ri0.1_so0.25_rnn_mvni_mvno_39';
    load(strcat(wtdir,'W_',arch_name_f0,'.mat'))
    Wi_f0 = Wi; Wfr_f0 = Wfr; U_f0 = U;
    bh_f0 = bh; bo_f0 = bo;
    
    arch_name1 = '250R';
    ol_type = 'L';
    arch_name1 = strcat(arch_name1,num2str(dout),ol_type);
    arch_init
    nl_f0 = nl; f_f0 = f; nh_f0 = nh; wtl_f0 = wtl; btl_f0 = btl; nlv_f0 = nlv;
    clear nl f nh wtl btl nlv
    
    % det_vuvth
    vuvth_final = 0.54; % need to determine the optimal threshold from the training data
    
    testerr_f0vuv = 0;
    arch_name = strcat(arch_name,arch_name1);
    
end

%% BAP-STREAM load weights
if bapp_flag
    outvec_bap = 151:228;
    dout = length(outvec_bap);
    
    arch_name_bap = '247L250R78L_rnn_di_l20_lr0.0001_mf0.3_gc1_si0.01_ri0.1_so0.01_rnn_mvni_mvno_50';
    load(strcat(wtdir,'W_',arch_name_bap,'.mat'))
    Wi_bap = Wi; Wfr_bap = Wfr; U_bap = U;
    bh_bap = bh; bo_bap = bo;
    
    arch_name1 = '250R';
    ol_type = 'L';
    arch_name1 = strcat(arch_name1,num2str(dout),ol_type);
    arch_init
    nl_bap = nl; f_bap = f; nh_bap = nh; wtl_bap = wtl; btl_bap = btl; nlv_bap = nlv;
    clear nl f nh wtl btl nlv
    
    testerr_bap = 0;
    arch_name = strcat(arch_name,arch_name1);
    
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% set synthesis directories
abssynthdir = strcat(resdir,'synth_',arch_name,'/abs/');
spssynthdir = strcat(resdir,'synth_',arch_name,'mfb',num2str(mgcp_flag),num2str(f0vuvp_flag),num2str(bapp_flag),'/sps/');
mgcdir = 'temp_mgc/';

% make direcotries
mkdir(abssynthdir);
mkdir(spssynthdir);
mkdir(mgcdir);

%% NN param initialization
a_tanh = 1.7159;
b_tanh = 2/3;
bby2a = (b_tanh/(2*a_tanh));

varfloor = 0;
sumrmse_f0 = 0;
sumerr_vuv = 0;
sum_mmcd = 0;
objscores = zeros(test_numbats,10);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
test_numbats = 30;

% compute error on test set
for li = 1:test_numbats
    
    %% Step 1 : Predict parameters form the network
    X = []; mt = [];
    sl = test_clv(li+1) - test_clv(li);
    X = double(test_batchdata(test_clv(li):test_clv(li+1)-1,:));
    Y = double(test_batchtargets(test_clv(li):test_clv(li+1)-1,:));
    
    if mgcp_flag
        % fp
        [hcm,ym_mgc] = fp_rnn(X,Wi_mgc,Wfr_mgc,U_mgc,bh_mgc,bo_mgc,f_mgc,nl_mgc,a_tanh,b_tanh,sl);        
        me = mean(sum((Y(:,outvec_mgc) - ym_mgc).^2,2)./(sum(Y(:,outvec_mgc).^2,2)));
        testerr_mgc = testerr_mgc + me/(test_numbats);
    end
    
    if f0vuvp_flag
        % fp
        [hcm,ym_f0vuv] = fp_rnn(X,Wi_f0,Wfr_f0,U_f0,bh_f0,bo_f0,f_f0,nl_f0,a_tanh,b_tanh,sl);        
        me = mean(sum((Y(:,outvec_f0) - ym_f0vuv).^2,2)./(sum(Y(:,outvec_f0).^2,2)));       
        testerr_f0vuv = testerr_f0vuv + me/(test_numbats);
    end
    
    if bapp_flag
        % fp
        [hcm,ym_bap] = fp_rnn(X,Wi_bap,Wfr_bap,U_bap,bh_bap,bo_bap,f_bap,nl_bap,a_tanh,b_tanh,sl);        
        me = mean(sum((Y(:,outvec_bap) - ym_bap).^2,2)./(sum(Y(:,outvec_bap).^2,2)));
        testerr_bap = testerr_bap + me/(test_numbats);
    end
    
    % read test - wav
    [str,tok] = strtok(testfiles(li+2).name,'.');
    str
    
    if stabs_flag
        [y,fs1] = wavread(strcat(testwavpath,testfiles(li+2).name));
        y = resample(y,fs,fs1);
        
        % Step 2 : STRAIGHT ANALYSIS
        [f01, ap] = exstraightsource(y,fs,prm);
        [st_sgram] = exstraightspec(y, f01, fs, prm);
        % Synthesize AbS
        [sy_stght,prmS] = exstraightsynth(f01,st_sgram,ap,fs,prm);
        sy_stght=sy_stght./(1.01*max(abs(sy_stght)));
        %     soundsc(sy_stght,fs)
        wavwrite(sy_stght,fs,strcat(abssynthdir,str,'_abs','.wav'));
    end
    
    
    mt = test_batchtargets_orig(test_clv(li):test_clv(li+1)-1,:);
    [gmgc,gsp,gf0,gvuv,gbap,gap] = domgc_AbS(mt,mgcdim,bapdim,X2X,MGC2SP,FREQWARP,GAMMA,MGCORDER,lenfac,nfftby2);
    if mgcabs_flag; synth_st(gf0',gsp,gap,fs,prm,abssynthdir,str,'_mgcabs.wav'); end;
    
    
    % Step 3 : Synthesize using predicted parameters
    % denormalization
    
    if mgcp_flag
        
        pmgc_deltas = denormalize(ym_mgc,mo,vo,maxv,minv,outvec_mgc,outtmvnf,outtmmnf);
        
        if gv_flag
            [mmcd,mmcd_mlpg,psp,psp_mlpg,psp_mlpg_gv,mmcd_mlpg_gv] = mgc_distortion(pmgc_deltas,mgcdim,gmgc,vo,X2X,MGC2SP,FREQWARP,GAMMA,MGCORDER,lenfac,nfftby2,gv_flag,mu_gv,p_gv);
        else
            [mmcd,mmcd_mlpg,psp,psp_mlpg] = mgc_distortion(pmgc_deltas,mgcdim,gmgc,vo,X2X,MGC2SP,FREQWARP,GAMMA,MGCORDER,lenfac,nfftby2,gv_flag);
        end
        
        if mgcspss_flag
            synth_st(gf0',psp,gap,fs,prm,spssynthdir,str,'_mgc.wav');
            synth_st(gf0',psp_mlpg,gap,fs,prm,spssynthdir,str,'_mgcmlpg.wav');
            if gv_flag; synth_st(gf0',psp_mlpg_gv,gap,fs,prm,spssynthdir,str,'_mgcmlpggv.wav'); end;
        end
        
    end
    
    if f0vuvp_flag
        
        pf0vuv_deltas = denormalize(ym_f0vuv,mo,vo,maxv,minv,outvec_f0,outtmvnf,outtmmnf);
        [f0rmse,f0rmse_mlpg,pf0_gvuv,pf0_gvuv_mlpg,vuverr,pvuv_final,f0rmse_pvuv,f0rmse_pvuv_mlpg,pf0_pvuv,pf0_pvuv_mlpg] = ...
            f0_RMSE(pf0vuv_deltas,gf0,gvuv,LOWERF0,UPPERF0,std_v,vuvth_final);
        if f0spss_flag
            synth_st(pf0_gvuv',gsp,gap,fs,prm,spssynthdir,str,'_f0gvuv.wav');
            synth_st(pf0_pvuv',gsp,gap,fs,prm,spssynthdir,str,'_f0pvuv.wav');
            synth_st(pf0_gvuv_mlpg',gsp,gap,fs,prm,spssynthdir,str,'_f0gvuvmlpg.wav');
            synth_st(pf0_pvuv_mlpg',gsp,gap,fs,prm,spssynthdir,str,'_f0pvuvmlpg.wav');
        end
        
    end
    
    
    if bapp_flag
        
        pbap_deltas = denormalize(ym_bap,mo,vo,maxv,minv,outvec_bap,outtmvnf,outtmmnf);
        [bapd,bapd_mlpg,pap,pap_mlpg] = bap_compute_distortion(pbap_deltas,gbap,bapdim,nfftby2,vo,outvec_bap);
        
        if bapspss_flag
            synth_st(gf0',gsp,pap,fs,prm,spssynthdir,str,'_bap.wav');
            synth_st(gf0',gsp,pap_mlpg,fs,prm,spssynthdir,str,'_bapmlpg.wav');
        end
        
    end
    
    % synthesis with full predicted parameters
    if fullspss_flag
        synth_st(pf0_pvuv',psp,pap,fs,prm,spssynthdir,str,'_mgcf0bap.wav');
        synth_st(pf0_pvuv_mlpg',psp_mlpg,pap_mlpg,fs,prm,spssynthdir,str,'_mgcmlpgf0mlpgbapmlpg.wav');
        if gv_flag; synth_st(pf0_pvuv_mlpg',psp_mlpg_gv,pap_mlpg,fs,prm,spssynthdir,str,'_mgcmlpggvf0mlpgbapmlpg.wav'); end;
    end
    
    % store the objective scores
    if f0vuvp_flag
        objscores(li,1) = f0rmse;
        objscores(li,2) = f0rmse_mlpg;
        objscores(li,3) = vuverr;
        objscores(li,4) = f0rmse_pvuv;
        objscores(li,5) = f0rmse_pvuv_mlpg;
    end
    
    if mgcp_flag
        objscores(li,6) = mmcd;
        objscores(li,7) = mmcd_mlpg;
    
        if gv_flag
           objscores(li,8) = mmcd_mlpg_gv;
        end
    end

    if bapp_flag
        objscores(li,9) = bapd;
        objscores(li,10) = bapd_mlpg;
    end
    
end

% avgrmse_f0 = sumrmse_f0/test_numbats;
% avgerr_vuv = sumerr_vuv/test_numbats;
% avg_mmcd = sum_mmcd/test_numbats;

if mgcp_flag;
    testerr_mgc
end;

if f0vuvp_flag
    testerr_f0vuv
end

if bapp_flag
    testerr_bap
end

fid = fopen(strcat(resdir,'/objscores','_',arch_name,'.txt'),'w');
for i = 1:test_numbats
    [str,tok] = strtok(testfiles(i+2).name,'.');
    str
    fprintf(fid,'%s %f %f %f %f %f %f %f %f %f %f \n',str,objscores(i,:));
end
fprintf(fid,'%s %f %f %f %f %f %f %f %f %f %f \n','mean',mean(objscores(1:li,:)));
fclose(fid);


command = ['rm', ' ', '-rf', ' ' , 'temp*'];
system(command)
