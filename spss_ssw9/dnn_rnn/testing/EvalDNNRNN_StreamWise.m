% Purpose : Subjective and Objective Evaluation of DNN (Test DNN)

% A Seperate Networks is trained for MGC, F0-VUV and BAP

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

outvec  = [1:235];
invec   = [1:347];
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
gv_flag = 0;
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
mgcabs_flag = 0; % MGC AbS Flag
mgcspss_flag = 0; % MGC SPSS Flag
f0spss_flag = 0; % F0_VUV+MGC SPSS Flag
bapspss_flag = 0; % BAP + F0_VUV + MGC SPSS Flag

mgcp_flag = 0;
f0vuvp_flag = 1;
f0vuvp_flag_rnn = 1;
bapp_flag = 0;
arch_name = '';

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
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
    nl_f0_rnn = nl; f_f0_rnn = f; nh_f0_rnn = nh; wtl_f0_rnn = wtl; btl_f0_rnn = btl; nlv_f0_rnn = nlv;
    clear nl f nh wtl btl nlv
    testerr_f0vuv_rnn = 0;
    %     arch_name = strcat(arch_name,arch_name1);
    
end

% Load RNN Weights
rnn_archname = '247L500R150L_rnn_di_l20_lr0.003_mf0.3_gc1_si0.01_ri0.01_so0.01_5';
load(strcat(wtdir,'W_',rnn_archname,'.mat'))
f_rnn = 'RL'
nl_rnn= [247 500 150];
load(strcat(datadir,'mvn_h.mat'));
hmvnf = 1;
lno = 1;

%% MGC-STREAM load weights
if mgcp_flag
    outvec_mgc = 1:150;
    dout = length(outvec_mgc);
    
    arch_name_mgc = '847L1000R500R150L_l25e-05_rho0.98_eps1e-08_mf0_yi_gv0_lambda0.005_mvni_mvno_134';
    load(strcat(wtdir,'W_',arch_name_mgc,'.mat'))
    W_mgc = W; b_mgc = b;
    
    arch_name1 = '1000R500R';
    ol_type = 'L';
    din = din + nl_rnn(lno+1);
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
    
    arch_name_f0 = '847L1000R500R4L_l25e-05_rho0.98_eps1e-08_mf0_yi_gv0_lambda0.005_mvni_mvno_3';
    load(strcat(wtdir,'W_',arch_name_f0,'.mat'))
    W_f0 = W; b_f0 = b;
    
    arch_name1 = '1000R500R';
    ol_type = 'L';
    din = 347 + nl_rnn(lno+1);
    arch_name1 = strcat(arch_name1,num2str(dout),ol_type);
    arch_init
    nl_f0 = nl; f_f0 = f; nh_f0 = nh; wtl_f0 = wtl; btl_f0 = btl; nlv_f0 = nlv;
    clear nl f nh wtl btl nlv
    
    testerr_f0vuv = 0;
    arch_name = strcat(arch_name,arch_name1);
    
end

%% BAP-STREAM load weights
if bapp_flag
    outvec_bap = 151:228;
    dout = length(outvec_bap);
    
    arch_name_bap = '347L500R500R78L_l25e-05alpha0.001_b10.9_b20.999_yi_gv0_lambda0.005_mvni_mvno_68';
    load(strcat(wtdir,'W_',arch_name_bap,'.mat'))
    W_bap = W; b_bap = b;
    
    arch_name1 = '500R500R';
    ol_type = 'L';
    din = 347;
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
objscores = zeros(test_numbats,9);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
test_numbats = 20;

