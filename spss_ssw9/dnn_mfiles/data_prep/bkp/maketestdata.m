% Purpose : make test data
clear all; close all; clc;

tpath = '../data/categ_dur_test/';
apath = '../data/st_test/';
files = dir(tpath);

expname = 'exp_st';
aext = '.stspec';
datadir = strcat('../',expname,'/data/');
mkdir(datadir);

data = [];
targets = [];

for i = 3:length(files)
    [str,tok] = strtok(files(i).name,'.');
    str
    T = dlmread(strcat(tpath,files(i).name));
    A = dlmread(strcat(apath,str,aext));
 
    
    [tN,td] = size(T);
    [aN,ad] = size(A);
    
    if tN > aN
        T = T(1:aN,:);
    else
        A = A(1:tN,:);
    end
    
    data = single([data;T]);
    targets = single([targets;20*log10(A+1e-6)]);
   
end

save(strcat(datadir,'test.mat'),'data','targets','-v7.3');
