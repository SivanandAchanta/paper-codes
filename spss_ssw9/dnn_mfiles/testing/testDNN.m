% Purpose : Test DNN

clear all; close all; clc;
addpath('/media/newHDD/hts_voices/STRAIGHTV40');

expname = 'exp_hts_stmspecf0_Telugu';
expdir = strcat('../../',expname,'/');
datadir = strcat(expdir,'data/');
wtdir = strcat('../../wt/',expname,'/');

% testfiles
testwavpath = '../../voices/Telugu/data/test/wav/';
testfiles = dir(testwavpath);

% synthesis params
% STRAIGHT Params
fs = 16000;
frshift_s = 80 ; % frame shift in samples
UPPERF0 = 580;
LOWERF0 = 60;

frshiftms = round((frshift_s/fs)*1000); % frameshift in ms
prm.F0frameUpdateInterval = frshiftms;
prm.spectralUpdateInterval = frshiftms;
prm.F0searchUpperBound = UPPERF0;
prm.F0searchLowerBound = LOWERF0;

% msasb params
nfft = 1024;
nfftby2 = round(nfft/2 + 1);
nbands = 140;
bw_band = fs/2/nbands;
bef = bw_band:bw_band:(fs/2 - bw_band);
bcf = bw_band/2:bw_band:(fs/2);
nbef = round((bef/fs)*nfft + 1);
nbcf = round((bcf/fs)*nfft + 1);
x = [1 nbcf nfftby2];
xi = [1:nfftby2];

% load mvn of input
load(strcat(datadir,'mvni.mat'))

% load maxmin of output
load(strcat(datadir,'maxmino.mat'))

% make test data
% % Step3: make test data

outvec = [1:428];
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
% NN param initialization
mf = [0.95]; % momentum factor
berp = [1 1 1 1 1 1 1]; % bernoulli prob of output layer is always 1

% initialize nonlinearity and learning rate per layer params
eta = 1e-3;
a_tanh = 1.7159;
b_tanh = 2/3;
bby2a = (b_tanh/(2*a_tanh));

train_batchsize = 1000;
arch_name = strcat('1000R800R600R500R428L','_bs',num2str(train_batchsize),'flr_mf',num2str(eta),num2str(mf));
% set synthesis directories
abssynthdir = strcat(expdir,'synth_',arch_name,'/abs/');
spssynthdir = strcat(expdir,'synth_',arch_name,'/sps/');
% make direcotries
mkdir(abssynthdir);
mkdir(spssynthdir);

nl = [din 1000 800 600 500 dout];
nh = length(nl) - 1; % number of hidden layers
f = [ 'R' 'R' 'R' 'R' 'L'];

if (length(nl) - 1) ~= length(f)
    disp('number of hidden o/p fns mus be same as number of hidden layers');
end

% weight initialization
nlv = 1:nh;
wtl = [1 nl(nlv).*nl(nlv+1)];
wtl = cumsum(wtl);
btl = cumsum([1 nl(nlv+1)]);

% load weights
load(strcat(wtdir,'W_',arch_name,'.mat'))


testerr = 0;

% compute error on test set
for li = 1:(test_numbats)
    mt = [];
    sl = test_clv(li+1) - test_clv(li);
    X = test_batchdata(test_clv(li):test_clv(li+1)-1,:);
    % fp
    [ol] = fp_av_test_mnist(X,W,b,nl,f,nh,a_tanh,b_tanh,wtl,btl,berp,sl);
    
    % compute error
    % % test error set variables
    ottl = [1 sl*(nl(nlv+1))];
    ottl = cumsum(ottl);
    
    ym = reshape(ol(1,ottl(end-1):ottl(end)-1),sl,nl(end));
    clear ol;
    mt = nml_test_batchtargets(test_clv(li):test_clv(li+1)-1,:);
    me = mean(sum((mt - ym).^2,2)./(sum(mt.^2,2)));
    testerr = testerr + me/(test_numbats);
    
    % synthesize wave files
    % do an AbS
    [str,tok] = strtok(testfiles(li+2).name,'.');
    [y,fs] = wavread(strcat(testwavpath,testfiles(li+2).name));
    
    % % STRAIGHT ANALYSIS
    [f0raw, ap] = exstraightsource(y,fs,prm);
    % [st_sgram] = exstraightspec(y, f0raw, fs, prm);
    
    % compute the spectral envelope using linear interpolation
    mt = test_batchtargets(test_clv(li):test_clv(li+1)-1,:);
    mt_f0 = mt(:,end-1);
    mt_vuv = mt(:,end);
    mt = mt(:,1:nbands+2);
    mt = 10.^(mt/20);
    mt = mt';
    nframe = size(mt,2);
    seali = zeros(nfftby2,nframe);
    for ii = 1:nframe;
        seali(:,ii) = interp1(x,mt(:,ii),xi);
    end
    
    %     [sy_stght,prmS] = exstraightsynth(f0raw,seali,ap,fs,prm);
    %     sy_stght=sy_stght./(1.01*max(abs(sy_stght)));
    %     soundsc(sy_stght,fs)
    %     wavwrite(sy_stght,fs,strcat(abssynthdir,str,'_abs','.wav'));
    
    % compute the spectral envelope using linear interpolation
    
    
    % denormalization
    if outtmvnf
        I1 = bsxfun(@times,ym,maxv);
        I1 = bsxfun(@plus,I1,minv);
        ym = I1;
    end
    ym_f0 = ym(:,end-1);
    ym_vuv = ym(:,end);
    ym_vuv_final = zeros(size(ym_vuv));
    ym_vuv_final(ym_vuv > 0.4) = 1;    
    ym_f0 = ym_f0.*ym_vuv_final;
    
    %     lenf0 = 1:length(ym_f0);
    %     h1 = figure(1);
    %     subplot(211); plot(lenf0,mt_f0,'b-',lenf0,ym_f0,'r-');
    %     subplot(212); plot(lenf0,mt_vuv,'b-',lenf0,ym_vuv,'r-');
    %     pause;
    
    ym = ym(:,1:nbands+2);
    ym = 10.^(ym/20);
    ym = ym';
    nframe = size(ym,2);
    seali = zeros(nfftby2,nframe);
    for ii = 1:nframe;
        seali(:,ii) = interp1(x,ym(:,ii),xi);
    end
    
    [sy_stght,prmS] = exstraightsynth(f0raw,seali,ap,fs,prm);
    sy_stght=sy_stght./(1.01*max(abs(sy_stght)));
    soundsc(diff(sy_stght),fs)
    %         wavwrite(sy_stght,fs,strcat(spssynthdir,str,'.wav'));
    
    ym_f0(ym_f0 < 60) = 60;
    ym_f0 = ym_f0.*ym_vuv_final;
    ym_f0 = ym_f0';
    
    [sy_stght,prmS] = exstraightsynth(ym_f0,seali,ap,fs,prm);
    sy_stght=sy_stght./(1.01*max(abs(sy_stght)));
    soundsc(diff(sy_stght),fs)
    wavwrite(sy_stght,fs,strcat(spssynthdir,str,'_pf0_nomlpg','.wav'));
    
end

testerr
