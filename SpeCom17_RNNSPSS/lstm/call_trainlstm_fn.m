
function [] = call_trainlstm_fn(numepochs,arch_name,si,ri,so,gcth,lr,mf)

% NN params settings
numepochs = str2num(numepochs)
gpu_flag = 0 % Set the flag to 0 to run on CPU
sgd_type = 'sgdcm'
arch_name1 = arch_name % Architecture
ol_type = 'L' % Ouput Layer Type ( Usually 'L' (Linear) for Regression Problems and 'M' (Softmax) for Classification Problems)
cfn = 'ls' % cost function 'nll' for calssification and 'ls' for regression
check_valfreq = 1000 % check validtion error for every "check_valfreq" minibats
model_name = 'lstm'
gradCheck_Flag = 0;

% Make directories to write parameter files , error per epoch
datadir = '../matfiles/';
wtdir = '../wt/';
errdir = '../err/';

% Set the input output dimensions and the normalization flags
outvec = [151:228];
invec = [101:347];
mvnivec = [303:339 343:347];

in_nml_meth = 'mvni'
out_nml_meth = 'mvno'

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

% Initialization hyper parameters
si = str2num(si);
sr = str2num(ri);
su = str2num(so);

gcth_vec = [str2num(gcth)];
gc_flag = 1;

% Step 1 : Read data
readdata_rnn
 
% % make directories to write parameter files , error per epoch and average lengths of gradients
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
        
        lr_vec = [str2num(lr)];
        mf_vec = [str2num(mf)];
        
        for l1 = l1_vec
            for l2 = l2_vec
                for lr = lr_vec
                    for mf = mf_vec
                        for gcth = gcth_vec
                            
                            % Step 4 : Weight initialization
                            wt_init
                            
                            arch_name2 = strcat('_l2',num2str(l2),'_lr',num2str(lr),'_mf',num2str(mf),'_',num2str(gcth),'_si',num2str(si),'_sr',num2str(sr),'_su',num2str(su));
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
        
        



