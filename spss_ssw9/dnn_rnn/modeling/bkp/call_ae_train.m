% clear all; close all; clc;
% 
% % data = dlmread('../data/in_allunits.txt');
% % targets = dlmread('../data/out_allunits.txt');
% 
% load('../data/train.mat');
% % load('../data/targets.mat');
% data = single(targets);
% targets = single(targets);
% 
% tmvnf = 0;
% % Input file preprocessing
% if tmvnf
%     m = mean(data(:,265:268));
%     v = std(data(:,265:268));
%     I1 = bsxfun(@minus,data(:,265:268),m);
%     I1 = bsxfun(@rdivide,I1,v+1e-5);
%     data = [data(:,1:221) I1];
%     save('../data/mvn.mat','m','v');
% end
% 
% % data = data(:,[1:221 298:303]);
% % targets = targets - min(min(targets));
% size(data)
% size(targets)
% 
% totnum=size(data,1);
% fprintf(1, 'Size of the training dataset= %5d \n', totnum);
% rng(0); %so we know the permutation of the training data
% randomorder=randperm(totnum);
% 
% % randomize the full training set
% data = data(randomorder,:);
% targets = targets(randomorder,:);
% 
% % split the train and validation data
% Ntrain = 440000;
% traindata = data(1:Ntrain,:);
% traintargets = targets(1:Ntrain,:);
% train_batchsize = 1000;
% [train_batchdata,train_batchtargets] = makebatchdata(traindata,traintargets,train_batchsize) ;
% train_batchdata = single(train_batchdata);
% train_batchtargets = single(train_batchtargets);
% 
% % split the full training data into train data and validation data
% Nval = 100000;
% valdata = data(Ntrain+1:Ntrain+Nval,:);
% valtargets = targets(Ntrain+1:Ntrain+Nval,:);
% val_batchsize = 10000;
% [val_batchdata,val_batchtargets] = makebatchdata(valdata,valtargets,val_batchsize) ;
% val_batchdata = single(val_batchdata);
% val_batchtargets = single(val_batchtargets);
% 
% clear data targets valdata valtargets traindata traintargets;
% 
% Ntest = 50000;
% load('../data/test.mat');
% testdata = single(targets(1:Ntest,:));
% if tmvnf
%     I1 = bsxfun(@minus,testdata(:,265:268),m);
%     I1 = bsxfun(@rdivide,I1,v+1e-5);
%     testdata = [testdata(:,1:221) I1];
% end
% testtargets = single(targets(1:Ntest,:));
% test_batchsize = 10000;
% [test_batchdata,test_batchtargets] = makebatchdata(testdata,testtargets,test_batchsize) ;
% test_batchdata = single(test_batchdata);
% test_batchtargets = single(test_batchtargets);
% 
% clear data targets testdata testtargets;

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
numepochs = 100*(train_batchsize);

arch_name = strcat('1500R100R750R500R250R100R50R10L164L','_bs',num2str(train_batchsize));
nl = [din 1500 1000 750 500 250 100 50 10 50 100 250 500 750 1000 1500 dout];
nh = length(nl) - 1; % number of hidden layers
f = [ 'R' 'R' 'R' 'R' 'R' 'R' 'R' 'L' 'R' 'R' 'R' 'R' 'R' 'R' 'R' 'L'];

if (length(nl) - 1) ~= length(f)
    disp('number of hidden o/p fns mus be same as number of hidden layers');
end

% initialize nonlinearity and learning rate per layer params
mf = 0.9; % momentum factor
berp = ones(1,length(nl)); % bernoulli prob of output layer is always 1
mncflag = 0;
mnc = 4;
l1 = 0.00;
l2 = 0.00001;
rhoada = 0.98;
epsada = 1e-7;
cfn = 'ls';
a_tanh = 1.7159;
b_tanh = 2/3;
bby2a = (b_tanh/(2*a_tanh));
aeta = [1./(25*nl(1:end-2)) 1./(25*sum(nl(2:end)))];
aeta = 0.0001*ones(1,nh);

% weight initialization
nlv = 1:nh;
wtl = [1 nl(nlv).*nl(nlv+1)];
wtl = cumsum(wtl);
btl = cumsum([1 nl(nlv+1)]);

W = zeros(1,sum(nl(1:end-1).*nl(2:end)));
b = zeros(1,sum(nl(2:end)));

winit_meth = 'yoshua';

switch winit_meth
    case 'kp_init'
        for i = 1:nh
            maxweight = 3/sqrt(nl(i));
            W(1,wtl(i):wtl(i+1)-1) = 2*maxweight*rand(1,nl(i)*nl(i+1)) - maxweight;
        end
    otherwise
        for i = 1:nh-1
            maxweight = sqrt(6/(nl(i) + nl(i+1)));
            W(1,wtl(i):wtl(i+1)-1) = 2*maxweight*rand(1,nl(i)*nl(i+1)) - maxweight;
        end
end

Gb = gpuArray(b);
GW = gpuArray(W);
pdb = zeros(size(b));
pdW = zeros(size(W));
Gpdb = gpuArray(pdb);
GpdW = gpuArray(pdW);
Gpmsgbt = gpuArray(zeros(1,btl(end)-1));
GpmsgWt = gpuArray(zeros(1,wtl(end)-1));
Gpmsxbt = gpuArray(zeros(1,btl(end)-1));
GpmsxWt = gpuArray(zeros(1,wtl(end)-1));

disp('size of weight matrix');
size(W)

%%%%%%%%%%%%%%%%%%%%%%%%% done with initialization %%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%% actual ANN training starts here %%%%%%%%%%%%%%%%

wtdir = '../wt/';
errdir = '../err/';
mkdir(wtdir);
mkdir(errdir);
traindnn
