% add paths
addpath(genpath('../../general_neuralnet_modules/'));
addpath('configninit_fns');
addpath('fp_bp_fns');
addpath('gradcheck_fns');

% NN params settings
numepochs = 20 % number of epochs
gpu_flag = 0 % set the flag to 0 to run on CPU
sgd_type = sgd_type % (adam/adadelta/sgdcm)
arch_name1 = arch_name1 % architecture
ol_type = 'L' % ouput layer type ( Usually 'L' (Linear) for Regression Problems and 'M' (Softmax) for Classification Problems)
cfn = 'ls' % cost function 'nll' for calssification and 'ls' for regression
wtinit_meth = 'gi' % gi/ui - Gaussian init/ Uniform init
check_valfreq = 1000 % check validtion error for every "check_valfreq" minibats
model_name = 'gru' % name of the model
gradCheckFlag = 0 % check back-prop with numerical gradients
train_test_ratio = 20 % the ratio of train set to be tested during model validation 
gcth_vec = [1] % gradient clipping hyperparameters
l1_vec = [0] % l1 norm regularization 
l2_vec = [0] % l2 norm regularization 

% sgd hyper param init
sgd_hyperparam_init

% input/output normalization settings
in_nml_meth = 'mvni' % input nml meth ('mvni'/'mmni'/'')
out_nml_meth = 'mvno'  % output nml meth ('mvni'/'mmni'/'')
set_io_nml

% weight initialization hyper parameters
wtinit_hyperparam_init_parametric

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
datadir = datadir;
wtdir = strcat('../../wt/',lang_name,'/');
errdir = strcat('../../err/',lang_name,'/');

mkdir(wtdir);
mkdir(errdir);

files = dir(strcat(datadir,'train*.mat'));
nb = length(files);
clear files

files = dir(strcat(wtdir,'W_*'));
nwt = length(files);
clear files
