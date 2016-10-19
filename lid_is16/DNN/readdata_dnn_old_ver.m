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

temp_clv = [];
train_batchdata = [];
train_batchtargets = [];
m = 0;
v = 0;

for i = 1:nb
    i
    load(strcat(datadir,'train','.mat'));
    
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
    disp('Normalizing input feats ...')
    
    m = m/Nin;
    v = sqrt(v/(Nin-1) - m.^2);
    save(strcat(datadir,'mvni.mat'),'m','v');
    
    for i = mvnivec
        I1 = bsxfun(@minus,train_batchdata(:,i),m(:,i));
        I1 = bsxfun(@rdivide,I1,v(:,i)+1e-5);
        train_batchdata(:,i) = I1;
    end
    
    clear I1;
end

train_batchdata = train_batchdata(:,invec);

if outtmvnf
    disp('Normalizing output feats ...');
    
    mo = mean(train_batchtargets);
    vo = std(train_batchtargets);
    save(strcat(datadir,'mvno.mat'),'mo','vo');
    
    minv = min(train_batchtargets) - 0.1;
    maxv = max(train_batchtargets) - minv + 0.1;
    save(strcat(datadir,'maxmino.mat'),'maxv','minv');
    
    for i = 1:dout
        I1 = bsxfun(@minus,train_batchtargets(:,i),minv(:,i));
        I1 = bsxfun(@rdivide,I1,maxv(:,i));
        train_batchtargets(:,i) = I1;
    end
    
    clear I1
end

train_batchtargets = train_batchtargets(:,outvec);


totnum = size(train_batchdata,1);
fprintf(1, 'Size of the training dataset = %5d \n', totnum);
rng(0); %so we know the permutation of the training data
randomorder=randperm(totnum);

% randomize the full training set
train_batchdata = train_batchdata(randomorder,:);
train_batchtargets = train_batchtargets(randomorder,:);

train_batchsize = trn_bs;
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
val_clv = cumsum([1;clv]);
val_numbats = length(val_clv) - 1;
clear data targets clv
val_batchsize=tst_bs;


if sum(sum(isnan(val_batchdata)))
    disp('there are NaN eles in val data');
    pause
end

if sum(sum(isnan(val_batchtargets)))
    disp('there are NaN eles in val targets');
    pause
end


clear valdata valtargets;

% Step3: make test data
load(strcat(datadir,'/','test.mat'));
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
test_clv = cumsum([1;clv]);
test_numbats = length(test_clv) - 1;
clear data targets clv

test_batchsize=tst_bs;
if sum(sum(isnan(test_batchdata)))
    disp('there are NaN eles in test data');
    pause
end

if sum(sum(isnan(test_batchtargets)))
    disp('there are NaN eles in test targets');
    pause
end

% val_batchsize=tst_bs;
clear testdata testtargets;

disp('size of train i/o data');
[trn_bs,din,train_numbats] = size(train_batchdata)
[trn_bs,dout,train_numbats] = size(train_batchtargets)

