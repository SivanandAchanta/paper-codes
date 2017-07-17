% add paths
addpath(genpath('../../../../../../../codes/matlab_codes/general_neuralnet_modules/'));
addpath(genpath('am_testing/'));
addpath('../../../../../../../abs_tools/STRAIGHTV40/');
addpath(genpath('configninit_fns/'));
addpath(genpath('fp_bp_fns/'));

sgd_type = 'adam';
arch_name1 = '250R250N250N';
rho_hp = 0.0003;
eps_hp = 0.9;
si = 0.01;
ri = si;
so = si;
fb_init = 1;
gcth = 1;

% NN params settings
numepochs = 20 % number of epochs
gpu_flag = 0 % set the flag to 0 to run on CPU
sgd_type = sgd_type % (adam/adadelta/sgdcm)
arch_name1 = arch_name1 % architecture
ol_type = 'L' % ouput layer type ( Usually 'L' (Linear) for Regression Problems and 'M' (Softmax) for Classification Problems)
cfn = 'ls' % cost function 'nll' for calssification and 'ls' for regression
wtinit_meth = 'gi' % gi/ui - Gaussian init/ Uniform init
check_valfreq = 2000 % check validtion error for every "check_valfreq" minibats
model_name = 'blstm_2l' % name of the model
gradCheckFlag = 0 % check back-prop with numerical gradients
train_test_ratio = 10 % the ratio of train set to be tested during model validation
gcth_vec = [gcth] % gradient clipping hyperparameters
l1_vec = [0] % l1 norm regularization
l2_vec = [0] % l2 norm regularization
switch_lan_flag = 0;
switch_spk_flag = 0;
switch_gen_flag = 0;

% sgd hyper param init
sgd_hyperparam_init_parametric

% weight initialization hyper parameters
wtinit_hyperparam_init_parametric

% set io dimensions
set_io_dimensions

% input/output normalization settings
in_nml_meth = 'mvni' % input nml meth ('mvni'/'mmni'/'')
out_nml_meth = 'mvno'  % output nml meth ('mvni'/'mmni'/'')
set_io_nml

% set synthetic data dimensions for gradient checking
if gradCheckFlag
    invec = [1:5];
    outvec = [1:3];
    din = length(invec);
    dout = length(outvec);
    gc_flag = 0;
else
    gc_flag = 1;
end

% make directories to write parameter files , error per epoch and average lengths of gradients
datadir = '../../../matfiles_16KHz/';
statdir = datadir;
spsssynthdir = '../../../synth_matlab/synth';
resdir = '../../../obj_results/';
model_stats_dir = '../../../model_stats/stats_';
testwavpath = '../../../data/test/cmp/';
testfiles = dir(strcat(testwavpath,'*.cmp'));

feat_name = 'cmp';
wtdir = '../../../wt/';
errdir = '../../../err/';

wtfile_name = '567L250R250N250N235L_blstm_2l_gi_alpha3e-06_beta10.9_beta20.99_si0.01_ri0.01_so0.01_fbinit0_gi_lang5_14';
load(strcat(wtdir,'W_',wtfile_name,'.mat'))

mkdir(resdir);


lang_list = {'tel','tam','kan','mal','hin'};
spkno = 23;
lanno = 6;

%spsssynthdir = strcat(spsssynthdir,'_',wtfile_name,'_swspk',num2str(switch_spk_flag),'_',lang_list{spix},'/');
%mkdir(spsssynthdir)

model_stats_dir = strcat(model_stats_dir,'_',wtfile_name,'/');
mkdir(model_stats_dir)


files = dir(strcat(datadir,'train*.mat'));
nb = length(files);
clear files

files = dir(strcat(wtdir,'W_*'));
nwt = length(files);
clear files
