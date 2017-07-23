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
m = 0;
v = 0;
mo = 0;
vo = 0;
nb_vec = [];
lang_list = {'hin','kan','mal','tam','tel'};
gen_list = {'M','F'};

do_mvnf = 0;

if do_mvnf
    for j = 1:length(lang_list)
        j
        for k = 1:length(gen_list)   
	    datadir = strcat('../../../',lang_list{j},'/',gen_list{k},'/matfiles_16KHz/');

            nb = dir(strcat(datadir,'train*'));
            nb = length(nb);
        
            nb_vec = [nb_vec nb];

            if j == 4 && k == 2
               continue
            end
        
            for i = 1:nb
            
               fprintf('Loading batch %d ... \n',i);
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
            
               % Input file preprocessing
               if intmvnf
                  m = m + sum(data);
                  v = v + sum(data.^2);
               end
            
               if outtmvnf
                  mo = mo + sum(targets);
                  vo = vo + sum(targets.^2);
               end
            
               clv = clv(:)';
               temp_clv = [temp_clv clv];
            
               clear data targets clv
            end 
        end
    end
    
    din = length(m);
    dout = length(mo);
    
    train_clv = [1 temp_clv];
    train_clv = cumsum(train_clv);
    train_numbats = length(train_clv) - 1
    save('train_numbats.mat','train_numbats');
    save('train_clv.mat','train_clv');

    Nin = train_clv(end)-1
    
    datadir = '../matfiles_16KHz/';
    
    % Input feature normalization
    if intmvnf
        disp('Normalizing input feats using mean variance normalization ...')
        
        m = m/Nin;
        v = sqrt(v/(Nin-1) - m.^2);
        save(strcat(datadir,'mvni.mat'),'m','v');
        
    end
    
    % Output features normaization
    if outtmvnf
        disp('Normalizing output feats using mean variance normalization ...');
        
        mo = mo/Nin;
        vo = sqrt(vo/(Nin-1) - mo.^2);
        save(strcat(datadir,'mvno.mat'),'mo','vo');
        
    end
    
    fprintf(1, 'Size of the training dataset %5d \n', Nin);
    
else
    
    for j = 1:length(lang_list)
        for k = 1:length(gen_list)

            datadir = strcat('../../../',lang_list{j},'/',gen_list{k},'/matfiles_16KHz/');
            nb = dir(strcat(datadir,'train*'));
            nb = length(nb);
            nb_vec = [nb_vec nb];
        end
    end
    
    nb_vec
    
    datadir = '../matfiles_16KHz/';
    load(strcat(datadir,'mvni.mat'));
    load(strcat(datadir,'mvno.mat'));
    
    din = length(m);
    dout = length(mo);

    load('train_clv.mat') 
    Nin = train_clv(end)-1
    
    load('train_numbats.mat')
end

%% Step 2 : Make Validation data

load(strcat(datadir,'val.mat'));
val_batchdata = single(data);
if intmvnf
    I1 = bsxfun(@minus,val_batchdata(:,mvnivec),m(:,mvnivec));
    I1 = bsxfun(@rdivide,I1,v(:,mvnivec)+1e-5);
    val_batchdata(:,mvnivec) = I1;
    clear I1
end

if intmmnf
    I1 = bsxfun(@minus,val_batchdata(:,mvnivec),mini(:,mvnivec));
    I1 = bsxfun(@rdivide,I1,maxi(:,mvnivec)+1e-5);
    val_batchdata(:,mvnivec) = I1;
    clear I1
end

val_batchdata = val_batchdata(:,invec);

val_batchtargets = single(targets);
if outtmvnf
    I1 = bsxfun(@minus,val_batchtargets,mo);
    I1 = bsxfun(@rdivide,I1,vo+1e-5);
    val_batchtargets = I1;
end

if outtmmnf
    I1 = bsxfun(@minus,val_batchtargets,minv);
    I1 = bsxfun(@rdivide,I1,maxv);
    val_batchtargets = I1;
    clear I1
end

val_batchtargets = single(val_batchtargets(:,outvec));
clv = clv(:)';
val_clv = cumsum([1 clv]);
val_numbats = length(val_clv) - 1;
clear data targets clv

if sum(sum(isnan(val_batchdata)))
    disp('there are NaN eles in val data');
    pause
end

if sum(sum(isnan(val_batchtargets)))
    disp('there are NaN eles in val targets');
    pause
end


%{
%% Step 3 : Make Test data
load(strcat(datadir,'val.mat'));
test_batchdata = single(data);
if intmvnf
    I1 = bsxfun(@minus,test_batchdata(:,mvnivec),m(:,mvnivec));
    I1 = bsxfun(@rdivide,I1,v(:,mvnivec)+1e-5);
    test_batchdata(:,mvnivec) = I1;
    clear I1
end

if intmmnf
    I1 = bsxfun(@minus,test_batchdata(:,mvnivec),mini(:,mvnivec));
    I1 = bsxfun(@rdivide,I1,maxi(:,mvnivec)+1e-5);
    test_batchdata(:,mvnivec) = I1;
    clear I1
end


test_batchdata = test_batchdata(:,invec);

test_batchtargets = single(targets);
if outtmvnf
    I1 = bsxfun(@minus,test_batchtargets,mo);
    I1 = bsxfun(@rdivide,I1,vo+1e-5);
    test_batchtargets = I1;
    clear I1
end
if outtmmnf
    I1 = bsxfun(@minus,test_batchtargets,minv);
    I1 = bsxfun(@rdivide,I1,maxv);
    test_batchtargets = I1;
    clear I1
end

test_batchtargets = single(test_batchtargets(:,outvec));
clv = clv(:)';
test_clv = cumsum([1 clv]);
test_numbats = length(test_clv) - 1;
clear data targets clv

if sum(sum(isnan(test_batchdata)))
    disp('there are NaN eles in test data');
    pause
end

if sum(sum(isnan(test_batchtargets)))
    disp('there are NaN eles in test targets');
    pause
end

%}


disp('size of train i/o data');
[~,din] = size(val_batchdata)
[~,dout] = size(val_batchtargets)

disp('Number of Train, Validation and Test Batches ...')
train_numbats
val_numbats
test_numbats = val_numbats

