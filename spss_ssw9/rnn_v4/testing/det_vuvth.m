% Purpose : To determine the best VUV threshold using training data

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
gv_flag = 0;
if gv_flag
    load(strcat(datadir,'uv_msdv.mat'));
    mu_gv = uv_m(outvec);
    p_gv = 1./uv_sdv(outvec);
    mu_gv_sdv = sqrt(mu_gv);
end

read_traindata

f0vuvp_flag = 1;
arch_name = '';

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
    
    trainerr_f0vuv = 0;
    arch_name = strcat(arch_name,arch_name1);
    
end


%% NN param initialization
a_tanh = 1.7159;
b_tanh = 2/3;
bby2a = (b_tanh/(2*a_tanh));

varfloor = 0;
sumrmse_f0 = 0;
sumerr_vuv = 0;
sum_mmcd = 0;
objscores = zeros(train_numbats,1);
vuvth_utt = zeros(train_numbats,1);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
vuvth_vec = [0.2:0.01:0.9];
vuvth_vec_orig = [0.2:0.01:0.9];
err_vuv_mat = zeros(train_numbats,length(vuvth_vec));

% compute error on test set
for li = 1:train_numbats
    li
    %% Step 1 : Predict parameters form the network
    X = []; mt = [];
    sl = train_clv(li+1) - train_clv(li);
    X = double(train_batchdata(train_clv(li):train_clv(li+1)-1,:));
    Y = double(train_batchtargets(train_clv(li):train_clv(li+1)-1,:));
    
    if f0vuvp_flag
        % fp
        tic  
        [hcm,ym_f0vuv] = fp_rnn(X,Wi_f0,Wfr_f0,U_f0,bh_f0,bo_f0,f_f0,nl_f0,a_tanh,b_tanh,sl);
        toc 
        me = mean(sum((Y(:,outvec_f0) - ym_f0vuv).^2,2)./(sum(Y(:,outvec_f0).^2,2)));
        trainerr_f0vuv = trainerr_f0vuv + me/(train_numbats);
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
       
        gt = Y(:,outvec_f0);
        
       if outtmvnf
            I1 = bsxfun(@times,gt,vo(:,outvec_f0));
            I1 = bsxfun(@plus,I1,mo(:,outvec_f0));
            gt = I1;
        end
        
        if outtmmnf
            I1 = bsxfun(@times,gt,maxv(:,outvec_f0));
            I1 = bsxfun(@plus,I1,minv(:,outvec_f0));
            gt = I1;
        end
        
        f01 = gt(:,2);
        
        % Compute VUV (% error)
        ym_vuv_ec = ym(:,1); % for error computation
        vuvraw = (f01 > 10);
        
        len_gf0 = length(f01);
        len_pf0 = length(ym_vuv_ec);
        
        if len_gf0 > len_pf0
            vuvraw = vuvraw(1:len_pf0);
        else
            ym_vuv_ec = ym_vuv_ec(1:len_gf0);
        end
        
        err_vuv = zeros(length(vuvth_vec),1);
        for j = 1:length(vuvth_vec)
            vuvth = vuvth_vec(j);
            ym_vuv_ec_final = zeros(size(ym_vuv_ec));
            ym_vuv_ec_final(ym_vuv_ec > vuvth) = 1;        
            err_vuv(j) = ((sum(abs(ym_vuv_ec_final - vuvraw))/length(vuvraw))*100);  
            err_vuv_mat(li,j) = ((sum(abs(ym_vuv_ec_final - vuvraw))/length(vuvraw))*100);  
        end

        [minval,minix] = min(err_vuv);
        err_vuv_min = minval;
        

        % store the objective scores and thresholds
        objscores(li,1) = err_vuv_min;
        vuvth_utt(li) = vuvth_vec(minix);
        
    end
end

if f0vuvp_flag
    trainerr_f0vuv
end

err_vuv_mean = mean(err_vuv_mat)
[minval,minix] = min(err_vuv_mean)
vuvth_final = vuvth_vec_orig(minix)


% [n,xout] = hist(vuvth_utt,length(vuvth_vec));
% vuvth_1 = mean(vuvth_utt);
% [maxcnt,maxix] = max(n);
% vuvth_2 = vuvth_vec(maxix);
% 
% % choose the best vuv threshold among the two
% vuvth_vec = [vuvth_1 vuvth_2]
% err_vuv = zeros(train_numbats,length(vuvth_vec));
% 
% for li = 1:train_numbats
%     li
%     %% Step 1 : Predict parameters form the network
%     X = []; mt = [];
%     sl = train_clv(li+1) - train_clv(li);
%     X = double(train_batchdata(train_clv(li):train_clv(li+1)-1,:));
%     Y = double(train_batchtargets(train_clv(li):train_clv(li+1)-1,:));
%     
%     if f0vuvp_flag
%         % fp
%         [hcm,ym_f0vuv] = fp_rnn(X,Wi_f0,Wfr_f0,U_f0,bh_f0,bo_f0,f_f0,nl_f0,a_tanh,b_tanh,sl);
%         
%         me = mean(sum((Y(:,outvec_f0) - ym_f0vuv).^2,2)./(sum(Y(:,outvec_f0).^2,2)));
%         
%         me
%         trainerr_f0vuv = trainerr_f0vuv + me/(train_numbats);
%     end
%     
%     
%     if f0vuvp_flag
%         
%         ym = ym_f0vuv;
%         if outtmvnf
%             I1 = bsxfun(@times,ym,vo(:,outvec_f0));
%             I1 = bsxfun(@plus,I1,mo(:,outvec_f0));
%             ym = I1;
%         end
%         
%         if outtmmnf
%             I1 = bsxfun(@times,ym,maxv(:,outvec_f0));
%             I1 = bsxfun(@plus,I1,minv(:,outvec_f0));
%             ym = I1;
%         end
%        
%         gt = Y(:,outvec_f0);
%         
%        if outtmvnf
%             I1 = bsxfun(@times,gt,vo(:,outvec_f0));
%             I1 = bsxfun(@plus,I1,mo(:,outvec_f0));
%             gt = I1;
%         end
%         
%         if outtmmnf
%             I1 = bsxfun(@times,gt,maxv(:,outvec_f0));
%             I1 = bsxfun(@plus,I1,minv(:,outvec_f0));
%             gt = I1;
%         end
%         
%         f01 = gt(:,2);
%         
%         % Compute VUV (% error)
%         ym_vuv_ec = ym(:,1); % for error computation
%         vuvraw = (f01 > 10);
%         
%         len_gf0 = length(f01);
%         len_pf0 = length(ym_vuv_ec);
%         
%         if len_gf0 > len_pf0
%             vuvraw = vuvraw(1:len_pf0);
%         else
%             ym_vuv_ec = ym_vuv_ec(1:len_gf0);
%         end
%         
% 
%         for j = 1:length(vuvth_vec)
%             vuvth = vuvth_vec(j);
%             ym_vuv_ec_final = zeros(size(ym_vuv_ec));
%             ym_vuv_ec_final(ym_vuv_ec > vuvth) = 1;        
%             err_vuv(li,j) = ((sum(abs(ym_vuv_ec_final - vuvraw))/length(vuvraw))*100);           
%         end
% 
%         
%     end
% end
% 
% % method 1
% err_vuv_mean = mean(err_vuv)
% [minval,minix] = min(err_vuv_mean);
% vuvth_final = vuvth_vec(minix)
% 
% % method 2
% err_vuv_mean_meth2 = mean(err_vuv_mat)
% [minval,minix] = min(err_vuv_mean_meth2);
% vuvth_final2 = vuvth_vec_orig(minix)
