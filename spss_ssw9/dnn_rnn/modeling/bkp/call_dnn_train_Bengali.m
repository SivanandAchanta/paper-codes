clear all; close all; clc;

expname = 'exp_hts_mgcmapf048k_Bengali';
expdir = strcat('../',expname,'/');
datadir = strcat(expdir,'data/');

outvec = [1:338];
% invec = [1:263 297:347];
% mvnivec = [303:339 343:347];

invec = [1:318 352:402];
mvnivec = [358:394 398:402];

temp_clv = [];
train_batchdata = [];
train_batchtargets = [];
m = 0;
v = 0;
intmvnf = 1;
outtmvnf = 1;

for i = 1:4
    i
    load(strcat(datadir,'train',num2str(i),'.mat'));
    
    % Step1: make training data
    data = single(data);
    targets = single(targets(:,outvec));
    
    if sum(sum(isnan(data)))
        disp('there are NaN eles in data');
        pause
    end
    
    if sum(sum(isnan(targets)))
        disp('there are NaN eles in targets');
        pause
    end
    
    % Input file preprocessing
    if intmvnf
        m = m + sum(data);
        v = v + sum(data.^2);
    end
    
    train_batchdata = [train_batchdata;data];
    train_batchtargets = [train_batchtargets;targets];
    
    temp_clv = [temp_clv clv];
    
    clear data targets clv
end

[Nin,din] = size(train_batchdata)
[Nout,dout] = size(train_batchtargets)

if intmvnf
    m = m/Nin;
    v = sqrt(v/(Nin-1) - m.^2);
    save(strcat(datadir,'mvni.mat'),'m','v');
    
    I1 = bsxfun(@minus,train_batchdata(:,mvnivec),m(:,mvnivec));
    I1 = bsxfun(@rdivide,I1,v(:,mvnivec)+1e-5);
    train_batchdata(:,mvnivec) = I1;
end
clear I1;
train_batchdata = train_batchdata(:,invec);

if outtmvnf
    mo = mean(train_batchtargets);
    vo = std(train_batchtargets);
    save(strcat(datadir,'mvno.mat'),'mo','vo');
    minv = min(train_batchtargets) - 0.1;
    maxv = max(train_batchtargets) - minv + 0.1;
    I1 = bsxfun(@minus,train_batchtargets,minv);
    I1 = bsxfun(@rdivide,I1,maxv);
    train_batchtargets = I1;
    save(strcat(datadir,'maxmino.mat'),'maxv','minv');
end
clear I1;
train_batchtargets = train_batchtargets(:,outvec);

totnum=size(train_batchdata,1);
fprintf(1, 'Size of the training dataset= %5d \n', totnum);
rng(0); %so we know the permutation of the training data
randomorder=randperm(totnum);

% randomize the full training set
train_batchdata = train_batchdata(randomorder,:);
train_batchtargets = train_batchtargets(randomorder,:);

train_batchsize = 1000;
Ntrain = size(train_batchdata,1);
remsamps = mod(Ntrain,train_batchsize);
Ntrain = Ntrain - remsamps;

if sum(sum(isnan(train_batchdata)))
    disp('there are NaN eles in train data');
    pause
end

if sum(sum(isnan(train_batchtargets)))
    disp('there are NaN eles in train targets');
    pause
end

train_batchdata = makebatchdata_v2(train_batchdata(1:Ntrain,:),train_batchsize) ;
train_batchtargets = makebatchdata_v2(train_batchtargets(1:Ntrain,:),train_batchsize) ;
train_batchdata = single(train_batchdata);
train_batchtargets = single(train_batchtargets);


% Step2: make validation data
load(strcat(datadir,'val.mat'));
val_batchdata = single(data);
if intmvnf
    I1 = bsxfun(@minus,val_batchdata(:,mvnivec),m(:,mvnivec));
    I1 = bsxfun(@rdivide,I1,v(:,mvnivec)+1e-5);
    val_batchdata(:,mvnivec) = I1;
