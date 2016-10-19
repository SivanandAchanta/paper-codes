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
datadir = ('../matfiles_6hrs/');

%datadir = '../../../matfiles_brnn/';
wtdir = ('../wt/');
errdir =  ('../err/');
% Set the input output dimensions and the normalization flags
outvec = [1:12];
invec = [1:39];
mvnivec = [1:39];
intmvnf = 1;
outtmvnf = 0;

% NN params settings
numepochs = 10 % Number of Epochs
trn_bs = 1000; % Batch-Size of Training Data
tst_bs = 1000;
gpu_flag = 1; % Set the flag to 0 to run on CPU
sgd_type = 'sgdcm' % (adam/adadelta/sgdcm)
arch_name1 ='700R500R200R100R' % Architecture
ol_type = 'M' % Ouput Layer Type ( Usually 'L' (Linear) for Regression Problems and 'M' (Softmax) for Classification Problems)
cfn = 'nll'  % Cost-function 'nll' (negative log-likelihood) for calssification and 'ls' (least squares) for regression
wtinit_meth = 'yi' % 'yi - yoshua init, rw - random walk init , si - sparse init'
l1 = 0; % l1 regularization penalty coefficent settings
l2_vec = [0.00002] % l2 regularization penalty coefficent settings
check_valfreq = 10000 %MKV % check validation loss for every "N" updates

switch sgd_type    
    case 'sgdcm'
        lr_vec = [1e-4];
        mf_vec = [0.9];
    case 'adadelta'
        rho_vec = [0.95 0.98];
        eps_vec = [1e-5 1e-6];
        mf_vec = [0];
    case 'adam'
        alpha_vec = [1e-4];
        beta1_vec = [0.9];
        beta2_vec = [0.999];
        eps_hp = 1e-8;
        lam = 1 - eps_hp;
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Do not change the below parameters %%%%%%%%%%%%%%%%%%%%%%%%%%%%

files = dir(strcat(datadir,'train.mat'));

nb = length(files);

clear files

mkdir(wtdir);
mkdir(errdir);

files = dir(strcat(wtdir,'W.mat'));
nwt = length(files) + 1;
clear files

% set params of nonlinearity
a_tanh = 1.7159;
b_tanh = 2/3;
bby2a = (b_tanh/(2*a_tanh));





