%{
###########################################################################
##                                                                       ##
##                                                                       ##
##                       IIIT Hyderabad, India                           ##
##                      Copyright (c) 2015                               ##
##                        All Rights Reserved.                           ##
##                                                                       ##
##  Permission is hereby granted, free of charge, to use and distribute  ##
##  this software and its documentation without restriction, including   ##
##  without limitation the rights to use, copy, modify, merge, publish,  ##
##  distribute, sublicense, and/or sell copies of this work, and to      ##
##  permit persons to whom this work is furnished to do so, subject to   ##
##  the following conditions:                                            ##
##   1. The code must retain the above copyright notice, this list of    ##
##      conditions and the following disclaimer.                         ##
##   2. Any modifications must be clearly marked as such.                ##
##   3. Original authors' names are not deleted.                         ##
##   4. The authors' names are not used to endorse or promote products   ##
##      derived from this software without specific prior written        ##
##      permission.                                                      ##
##                                                                       ##
##  IIIT HYDERABAD AND THE CONTRIBUTORS TO THIS WORK                     ##
##  DISCLAIM ALL WARRANTIES WITH REGARD TO THIS SOFTWARE, INCLUDING      ##
##  ALL IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS, IN NO EVENT   ##
##  SHALL IIIT HYDERABAD NOR THE CONTRIBUTORS BE LIABLE                  ##
##  FOR ANY SPECIAL, INDIRECT OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES    ##
##  WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN   ##
##  AN ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION,          ##
##  ARISING OUT OF OR IN CONNECTION WITH THE USE OR PERFORMANCE OF       ##
##  THIS SOFTWARE.                                                       ##
##                                                                       ##
###########################################################################
##                                                                       ##
##          Author :  Sivanand Achanta (sivanand.a@research.iiit.ac.in)  ##
##          Date   :  Jul. 2015                                          ##
##                                                                       ##
###########################################################################
%}

% clear all; close all; clc;

% NN params settings
Np = 50; % Number of unique phones in this language
Nv = 13; % Number of vowels in this language
numepochs = 50 % Number of Epochs
expname = 'exp_hts_mgcmapf048k_Telugu'
%trn_bs = 128; % Batch-Size of Training Data
gpu_flag = 1 % Set the flag to 0 to run on CPU
sgd_type = 'sgdcm' % (adam/adadelta/sgdcm)
arch_name1 = '1000R' % Architecture
ol_type = 'L' % Ouput Layer Type ( Usually 'L' (Linear) for Regression Problems and 'M' (Softmax) for Classification Problems)
cfn = 'ls' % cost function 'nll' for calssification and 'ls' for regression
wtinit_meth = 'di'
check_valfreq = 1000 % check validtion error for every "check_valfreq" minibats
model_name = 'rnn'

% Initialization hyper parameters
set_specradflag = 1; % set spectral radius flag
specrad = 1; % spectral radius
nnz = 20;
opts.tol = 1e-6;
mask_flag = 0; % for sparse initialization

% gradient clipping hyperparameters
gcth_vec = [1];
gc_flag = 1;

% Step 1 : Read data
readdata_rnn

% make directories to write parameter files , error per epoch and average lengths of gradients
wtdir = strcat('../wt/',expname,'/');
errdir = strcat('../err/',expname,'/');
mkdir(wtdir);
mkdir(errdir);

% Step 2 : Set architecture
arch_name1 = strcat(arch_name1,num2str(dout),ol_type);
arch_init
arch_name1 = strcat(arch_name1,'_',model_name,'_',wtinit_meth);

% Step 3 : Train according to SGD Type (adam/adadelta/sgdcm)

% l1 and l2 regularization penalty coefficent settings
l1_vec = [0];
l2_vec = [0.00001];

% set params of nonlinearity
a_tanh = 1.7159;
b_tanh = 2/3;
bby2a = (b_tanh/(2*a_tanh));

