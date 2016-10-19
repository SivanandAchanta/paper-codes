%%#########################################################################
%%                                                                       ##
%%                                                                       ##
%%                       IIIT Hyderabad, India                           ##
%%                      Copyright (c) 2014-2015                          ##
%%                        All Rights Reserved.                           ##
%%                                                                       ##
%%  Permission is hereby granted, free of charge, to use and distribute  ##
%%  this software and its documentation without restriction, including   ##
%%  without limitation the rights to use, copy, modify, merge, publish,  ##
%%  distribute, sublicense, and/or sell copies of this work, and to      ##
%%  permit persons to whom this work is furnished to do so, subject to   ##
%%  the following conditions:                                            ##
%%   1. The code must retain the above copyright notice, this list of    ##
%%      conditions and the following disclaimer.                         ##
%%   2. Any modifications must be clearly marked as such.                ##
%%   3. Original authors' names are not deleted.                         ##
%%   4. The authors' names are not used to endorse or promote products   ##
%%      derived from this software without specific prior written        ##
%%      permission.                                                      ##
%%                                                                       ##
%%  IIIT HYDERABAD AND THE CONTRIBUTORS TO THIS WORK                     ##
%%  DISCLAIM ALL WARRANTIES WITH REGARD TO THIS SOFTWARE, INCLUDING      ##
%%  ALL IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS, IN NO EVENT   ##
%%  SHALL IIIT HYDERABAD NOR THE CONTRIBUTORS BE LIABLE                  ##
%%  FOR ANY SPECIAL, INDIRECT OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES    ##
%%  WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN   ##
%%  AN ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION,          ##
%%  ARISING OUT OF OR IN CONNECTION WITH THE USE OR PERFORMANCE OF       ##
%%  THIS SOFTWARE.                                                       ##
%%                                                                       ##
%%#########################################################################
%%                                                                       ##
%%          Author :  Sivanand Achanta (sivanand.a@research.iiit.ac.in)  ##
%%          Date   :  Jun. 2015                                          ##
%%                                                                       ##
%%#########################################################################


% Training DNN using ADAM - SGD 

% Ref: ADAM : A Method For Stochastic Optimization - ICLR 2015 - D.P.Kingma and J.L.Ba

readdata_dnn_Tel

disp('size of train i/o data');
[~,din,train_numbats] = size(train_batchdata)
[~,dout,train_numbats] = size(train_batchtargets)

disp('size of validation i/o data');
[~,~,val_numbats] = size(val_batchdata)
[~,~,val_numbats] = size(val_batchtargets)

disp('size of test i/o data');
[~,~,test_numbats] = size(test_batchdata)
[~,~,test_numbats] = size(test_batchtargets)

% nn params settings
numepochs = 15;

mf_vec = [0]; % momentum factor
berp = [1 1 1 1 1 1 1 1 1 1 1]; % bernoulli prob of output layer is always 1
mncflag = 0;
mnc = 4;

nl = [din 1500 1500 1500 dout];
nh = length(nl) - 1; % number of hidden layers
f = [ 'R' 'R' 'R' 'L'];

if (length(nl) - 1) ~= length(f)
    disp('number of hidden o/p fns mus be same as number of hidden layers');
end

% weight initialization
nlv = 1:nh;
wtl = [1 nl(nlv).*nl(nlv+1)];
wtl = cumsum(wtl);
btl = cumsum([1 nl(nlv+1)]);


arch_name1 = strcat(num2str(din),'L');
for i = 1:nh
    arch_name1 = strcat(arch_name1,num2str(nl(i+1)),f(i));
end


wtdir = strcat('../wt/',expname,'/');
errdir = strcat('../err/',expname,'/');
lendir = strcat('../len/',expname,'/');

mkdir(wtdir);
mkdir(errdir);
mkdir(lendir);

% initialize nonlinearity and learning rate per layer params
l1_vec = [0];
l2_vec = [0.00001 0.00005 0.0001 0.000001];


% set hyper params
alpha = 1e-4;
beta1 = 0.9;
beta2 = 0.999;
eps_hp = 1e-8;
lam = 1 - eps_hp;

cfn = 'ls';
a_tanh = 1.7159;
b_tanh = 2/3;
bby2a = (b_tanh/(2*a_tanh));

expnum = 1;

for l1 = l1_vec
for l2 = l2_vec

l1
l2

arch_name = strcat(arch_name1,'_bs',num2str(train_batchsize),'_',num2str(expnum));
expnum = expnum + 1;

W = zeros(1,sum(nl(1:end-1).*nl(2:end)));
b = zeros(1,sum(nl(2:end)));

winit_meth = 'yi';

switch winit_meth
    case 'ki'
        for i = 1:nh
            maxweight = 3/sqrt(nl(i));
            W(1,wtl(i):wtl(i+1)-1) = 2*maxweight*rand(1,nl(i)*nl(i+1)) - maxweight;
        end
    case 'loadwt'
        load(strcat(wtdir,'W_',arch_name,'.mat'))
    otherwise
        for i = 1:nh-1
            maxweight = sqrt(6/(nl(i) + nl(i+1)));
            W(1,wtl(i):wtl(i+1)-1) = 2*maxweight*rand(1,nl(i)*nl(i+1)) - maxweight;
        end
end

Gb = gpuArray(b);
GW = gpuArray(W);
% pdb = zeros(size(b));
% pdW = zeros(size(W));
% Gpdb = gpuArray(pdb);
% GpdW = gpuArray(pdW);
Gpmbt = gpuArray(zeros(1,btl(end)-1));
GpmWt = gpuArray(zeros(1,wtl(end)-1));
Gpvbt = gpuArray(zeros(1,btl(end)-1));
GpvWt = gpuArray(zeros(1,wtl(end)-1));

disp('size of weight matrix');
size(W)

%%%%%%%%%%%%%%%%%%%%%%%%% done with initialization %%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%% actual ANN training starts here %%%%%%%%%%%%%%%%

traindnn_adam

end

end