% compute error on test set
for li = 1:test_numbats
    
    %% Step 1 : Predict parameters form the network
    X = []; mt = [];
    sl = test_clv(li+1) - test_clv(li);
    X = test_batchdata(test_clv(li):test_clv(li+1)-1,:);
    
    if mgcp_flag
        X1 = [];
        bs = sl;
        [hcm,ym_rnn] = fp_rnn((X(:,101:end)),Wi,Wfr,U,bh,bo,f_rnn,nl_rnn,a_tanh,b_tanh,bs);
        % mean variance normalization of hcm
        if hmvnf ; hcm = bsxfun(@minus,hcm,mh);         hcm = bsxfun(@rdivide,hcm,vh); end;
        X1 = [X hcm];
        
        % fp
        [ol] = fpav_cpu(X1,W_mgc,b_mgc,nl_mgc,f_mgc,nh_mgc,a_tanh,b_tanh,wtl_mgc,btl_mgc,sl);
        
        % % test set variables
        ottl = [1 sl*(nl_mgc(nlv_mgc+1))];
        ottl = cumsum(ottl);
        
        ym_mgc = reshape(ol(1,ottl(end-1):ottl(end)-1),sl,nl_mgc(end));
        clear ol;
        mt = nml_test_batchtargets(test_clv(li):test_clv(li+1)-1,outvec_mgc);
        
        % compute error
        me = mean(sum((mt - ym_mgc).^2,2)./(sum(mt.^2,2)));
        testerr_mgc = testerr_mgc + me/(test_numbats);
    end
    
    if f0vuvp_flag
        
        X1 = [];
        bs = sl;
        [hcm,ym_rnn] = fp_rnn((X(:,101:end)),Wi,Wfr,U,bh,bo,f_rnn,nl_rnn,a_tanh,b_tanh,bs);
        % mean variance normalization of hcm
        if hmvnf ; hcm = bsxfun(@minus,hcm,mh);         hcm = bsxfun(@rdivide,hcm,vh); end;
        X1 = [X hcm];
        
        % fp
        [ol] = fpav_cpu(X1,W_f0,b_f0,nl_f0,f_f0,nh_f0,a_tanh,b_tanh,wtl_f0,btl_f0,sl);
        
        % % test set variables
        ottl = [1 sl*(nl_f0(nlv_f0+1))];
        ottl = cumsum(ottl);
        
        ym_f0vuv = reshape(ol(1,ottl(end-1):ottl(end)-1),sl,nl_f0(end));
        clear ol;
        mt = nml_test_batchtargets(test_clv(li):test_clv(li+1)-1,outvec_f0);
        
        % compute error
        me = mean(sum((mt - ym_f0vuv).^2,2)./(sum(mt.^2,2)));
        me1 = mean(sum((mt(:,1) - ym_f0vuv(:,1)).^2,2)./(sum(mt(:,1).^2,2)));
        me2 = mean(sum((mt(:,2) - ym_f0vuv(:,2)).^2,2)./(sum(mt(:,2).^2,2)));
        me3 = mean(sum((mt(:,3) - ym_f0vuv(:,3)).^2,2)./(sum(mt(:,3).^2,2)));
        me4 = mean(sum((mt(:,4) - ym_f0vuv(:,4)).^2,2)./(sum(mt(:,4).^2,2)));
        me_vec = [me1 me2 me3 me4]
        me
        
        testerr_f0vuv = testerr_f0vuv + me/(test_numbats);
    end
    
    if f0vuvp_flag
        % fp
        [hcm,ym_f0vuv_rnn] = fp_rnn(X(:,101:end),Wi_f0,Wfr_f0,U_f0,bh_f0,bo_f0,f_f0_rnn,nl_f0_rnn,a_tanh,b_tanh,sl);
        
        me = mean(sum((mt - ym_f0vuv_rnn).^2,2)./(sum(mt.^2,2)));
        me1 = mean(sum((mt(:,1) - ym_f0vuv_rnn(:,1)).^2,2)./(sum(mt(:,1).^2,2)));
        me2 = mean(sum((mt(:,2) - ym_f0vuv_rnn(:,2)).^2,2)./(sum(mt(:,2).^2,2)));
        me3 = mean(sum((mt(:,3) - ym_f0vuv_rnn(:,3)).^2,2)./(sum(mt(:,3).^2,2)));
        me4 = mean(sum((mt(:,4) - ym_f0vuv_rnn(:,4)).^2,2)./(sum(mt(:,4).^2,2)));
        me_vec = [me1 me2 me3 me4]
        me
        testerr_f0vuv_rnn = testerr_f0vuv_rnn + me/(test_numbats);
    end
    
    if bapp_flag
        % fp
        [ol] = fpav_cpu(X,W_bap,b_bap,nl_bap,f_bap,nh_bap,a_tanh,b_tanh,wtl_bap,btl_bap,sl);
        
        % % test set variables
        ottl = [1 sl*(nl_bap(nlv_bap+1))];
        ottl = cumsum(ottl);
        
        ym_bap = reshape(ol(1,ottl(end-1):ottl(end)-1),sl,nl_bap(end));
        clear ol;
        mt = nml_test_batchtargets(test_clv(li):test_clv(li+1)-1,outvec_bap);
        
        % compute error
        me = mean(sum((mt - ym_bap).^2,2)./(sum(mt.^2,2)));
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
    
    
    % do an AbS
    mt = test_batchtargets_orig(test_clv(li):test_clv(li+1)-1,:);
    mgc_gt = mt(:,1:MGCORDER+1);
    M1_gt = mgc2sp(mgc_gt,X2X,MGC2SP,FREQWARP,GAMMA,MGCORDER,lenfac,nfftby2);
    
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
    
    synth_st(f01',M1_gt,ap1,fs,prm,abssynthdir,str,'_mgcabs.wav');
    
    
    % Step 3 : Synthesize using predicted parameters
    % denormalization
    
    if mgcp_flag
        ym = ym_mgc;
        if outtmvnf
            I1 = bsxfun(@times,ym,vo(:,outvec_mgc));
            I1 = bsxfun(@plus,I1,mo(:,outvec_mgc));
            ym = I1;
        end
        
        if outtmmnf
            I1 = bsxfun(@times,ym,maxv(:,outvec_mgc));
            I1 = bsxfun(@plus,I1,minv(:,outvec_mgc));
            ym = I1;
        end
        
        
        mmcd = 6.14185*mean(sqrt(sum((mt(:,2:mgcdim) - ym(:,2:MGCORDER+1)).^2,2))); % no power coefficient
        M1_p = mgc2sp(ym(:,1:MGCORDER+1),X2X,MGC2SP,FREQWARP,GAMMA,MGCORDER,lenfac,nfftby2);
        if mgcspss_flag; synth_st(f01',M1_p,ap1,fs,prm,spssynthdir,str,'_speconly_nomlpg.wav'); end;
        
        
        % Step 4: Synthesis with MLPG
        
        S = vo.^2;
        
        if gv_flag
            
            [ym_mgc_mlpg,ym_mgc_mlpg_gv] = mlpg_gv_sd(S,ym(:,1:3*(MGCORDER+1)),mu_gv,p_gv);
            ym_mgc_mlpg = ym_mgc_mlpg(2:end-1,1:MGCORDER+1);
            ym_mgc_mlpg_gv = ym_mgc_mlpg_gv(2:end-1,1:MGCORDER+1);
            
            M1_p_mlpg = mgc2sp(ym_mgc_mlpg,X2X,MGC2SP,FREQWARP,GAMMA,MGCORDER,lenfac,nfftby2);
            if mgcspss_flag; synth_st(f01',M1_p_mlpg,ap1,fs,prm,spssynthdir,str,'_speconly_mlpg.wav'); end;
            
            M1_p_mlpg_gv = mgc2sp(ym_mgc_mlpg_gv,X2X,MGC2SP,FREQWARP,GAMMA,MGCORDER,lenfac,nfftby2);
            if mgcspss_flag; synth_st(f01',M1_p_mlpg_gv,ap1,fs,prm,spssynthdir,str,'_speconly_mlpg_gv.wav'); end;
            
            mmcd_mlpg = 6.14185*mean(sqrt(sum((mt(:,2:mgcdim) - ym_mgc_mlpg(:,2:end)).^2,2))); % no power coefficient
            mmcd_mlpg_gv = 6.14185*mean(sqrt(sum((mt(:,2:mgcdim) - ym_mgc_mlpg_gv(:,2:end)).^2,2))); % no power coefficient
            
        else
            
            [ym_mgc_mlpg] = mlpg(S,ym(:,1:3*(MGCORDER+1)));
            ym_mgc_mlpg = ym_mgc_mlpg(2:end-1,1:MGCORDER+1);
            
            M1_p_mlpg = mgc2sp(ym_mgc_mlpg,X2X,MGC2SP,FREQWARP,GAMMA,MGCORDER,lenfac,nfftby2);
            if mgcspss_flag; synth_st(f01',M1_p_mlpg,ap1,fs,prm,spssynthdir,str,'_speconly_mlpg.wav'); end;
            
            mmcd_mlpg = 6.14185*mean(sqrt(sum((mt(:,2:mgcdim) - ym_mgc_mlpg(:,2:end)).^2,2))); % no power coefficient
            
        end
        
    end
    if f0vuvp_flag_rnn
        ym = ym_f0vuv_rnn;
        if outtmvnf
            I1 = bsxfun(@times,ym,vo(:,outvec_f0));
            I1 = bsxfun(@plus,I1,mo(:,outvec_f0));
            ym = I1;
        end
        
        if outtmmnf
            I1 = bsxfun(@times,ym,maxv(:,outvec_f0));
            I1 = bsxfun(@plus,I1,minv(:,outvec_f0));
            ym = I1;
        end
        ym_rnn_vuv = ym(:,1);
        
        % Compute F0 RMSE
        ym_f0_ec_rnn = ym(:,2); % for error computation
        
        len_gf0 = length(f01);
        len_pf0 = length(ym_f0_ec_rnn);
        
        if len_gf0 > len_pf0
            f01 = f01(1:len_pf0);
        else
            ym_f0_ec_rnn = ym_f0_ec_rnn(1:len_gf0);
        end
        
        %         f01 = f01';
        ym_f0_ec_rnn(ym_f0_ec_rnn < LOWERF0) = LOWERF0;
        ym_f0_ec_rnn(ym_f0_ec_rnn > UPPERF0) = UPPERF0;
        ym_f0_ec_orig_rnn = ym_f0_ec_rnn;
        ym_f0_ec_rnn = ym_f0_ec_rnn.*(f01 > 0);
        
        rmse_f0_rnn = sqrt(mean((f01 - ym_f0_ec_rnn).^2))
    end
    
    if f0vuvp_flag
        
        ym = ym_f0vuv;
        if outtmvnf
            I1 = bsxfun(@times,ym,vo(:,outvec_f0));
            I1 = bsxfun(@plus,I1,mo(:,outvec_f0));
            ym = I1;
        end
        
        if outtmmnf
            I1 = bsxfun(@times,ym,maxv(:,outvec_f0));
            I1 = bsxfun(@plus,I1,minv(:,outvec_f0));
            ym = I1;
        end
        
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
        ym_f0_ec_orig = ym_f0_ec;
        ym_f0_ec = ym_f0_ec.*(f01 > 0);
        act_vuv = zeros(size(f01));
        act_vuv(f01>0) = 1;
        
        rmse_f0 = sqrt(mean((f01 - ym_f0_ec).^2))
        
        
%         h1 = figure(1);
%         ax1 = subplot(311); plot(ym_f0_ec_orig); hold on; plot(ym_f0_ec_orig_rnn,'r-'); plot(f01,'m-'); hold off; axis tight;
%         ax2 = subplot(312); plot(ym_f0_ec); hold on; plot(ym_f0_ec_rnn,'r-'); plot(f01,'m-'); hold off; axis tight;
%         ax3 = subplot(313); plot(ym(:,1)); hold on; plot(ym_rnn_vuv(:,1),'r-'); plot(act_vuv,'m-'); hold off; axis tight;
%         linkaxes([ax1 ax2 ax3],'x')
%         pause
        
        
        
        if f0spss_flag
            synth_st(ym_f0_ec',M1_gt,ap1,fs,prm,spssynthdir,str,'_f0onlynomlpg.wav');
            synth_st(ym_f0_ec',M1_p,ap1,fs,prm,spssynthdir,str,'_Spec_f0nomlpg.wav');
            synth_st(ym_f0_ec',M1_p_mlpg,ap1,fs,prm,spssynthdir,str,'_Specmlpg_f0nomlpg.wav');
            if gv_flag && f0spss_flag ; synth_st(ym_f0_ec',M1_p_mlpg_gv,ap1,fs,prm,spssynthdir,str,'_Specmlpggv_f0nomlpg.wav'); end;
        end
        
        S = (std_v(:,end-2:end)).^2;
        vuv = zeros(size(f01));
        vuv(f01 > 0) = 1;
        dvuv = diff(vuv);
        pzc = find(dvuv > 0); pzc = pzc + 1;
        nzc = find(dvuv < 0);
        
        if nzc(1) < pzc(1)
            pzc = [1;pzc];
        end
        
        if nzc(end) < pzc(end)
            nzc = [nzc;length(f01)];
        end
        
        ym_f0_mlpg = zeros(size(ym,1),1);
        
        for zc = 1:length(pzc)
            
            % mean normalize before MLPG
            if mn_bmlpg_flag
                ym(pzc(zc):nzc(zc),end-2:end) = bsxfun(@minus,ym(pzc(zc):nzc(zc),end-2:end),mean(ym(pzc(zc):nzc(zc),end-2:end)));
                ym(pzc(zc):nzc(zc),end-2:end) = bsxfun(@plus,ym(pzc(zc):nzc(zc),end-2:end),mu_v(end-2:end));
            end
            
            [ym_f0_mlpg_part] = mlpg_f0(S,ym(pzc(zc):nzc(zc),end-2:end)); % Do MLPG only in Voiced frames
            ym_f0_mlpg(pzc(zc):nzc(zc),1) = ym_f0_mlpg_part(2:end-1,1);
        end
        
        
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
        
        if f0spss_flag
            synth_st(ym_f0_mlpg',M1_gt,ap1,fs,prm,spssynthdir,str,'_f0onlymlpg.wav');
            synth_st(ym_f0_mlpg',M1_p,ap1,fs,prm,spssynthdir,str,'_Spec_f0mlpg.wav');
            synth_st(ym_f0_mlpg',M1_p_mlpg,ap1,fs,prm,spssynthdir,str,'_Specmlpg_f0mlpg.wav');
            if gv_flag; synth_st(ym_f0_mlpg',M1_p_mlpg_gv,ap1,fs,prm,spssynthdir,str,'_Specmlpggv_f0mlpg.wav'); end;
        end
        
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
        
        ym_f0 = ym_f0_ec_orig.*ym_vuv_ec_final;
        rmse_f0_vuv = sqrt(mean((f01 - ym_f0).^2));
        
        %         if f0spss_flag
        %             synth_st(ym_f0_ec',M1_gt,ap1,fs,prm,spssynthdir,str,'_f0onlymlpg.wav');
        %             synth_st(ym_f0_ec',M1_p,ap1,fs,prm,spssynthdir,str,'_Spec_f0mlpg.wav');
        %             synth_st(ym_f0_ec',M1_p_mlpg,ap1,fs,prm,spssynthdir,str,'_Specmlpg_f0mlpg.wav');
        %             if gv_flag; synth_st(ym_f0_ec',M1_p_mlpg_gv,ap1,fs,prm,spssynthdir,str,'_Specmlpggv_f0mlpg.wav'); end;
        %         end
        
        
    end
    
    
    if bapp_flag
        ym = ym_bap;
        if outtmvnf
            I1 = bsxfun(@times,ym,vo(:,outvec_bap));
            I1 = bsxfun(@plus,I1,mo(:,outvec_bap));
            ym = I1;
        end
        
        if outtmmnf
            I1 = bsxfun(@times,ym,maxv(:,outvec_bap));
            I1 = bsxfun(@plus,I1,minv(:,outvec_bap));
            ym = I1;
        end
        
        % BAP distortion
        bapd = sqrt(mean(sum((ym(:,1:bapdim)-bap).^2,2)));
        
        % Convert bap to ap
        [N,dim] = size(ym(:,1:bapdim));
        dlmwrite('temp_ascii.bap',ym(:,1:bapdim),'delimiter', ' ');
        
        command = [X2X, ' ', '+af', ' ', 'temp_ascii.bap', ' ', ' >', ' ', 'temp.bap'];
        system(command);
        command = ['perl', ' ', 'bap2ap.pl'];
        system(command);
        
        fid1 = fopen('temp.ap','r','ieee-le');
        ap_p = fread(fid1, [nfftby2 N],'float');
        fclose(fid1);
        
        % Synthesize with predicted band-aperiodicity
        if bapspss_flag
            synth_st(f01',M1_gt,ap_p,fs,prm,spssynthdir,str,'_baponlynomlpg.wav');
            synth_st(ym_f0_ec',M1_p,ap_p,fs,prm,spssynthdir,str,'_Spec_f0_bap.wav');
        end
        
        
        % MLPG for band-aperiodicity
        S = vo(outvec_bap).^2;
        [bap_mlpg] = mlpg(S,ym);
        bap_mlpg = bap_mlpg(2:end-1,1:bapdim);
        
        bapd_mlpg = sqrt(mean(sum((bap_mlpg-bap).^2,2)));
        
        % Convert bap to ap
        [N,dim] = size(bap_mlpg);
        dlmwrite('temp_ascii.bap',bap_mlpg,'delimiter', ' ');
        
        command = [X2X, ' ', '+af', ' ', 'temp_ascii.bap', ' ', ' >', ' ', 'temp.bap'];
        system(command);
        command = ['perl', ' ', 'bap2ap.pl'];
        system(command);
        
        fid1 = fopen('temp.ap','r','ieee-le');
        ap_p_mlpg = fread(fid1, [nfftby2 N],'float');
        fclose(fid1);
        
        if bapspss_flag
            synth_st(f01',M1_gt,ap_p_mlpg,fs,prm,spssynthdir,str,'_baponlymlpg.wav');
            synth_st(ym_f0_mlpg',M1_p,ap_p_mlpg,fs,prm,spssynthdir,str,'_Spec_f0mlpg_bapmlpg.wav');
            synth_st(ym_f0_mlpg',M1_p_mlpg,ap_p_mlpg,fs,prm,spssynthdir,str,'_Specmlpg_f0mlpg_bapmlpg.wav');
            if gv_flag; synth_st(ym_f0_mlpg',M1_p_mlpg_gv,ap_p_mlpg,fs,prm,spssynthdir,str,'_Specmlpggv_f0mlpg_bapmlpg.wav'); end;
        end
        
    end
    
    % store the objective scores
    if f0vuvp_flag
        objscores(li,1) = rmse_f0;
        objscores(li,2) = rmse_f0_mlpg;
        objscores(li,3) = err_vuv;
        objscores(li,4) = rmse_f0_vuv;
    end
    
    if mgcp_flag
        objscores(li,5) = mmcd;
        objscores(li,6) = mmcd_mlpg;
    end
    
    if gv_flag
        objscores(li,7) = mmcd_mlpg_gv;
    end
    
    if bapp_flag
        objscores(li,8) = bapd;
        objscores(li,9) = bapd_mlpg;
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

fid = fopen(strcat('../../results/objscores','_',arch_name,'.txt'),'w');
for i = 1:test_numbats
    [str,tok] = strtok(testfiles(i+2).name,'.');
    str
    fprintf(fid,'%s %f %f %f %f %f %f %f %f %f \n',str,objscores(i,:));
end
fprintf(fid,'%s %f %f %f %f %f %f %f %f %f \n','mean',mean(objscores(1:li,:)));
fclose(fid);


command = ['rm', ' ', '-rf', ' ' , 'temp*'];
system(command)