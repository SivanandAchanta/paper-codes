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
function [] = call_trainrnn_fn(numepochs,arch_name,sgd_type,init_meth,enc,si,ri,so,gcth,lr,mf)

% NN params settings
numepochs = str2num(numepochs)
gpu_flag = 0 % Set the flag to 0 to run on CPU
sgd_type = sgd_type % (adam/adadelta/sgdcm)
arch_name1 = arch_name % Architecture
ol_type = 'L' % Ouput Layer Type ( Usually 'L' (Linear) for Regression Problems and 'M' (Softmax) for Classification Problems)
cfn = 'ls' % cost function 'nll' for calssification and 'ls' for regression
wtinit_meth = init_meth
check_valfreq = 1000 % check validtion error for every "check_valfreq" minibats
model_name = enc

% Make directories to write parameter files , error per epoch
datadir = '../matfiles/';
wtdir = '../wt/';
errdir = '../err/';

% Set the input output dimensions and the normalization flags
outvec = [1:150];
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
ri = str2num(ri);
so = str2num(so);

set_specradflag = 1; % set spectral radius flag
specrad = 1; % spectral radius
nnz = 20;
opts.tol = 1e-6;
mask_flag = 0; % for sparse initialization

% gradient clipping hyperparameters
gcth_vec = [str2num(gcth)];
gc_flag = 1;

% Step 1 : Read data
readdata_rnn

% make directories to write parameter files , error per epoch and average lengths of gradients
mkdir(wtdir);
mkdir(errdir);

files = dir(strcat(wtdir,'W_*'));
nwt = length(files);
clear files
nwt

rnn_archname = '247L500R150L_rnn_lw_l20_lr3e-05_mf0.3_gc1_si0.01_ri0.1_so0.01_rnn_mvni_mvno_30';
load(strcat(wtdir,'W_',rnn_archname,'.mat'))
f_mgc  = 'RL'
nl_mgc = [247 500 150];
Wi_mgc = Wi; Wfr_mgc = Wfr; U_mgc = U;
bh_mgc = bh; bo_mgc = bo;
nl_rnn = nl_mgc; f_rnn = f_mgc;

din = din + nl_mgc(2);

% Step 2 : Set architecture
arch_name1 = strcat(arch_name1,num2str(dout),ol_type);
arch_init
arch_name1 = strcat(arch_name1,'_',model_name,'_',wtinit_meth);

% Step 3 : Train according to SGD Type (adam/adadelta/sgdcm)

% l1 and l2 regularization penalty coefficent settings
l1_vec = [0];
l2_vec = [0];

% set hyper params
switch sgd_type
    
    case 'sgdcm'
        
        % Training DNN using Naive SGD with classical momentum
        
        lr_vec = [str2num(lr)];
        mf_vec = [str2num(mf)];
        
        for l1 = l1_vec
            for l2 = l2_vec
                for lr = lr_vec
                    for mf = mf_vec
                        for gcth = gcth_vec
                            
                            % Step 4 : Weight initialization
                            wt_init
                            
                            arch_name2 = strcat('_l2',num2str(l2),'_lr',num2str(lr),'_mf',num2str(mf),'_gc',num2str(gcth), ...
                                '_si',num2str(si),'_ri',num2str(ri),'_so',num2str(so),'_',model_name,'_',in_nml_meth,'_',out_nml_meth);
                            arch_name = strcat(arch_name1,arch_name2,'_',num2str(nwt))
                            nwt = nwt + 1;
                            if gpu_flag
                                
                                GWi = gpuArray(Wi);  GWfr = gpuArray(Wfr); GU = gpuArray(U); Gbh = gpuArray(bh); Gbo = gpuArray(bo);
                                
                                GpdWi = gpuArray(zeros(size(Wi)));  GpdWfr = gpuArray(zeros(size(Wfr))); GpdU = gpuArray(zeros(size(U)));
                                Gpdbh = gpuArray(zeros(size(bh))); Gpdbo = gpuArray(zeros(size(bo)));
                                
                            else
                                
                                GWi = Wi;  GWfr = Wfr; GU = U; Gbh = bh; Gbo = bo;
                                
                                GpdWi = zeros(size(Wi));  GpdWfr = zeros(size(Wfr)); GpdU = zeros(size(U));
                                Gpdbh = zeros(size(bh)); Gpdbo = zeros(size(bo));
                            end
                            trainer
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



