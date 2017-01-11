clear all; close all; clc;


% % NN params settings
numepochs = 40 % Number of Epochs
gpu_flag = 0 % Set the flag to 0 to run on CPU
sgd_type = 'sgdcm' % (adam/adadelta/sgdcm)
arch_name1 = '20N' % Architecture
ol_type = 'L' % Ouput Layer Type ( Usually 'L' (Linear) for Regression Problems and 'M' (Softmax) for Classification Problems)
cfn = 'ls' % cost function 'nll' for calssification and 'ls' for regression
check_valfreq = 10 % check validtion error for every "check_valfreq" minibats
model_name = 'lstm'
gradCheck_Flag = 0;

% % gradient clipping hyperparameters
si = 0.1;
sr = 0.1;
su = 0.1;
gcth_vec = [1];
gc_flag = 1;

datadir = '../data/';

outvec = [1:6];
invec = [1:5]; % remove the left context for uni-directional RNN
mvnivec = [1:20];
din = length(invec);
dout = length(outvec);

intmvnf = 0;
outtmvnf = 0;

% Step 1 : Read data
readdata_rnn
 
% % make directories to write parameter files , error per epoch and average lengths of gradients
wtdir = '../../wt/';
errdir = '../../err/';
mkdir(wtdir);
mkdir(errdir);

% Step 2 : Set architecture
arch_name = strcat(arch_name1,num2str(dout),ol_type);
arch_init
arch_name = strcat(arch_name,'_',model_name)

files = dir(strcat(wtdir,'W*.mat'));
nwt = length(files) + 1;
clear files

% l1 and l2 regularization penalty coefficent settings
l1_vec = [0];
l2_vec = [0];

% set hyper params
switch sgd_type
    
    case 'sgdcm'
        
        % Training DNN using Naive SGD with classical momentu
        
        lr_vec = [0.01];
        mf_vec = [0];
        
        for l1 = l1_vec
            for l2 = l2_vec
                for lr = lr_vec
                    for mf = mf_vec
                        for gcth = gcth_vec
                            
                            % Step 4 : Weight initialization
                            wt_init
                            
                            arch_name2 = strcat('_l2',num2str(l2),'_lr',num2str(lr),'_mf',num2str(mf),'_',num2str(gcth));
                            arch_name = strcat(arch_name,arch_name2)
                            
                            if gpu_flag                                
                                gpu_params
                            else
                                cpu_params
                            end
                            trainer
                        end
                    end
                end
            end
        end
        
end
        
        



