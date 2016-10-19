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

%clear all; close all; clc;


%% Step 1 : Make Training data
temp_clv = [];
train_batchdata = [];
train_batchtargets = [];

nb = dir(strcat(datadir,'train*'));
nb = length(nb);

for i = 1:2%:nb
    i
    load(strcat(datadir,'train',num2str(i),'.mat'));
    
    % Step1: make training data
    data = single(data);
    targets = single(targets);
    
    if sum(sum(isnan(data)))
        disp('there are NaN eles in data');
        pause
    end
    
    if sum(sum(isnan(targets)))
        disp('there are NaN eles in targets');
        pause
    end
    
    train_batchdata = single([train_batchdata;data]);
    train_batchtargets = single([train_batchtargets;targets]);
    
    temp_clv = [temp_clv clv];
    
    clear data targets clv
end

[Nin,din] = size(train_batchdata);
[Nout,dout] = size(train_batchtargets);
train_clv = [1 temp_clv];
train_clv = cumsum(train_clv);
train_numbats = length(train_clv) - 1;

% Input feature normalization
if intmvnf
    disp('Normalizing input feats using mean variance normalization ...')
    
    for i = mvnivec
        I1 = bsxfun(@minus,train_batchdata(:,i),m(:,i));
        I1 = bsxfun(@rdivide,I1,v(:,i)+1e-5);
        train_batchdata(:,i) = I1;
    end

    clear I1;
end

if intmmnf
    disp('Normalizing input feats using min max normalization ...')

    for i = mvnivec
        I1 = bsxfun(@minus,train_batchdata(:,i),mini(:,i));
        I1 = bsxfun(@rdivide,I1,maxi(:,i)+1e-5);
        train_batchdata(:,i) = I1;
    end

    clear I1;
end

train_batchdata = train_batchdata(:,invec);

% Output features normaization
if outtmvnf
    disp('Normalizing output feats using mean variance normalization ...');

    for i = 1:dout
       I1 = bsxfun(@minus,train_batchtargets(:,i),mo(:,i));
       I1 = bsxfun(@rdivide,I1,vo(:,i));
       train_batchtargets(:,i) = I1;
    end

    clear I1
end

if outtmmnf
    disp('Normalizing output feats using min max normalization ...');

    for i = 1:dout
       I1 = bsxfun(@minus,train_batchtargets(:,i),minv(:,i));
       I1 = bsxfun(@rdivide,I1,maxv(:,i));
       train_batchtargets(:,i) = I1;
    end

    clear I1
end

train_batchtargets = train_batchtargets(:,outvec);

totnum = size(train_batchdata,1);
fprintf(1, 'Size of the training dataset %5d \n', totnum);

if sum(sum(isnan(train_batchdata)))
    disp('there are NaN eles in train data');
    pause
end

if sum(sum(isnan(train_batchtargets)))
    disp('there are NaN eles in train targets');
    pause
end

disp('size of train i/o data');
[Nin,din] = size(train_batchdata)
[Nout,dout] = size(train_batchtargets)

disp('Number of Train Batches ...')
train_numbats

