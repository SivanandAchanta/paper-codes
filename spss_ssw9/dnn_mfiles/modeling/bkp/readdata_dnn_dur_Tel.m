clear all; close all; clc;

expname = 'exp_hts_dur_Telugu';
expdir = strcat('../',expname,'/');
datadir = strcat(expdir,'data/');

outvec = [1];
invec = [1:263 297:339];
mvnivec = [303:339];

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

train_batchsize = 100;
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

val_batchsize = 1000;
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

test_batchsize = 1000;
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