end
clear I1;
val_batchdata = val_batchdata(:,invec);

val_batchtargets = single(targets(:,outvec));
if outtmvnf
    I1 = bsxfun(@minus,val_batchtargets,minv);
    I1 = bsxfun(@rdivide,I1,maxv);
    val_batchtargets = I1;
end
val_batchtargets = single(val_batchtargets(:,outvec));
val_clv = cumsum([1 clv]);
val_numbats = length(val_clv) - 1;
clear data targets clv

val_batchsize = 10000;
Nval = size(val_batchdata,1);
remsamps = mod(Nval,val_batchsize);
Nval = Nval - remsamps;

if sum(sum(isnan(val_batchdata)))
    disp('there are NaN eles in val data');
    pause
end

if sum(sum(isnan(val_batchtargets)))
    disp('there are NaN eles in val targets');
    pause
end

valdata = val_batchdata(1:Nval,:);
valtargets = val_batchtargets(1:Nval,:);
[val_batchdata,val_batchtargets] = makebatchdata(valdata,valtargets,val_batchsize) ;
val_batchdata = single(val_batchdata);
val_batchtargets = single(val_batchtargets);

clear valdata valtargets;

% Step3: make test data
load(strcat(datadir,'test.mat'));
test_batchdata = single(data);
if intmvnf
    I1 = bsxfun(@minus,test_batchdata(:,mvnivec),m(:,mvnivec));
    I1 = bsxfun(@rdivide,I1,v(:,mvnivec)+1e-5);
    test_batchdata(:,mvnivec) = I1;
end
clear I1;
test_batchdata = test_batchdata(:,invec);

test_batchtargets = single(targets(:,outvec));
if outtmvnf
    I1 = bsxfun(@minus,test_batchtargets,minv);
    I1 = bsxfun(@rdivide,I1,maxv);
    test_batchtargets = I1;
end
test_batchtargets = single(test_batchtargets(:,outvec));
test_clv = cumsum([1 clv]);
test_numbats = length(test_clv) - 1;
clear data targets clv

test_batchsize = 10000;
Ntest = size(test_batchdata,1);
remsamps = mod(Ntest,test_batchsize);
Ntest = Ntest - remsamps;

if sum(sum(isnan(test_batchdata)))
    disp('there are NaN eles in test data');
    pause
end

if sum(sum(isnan(test_batchtargets)))
    disp('there are NaN eles in test targets');
    pause
end

testdata = single(test_batchdata(1:Ntest,:));
testtargets = single(test_batchtargets(1:Ntest,:));
[test_batchdata,test_batchtargets] = makebatchdata(testdata,testtargets,test_batchsize) ;
test_batchdata = single(test_batchdata);
test_batchtargets = single(test_batchtargets);

clear testdata testtargets;

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
numepochs = 60;

mf_vec = [0.9]; % momentum factor
berp = [1 1 1 1 1 1 1]; % bernoulli prob of output layer is always 1
mncflag = 0;
mnc = 4;

wtdir = strcat('../wt/',expname,'/');
errdir = strcat('../err/',expname,'/');
mkdir(wtdir);
mkdir(errdir);

% initialize nonlinearity and learning rate per layer params
l1 = 0.00;
l2 = 0.0000;
rhoada = 0.95;
epsada = 1e-5;
eta = 1e-3;
cfn = 'ls';
a_tanh = 1.7159;
b_tanh = 2/3;
bby2a = (b_tanh/(2*a_tanh));


for mfi = 1:length(mf_vec)
    mf = mf_vec(mfi)
    
    arch_name = strcat('2x1000R182L','_bs',num2str(train_batchsize),'_flr_mf',num2str(eta),num2str(mf),'_withoutdropout');
    nl = [din 1000 1000 dout];
    nh = length(nl) - 1; % number of hidden layers
    f = [ 'R' 'R' 'L'];
    
    if (length(nl) - 1) ~= length(f)
        disp('number of hidden o/p fns mus be same as number of hidden layers');
    end
    
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
    
    traindnn_flrnag
end