% set hyper params
switch sgd_type
    
    case 'sgdcm'
        
        % Training DNN using Naive SGD with classical momentum
        
        lr_vec = [0.01];
        mf_vec = [0.9];
        
        for l1 = l1_vec
            for l2 = l2_vec
                for lr = lr_vec
                    for mf = mf_vec
                        for gcth = gcth_vec
                            
                            % Step 4 : Weight initialization
                            wt_init
                            
                            arch_name2 = strcat('_l2',num2str(l2),'_lr',num2str(lr),'_mf',num2str(mf),'_',num2str(gcth));
                            arch_name = strcat(arch_name1,arch_name2)
                            
                            if gpu_flag
                                
                                GWi = gpuArray(Wi);  GWfr = gpuArray(Wfr); GU = gpuArray(U); Gbh = gpuArray(bh); Gbo = gpuArray(bo);
                                
                                GpdWi = gpuArray(zeros(size(Wi)));  GpdWfr = gpuArray(zeros(size(Wfr))); GpdU = gpuArray(zeros(size(U)));
                                Gpdbh = gpuArray(zeros(size(bh))); Gpdbo = gpuArray(zeros(size(bo)));
                                
                            else
                                
                                GWi = Wi;  GWfr = Wfr; GU = U; Gbh = bh; Gbo = bo;
                                
                                GpdWi = zeros(size(Wi));  GpdWfr = zeros(size(Wfr)); GpdU = zeros(size(U));
                                Gpdbh = zeros(size(bh)); Gpdbo = zeros(size(bo));
                            end
                            trnrnn
                        end
                    end
                end
            end
        end
        
        
    case 'adadelta'
        
        % Training DNN using ADA-DELTA
        
        % Ref : ADADELTA: An Adaptive Learning Rate Method - Matthew Zeiler
        
        rho_vec = [0.95];
        eps_vec = [1e-6];
        mf_vec = [0 0.7];
        
        for l1 = l1_vec
            for l2 = l2_vec
                for rho = rho_vec
                    for eps = eps_vec
                        for mf = mf_vec
                            for gcth = gcth_vec
                                % Step 4 : Weight initialization
                                wt_init
                             
                                arch_name2 = strcat('_l2',num2str(l2),'_rho',num2str(rho),'_eps',num2str(eps),'_mf',num2str(mf),'_',num2str(gcth));
                                arch_name = strcat(arch_name1,arch_name2)
                                
                                
                                
                                % Step 5 : Training
                                
                                if gpu_flag
                                    
                                    GWi = gpuArray(Wi);  GWfr = gpuArray(Wfr); GU = gpuArray(U); Gbh = gpuArray(bh); Gbo = gpuArray(bo);
                                    
                                    GpdWi = gpuArray(zeros(size(Wi)));  GpdWfr = gpuArray(zeros(size(Wfr))); GpdU = gpuArray(zeros(size(U)));
                                    Gpdbh = gpuArray(zeros(size(bh))); Gpdbo = gpuArray(zeros(size(bo)));
                                    
                                    GpmsgWi = gpuArray(zeros(size(Wi)));  GpmsgWfr = gpuArray(zeros(size(Wfr))); GpmsgU = gpuArray(zeros(size(U)));
                                    Gpmsgbh = gpuArray(zeros(size(bh))); Gpmsgbo = gpuArray(zeros(size(bo)));
                                    
                                    GpmsxWi = gpuArray(zeros(size(Wi)));  GpmsxWfr = gpuArray(zeros(size(Wfr))); GpmsxU = gpuArray(zeros(size(U)));
                                    Gpmsxbh = gpuArray(zeros(size(bh))); Gpmsxbo = gpuArray(zeros(size(bo)));
                                    
                                else
                                    
                                    GWi = Wi;  GWfr = Wfr; GU = U; Gbh = bh; Gbo = bo;
                                    
                                    GpdWi = zeros(size(Wi));  GpdWfr = zeros(size(Wfr)); GpdU = zeros(size(U));
                                    Gpdbh = zeros(size(bh)); Gpdbo = zeros(size(bo));
                                    
                                    GpmsgWi = zeros(size(Wi));  GpmsgWfr = zeros(size(Wfr)); GpmsgU = zeros(size(U));
                                    Gpmsgbh = zeros(size(bh)); Gpmsgbo = zeros(size(bo));
                                    
                                    GpmsxWi = zeros(size(Wi));  GpmsxWfr = zeros(size(Wfr)); GpmsxU = zeros(size(U));
                                    Gpmsxbh = zeros(size(bh)); Gpmsxbo = zeros(size(bo));
                                    
                                end
                                trnrnn
                            end
                        end
                    end
                end
            end
        end
        
    case 'adam'
        
        % Training DNN using ADAM - SGD
        
        % Ref: ADAM : A Method For Stochastic Optimization - ICLR 2015 - D.P.Kingma and J.L.Ba
        
        alpha_vec = [1e-5];
        beta1_vec = [0.9 0.95];
        beta2_vec = [0.99 0.9];
        eps_hp = 1e-8;
        lam = 1 - eps_hp;
        
        for l1 = l1_vec
            for l2 = l2_vec
                for alpha = alpha_vec
                    for beta1 = beta1_vec
                        for beta2 = beta2_vec
                            
                            % Step 4 : Weight initialization
                            wt_init
                            
                            arch_name2 = strcat('_l2',num2str(l2),'alpha',num2str(alpha),'_b1',num2str(beta1),'_b2',num2str(beta2));
                            arch_name = strcat(arch_name1,arch_name2,'_',wtinit_meth)
                            
                            % Step 5 : Training
                            if gpu_flag
                                
                                GWi = gpuArray(Wi);  GWfr = gpuArray(Wfr); GU = gpuArray(U); Gbh = gpuArray(bh); Gbo = gpuArray(bo);
                                
                                GpmWi = gpuArray(zeros(size(Wi)));  GpmWfr = gpuArray(zeros(size(Wfr))); GpmU = gpuArray(zeros(size(U)));
                                Gpmbh = gpuArray(zeros(size(bh))); Gpmbo = gpuArray(zeros(size(bo)));
                                
                                GpvWi = gpuArray(zeros(size(Wi)));  GpvWfr = gpuArray(zeros(size(Wfr))); GpvU = gpuArray(zeros(size(U)));
                                Gpvbh = gpuArray(zeros(size(bh))); Gpvbo = gpuArray(zeros(size(bo)));
                                
                            else
                                
                                GWi = Wi;  GWfr = Wfr; GU = U; Gbh = bh; Gbo = bo;
                                
                                GpmWi = zeros(size(Wi));  GpmWfr = zeros(size(Wfr)); GpmU = zeros(size(U));
                                Gpmbh = zeros(size(bh)); Gpmbo = zeros(size(bo));
                                
                                GpvWi = zeros(size(Wi));  GpvWfr = zeros(size(Wfr)); GpvU = zeros(size(U));
                                Gpvbh = zeros(size(bh)); Gpvbo = zeros(size(bo));
                                
                            end
                            trnrnn
                        end
                    end
                end
            end
        end
        
        
end



