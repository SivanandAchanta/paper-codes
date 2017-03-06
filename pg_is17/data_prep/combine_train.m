% Purpose: Combining val and test data of different languages

clear all; close all; clc;

lang_name = {'tel','tam'};
X = [];
Y = [];
c = [];
matfiles_dir = '../matfiles_16KHz/';
mkdir(matfiles_dir);

train_str = 'train1';

for i = 1:length(lang_name)
    
    data_dir = strcat('../../../../../',lang_name{i},'/M/nnspss/matfiles_16KHz/');
    load(strcat(data_dir,train_str,'.mat'));
    
    c = clv(:)';
    
end

clear data targets clv

data = X; 
clear X;

targets = Y;
clear Y;
clv = c;

save(strcat(matfiles_dir,train_str,'.mat'),'data','targets','clv','-v7.3')
