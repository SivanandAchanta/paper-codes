% Purpose: Combining val and test data of different languages

clear all; close all; clc;

lang_name = {'tel','tam','kan','mal','hin'};
X = [];
Y = [];
c = [];
matfiles_dir = '../matfiles_16KHz/';
mkdir(matfiles_dir);

test_val_str = 'test';

for i = 1:length(lang_name)
    fprintf('Processing lang: %s \n',lang_name{i});
    data_dir = strcat('../../../../../',lang_name{i},'/M/nnspss/matfiles_16KHz/');
    load(strcat(data_dir,test_val_str,'.mat'));
    
    X = [X;data];
    Y = [Y;targets];
    c = [c clv(:)'];
    
end

clear data targets clv

data = X; 
clear X;

targets = Y;
clear Y;
clv = c;

save(strcat(matfiles_dir,test_val_str,'.mat'),'data','targets','clv','-v7.3')
