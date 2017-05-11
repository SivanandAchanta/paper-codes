addpath(genpath('../../general_neuralnet_modules/'));
addpath('fp_bp_fns/');

% NN params settings
numepochs = 40
gpu_flag = 0 % Set the flag to 0 to run on CPU
sgd_type = sgd_type % (adam/adadelta/sgdcm)
arch_name1 = arch_name1 % Architecture
ol_type = 'L' % Ouput Layer Type ( Usually 'L' (Linear) for Regression Problems and 'M' (Softmax) for Classification Problems)
cfn = 'ls' % cost function 'nll' for calssification and 'ls' for regression
wtinit_meth = 'di'
check_valfreq = 1000 % check validtion error for every "check_valfreq" minibats
model_name = 'rnn_2l'
gradCheckFlag = 0;
train_test_ratio = 20;

l1_vec = [0];
l2_vec = [0];

sgd_hyperparam_init
wtinit_hyperparam_init_parametric

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

switch lang_name
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
