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

% Make directories to write parameter files , error per epoch
datadir = '../../matfiles/';
wtdir = '../../wt/';
errdir = '../../err/';

% Set the input output dimensions and the normalization flags
outvec = [1:150];
invec = [1:347];
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

% NN params settings
numepochs = 10; % Number of Epochs
trn_bs = 500; % Batch-Size of Training Data
gpu_flag = 1; % Set the flag to 0 to run on CPU
sgd_type = 'adadelta'; % (adam/adadelta/sgdcm)
arch_name1 = '750R500R'; % Architecture
ol_type = 'L'; % Ouput Layer Type ( Usually 'L' (Linear) for Regression Problems and 'M' (Softmax) for Classification Problems)
cfn = 'ls';  % Cost-function 'nll' (negative log-likelihood) for calssification and 'ls' (least squares) for regression
wtinit_meth = 'yi'; % 'yi - yoshua init, rw - random walk init , si - sparse init'
l1 = 0; % l1 regularization penalty coefficent settings
l2_vec = [0.00005]; % l2 regularization penalty coefficent settings
check_valfreq = 1000; % check validation loss for every "N" updates
gv_flag = 0;
lambda = 0.005;
lambda_D1 = 0.1;

switch sgd_type
    case 'sgdcm'
        lr_vec = [1e-3 1e-4];
        mf_vec = [0.9];
    case 'adadelta'
        rho_vec = [0.98];
        eps_vec = [1e-8];
        mf_vec = [0];
    case 'adam'
        alpha_vec = [1e-3 1e-4];
        beta1_vec = [0.9];
        beta2_vec = [0.999];
        eps_hp = 1e-6;
        lam = 1 - eps_hp;
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Do not change the below parameters %%%%%%%%%%%%%%%%%%%%%%%%%%%%

files = dir(strcat(datadir,'train*.mat'));
nb = length(files);
clear files

mkdir(wtdir);
mkdir(errdir);

files = dir(strcat(wtdir,'W*.mat'));
nwt = length(files) + 1;
clear files

% set params of nonlinearity
a_tanh = 1.7159;
b_tanh = 2/3;
bby2a = (b_tanh/(2*a_tanh));





