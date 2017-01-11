% Purpose : Combine unitwise data
clear all; close all; clc;

tpath = '../data/categ_dur/';
apath = '../data/st/';
files = dir(tpath);

expname = 'exp_st';
datadir = strcat('../',expname,'/data/');
mkdir(datadir);

data = [];
targets = [];

for i = 3:length(files)
    [str,tok] = strtok(files(i).name,'.');
    str
    T = dlmread(strcat(tpath,files(i).name));
    A = dlmread(strcat(apath,str,'.lmax'));
    
    size(T)
    size(A)
    cp = T(:,83:123);
    [r,c] = find(cp);
    
    c = c - c(1);
    if sum(c) == 0        
        data = single([data;T]);
        targets = single([targets;A]);
    else
        disp('text vectors are incorrect !!!');
    end
   
end

save(strcat(datadir,'train.mat'),'data','targets','-v7.3');
% save('../data/targets.mat','targets','-v7.3');


