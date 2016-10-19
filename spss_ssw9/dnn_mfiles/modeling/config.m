% NN params settings
numepochs = 15; % Number of Epochs
trn_bs = 128; % Batch-Size of Training Data
gpu_flag = 1; % Set the flag to 0 to run on CPU
sgd_type = 'adam'; % (adam/adadelta/sgdcm)
arch_name1 = '1500R1500R1500R'; % Architecture
ol_type = 'L'; % Ouput Layer Type ( Usually 'L' (Linear) for Regression Problems and 'M' (Softmax) for Classification Problems)
cfn = 'ls';  % Cost-function 'nll' (negative log-likelihood) for calssification and 'ls' (least squares) for regression
wtinit_meth = 'yi';

% l1 and l2 regularization penalty coefficent settings
l1_vec = [0];
l2_vec = [0 0.0001 0.00005 0.00001 0.000005];

lr_vec = [1e-2 1e-4 1e-6];
mf_vec = [0 0.3 0.7 0.995];

rho_vec = [0.9 0.95 0.98];
eps_vec = [1e-4 1e-5 1e-6];
mf_vec = [0 0.3 0.7 0.995];

alpha_vec = [1e-3 1e-4 1e-5];
beta1_vec = [0.9];
beta2_vec = [0.999];
eps_hp = 1e-8;
lam = 1 - eps_hp;

% make directories to write parameter files , error per epoch and average lengths of gradients
datadir = matpath;
wtdir = '../../wt/';
errdir = '../../err/';

mkdir(wtdir);
mkdir(errdir);

outvec = [1:338];
invec = [1:263 297:347];
mvnivec = [303:339 343:347];

% set params of nonlinearity
a_tanh = 1.7159;
b_tanh = 2/3;
bby2a = (b_tanh/(2*a_tanh));

% early stopping params (Theano DeepLearningTutorials)
patience = 10000;
patience_inc = 2;
imp_thresh = 0.995;
val_freq = min(train_numbats,patience/2);
best_val_loss = inf;
best_iter = 0;
num_up = 0;
bs = trn_bs;

valerr = 0;
testerr = 0;
trainerr = 0;
check_valfreq = 1000;
