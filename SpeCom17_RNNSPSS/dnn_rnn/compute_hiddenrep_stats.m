% Purpose : To compute the statistics of hidden layer representations

% clear all; close all; clc;

% config

% readdata_rnn_v2

% Load RNN Weights
% rnn_archname = '247L500R150L_rnn_di_l20_lr0.003_mf0.3_gc1_si0.01_ri0.01_so0.01_5';
% load(strcat(wtdir,'W_',rnn_archname,'.mat'))
% f_rnn = 'RL'
% nl_rnn= [247 500 150];

mh = 0;
vh = 0;

my = 0;
vy = 0;

for i = 1:train_numbats
    i
    % fp
    X = [];
    X = (double(train_batchdata(train_clv((i)):train_clv((i)+1)-1,:)));
    bs = size(X,1);
    
    [hcm,ym] = fp_rnn((X(:,101:end)),Wi,Wfr,U,bh,bo,f_rnn,nl_rnn,a_tanh,b_tanh,bs);
    
    % compute the statistics    
    mh = mh + sum(hcm);
    vh = vh + sum(hcm.^2);
    my = my + sum(ym);
    vy = vy + sum(ym.^2);
    
end

mh = mh/Nin;
vh = sqrt(vh/(Nin-1) - mh.^2);

my = my/Nin;
vy = sqrt(vy/(Nin-1) - my.^2);


save(strcat(datadir,'mvn_h_',strmvn,'.mat'),'mh','vh','my','vy');
% save(strcat(datadir,'mmn_h.mat'),'maxh','minh','maxy','miny');
