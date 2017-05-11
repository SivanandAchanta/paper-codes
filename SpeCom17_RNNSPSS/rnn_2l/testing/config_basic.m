addpath(genpath('../../../../../../codes/matlab_codes/general_neuralnet_modules/'));
addpath('../../../../../../abs_tools/STRAIGHTV40/');
addpath('am_testing/');
addpath('fp_bp_fns/');

sgd_type = 'adam';
lang_name1_vec = {'Telugu','Tamil','Hindi'};
lang_name2_vec = {'tel','tam','hin'};
lang_name1 = lang_name1_vec{lid};
lang_name2 = lang_name2_vec{lid};
datadir = strcat('/media/sivanand/8a606f65-ac18-46fd-b535-e0d026e7f982/sivanand/HDD_BeforeOCT16_siva@lifterning936GBVol/Blizzard_Test/',lang_name1,'/matfiles_dir/matfiles/');
arch_name1_vec = {'250R250R','500R500R'};
arch_name1 = arch_name1_vec{arch_id};
feat_name = 'cmp';
model_name = 'rnn_2l';
model_list={'347L250R250R235L_rnn_2l_di_alpha0.0003_beta10.9_beta20.999_si0.01_ri0.01_so0.01_di_219','347L500R500R235L_rnn_2l_di_alpha0.0003_beta10.9_beta20.999_si0.01_ri0.01_so0.01_di_259',...
    '277L250R250R235L_rnn_2l_di_alpha0.0003_beta10.9_beta20.999_si0.01_ri0.01_so0.01_di_93','277L500R500R235L_rnn_2l_di_alpha0.0003_beta10.9_beta20.999_si0.01_ri0.01_so0.01_di_94',...
    '364L250R250R235L_rnn_2l_di_alpha0.0003_beta10.9_beta20.999_si0.01_ri0.01_so0.01_di_16','364L500R500R235L_rnn_2l_di_alpha0.0003_beta10.9_beta20.999_si0.01_ri0.01_so0.01_di_17'}
wtfile_name = strcat('W_',model_list{model_no});

% NN params settings
numepochs = 20
gpu_flag = 0 % Set the flag to 0 to run on CPU
sgd_type = sgd_type % (adam/adadelta/sgdcm)
arch_name1 = arch_name1 % Architecture
ol_type = 'L' % Ouput Layer Type ( Usually 'L' (Linear) for Regression Problems and 'M' (Softmax) for Classification Problems)
cfn = 'ls' % cost function 'nll' for calssification and 'ls' for regression
wtinit_meth = 'di'
check_valfreq = 1000 % check validtion error for every "check_valfreq" minibats
model_name = model_name
gradCheckFlag = 0;
train_test_ratio = 20;

l1_vec = [0];
l2_vec = [0];

% make directories to write parameter files , error per epoch and average lengths of gradients
datadir = datadir;
wtdir = strcat('../../../wt/',lang_name2,'/');
errdir = strcat('../../../err/',lang_name2,'/');

% load weight parameters
load(strcat(wtdir,wtfile_name,'.mat'));

% make directories to write parameter files , error per epoch and average lengths of gradients
% statdir = strcat('../../../../mvn_2l/',lang_name2,'/');
statdir = datadir; 
spsssynthdir = strcat('../../../synth_matlab/synth/',lang_name2,'/','/synth');
resdir = '../../../obj_results/';
model_stats_dir = '../../../model_stats/stats_';
testwavpath = strcat('/media/sivanand/8a606f65-ac18-46fd-b535-e0d026e7f982/sivanand/HDD_BeforeOCT16_siva@lifterning936GBVol/Blizzard_Test/',lang_name1,'/data/test/cmp/');
testfiles = dir(strcat(testwavpath,'*.cmp'));

mkdir(resdir);
spsssynthdir = strcat(spsssynthdir,'_',wtfile_name,'/');
mkdir(spsssynthdir)
model_stats_dir = strcat(model_stats_dir,'_',wtfile_name,'/');
mkdir(model_stats_dir)


files = dir(strcat(datadir,'train*.mat'));
nb = length(files);
clear files

files = dir(strcat(wtdir,'W_*'));
nwt = length(files);
clear files

% Set the input output dimensions and the normalization flags
if strcmp(feat_name,'mgc')
    outvec = [1:150];
elseif strcmp(feat_name,'f0')
    outvec = [232:235];
elseif strcmp(feat_name,'bap')
    outvec = [151:228];
elseif strcmp(feat_name,'cmp')
    outvec = [1:235];
end

switch lang_name2
    case 'tel'
        invec = [1:347];
        mvnivec = [303:339 343:347];
    case 'tam'
        invec = [1:277];
        mvnivec = [233:269 273:277];
    case 'hin'
        invec = [1:364];
        mvnivec = [320:356 360:364];
end


in_nml_meth = 'mvni'
out_nml_meth = 'mvno'

if gradCheckFlag
    invec = [1:5];
    outvec = [1:3];
    
    din = length(invec);
    dout = length(outvec);
    
end

if strcmp(in_nml_meth,'mvni')
    intmvnf = 1;
    intmmnf = 0;
elseif strcmp(in_nml_meth,'mmni')
    intmvnf = 0;
    intmmnf = 1;
else
    intmvnf = 0;
    intmmnf = 0;
end

if strcmp(out_nml_meth,'mvno')
    outtmvnf = 1;
    outtmmnf = 0;
elseif strcmp(out_nml_meth,'mmno')
    outtmvnf = 0;
    outtmmnf = 1;
else
    outtmvnf = 0;
    outtmmnf = 0;
end

% gradient clipping hyperparameters
gcth_vec = [1];
if gradCheckFlag
    gc_flag = 0;
else
    gc_flag = 1;
end

% set params of nonlinearity
a_tanh = 1.7159;
b_tanh = 2/3;
bby2a = (b_tanh/(2*a_tanh));
