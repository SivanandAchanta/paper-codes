% Purpose : To test DNN-WA

% clear all; close all; clc;

% Test files path
test_wavpath = '../../test_12/assamese/';
test_files = dir(strcat(test_wavpath,'*.wav'));
pflag = 0;

% Set Sig. Proc. variables
fs = 16000;
frSize = 25*(fs/1000);
frShift = 10*(fs/1000);
frOvlap = frSize - frShift;
nfft = 512;
nfftby4 = round(nfft/4 + 1);
hfhz = linspace(0,fs/4,nfftby4);

% Load config
config

% Read data
datadir = '../../matfiles_12hrs/';
% readtestdata_dnn

% Load architecture
arch_name1 = strcat(arch_name1,num2str(dout),ol_type);
arch_init

% Load weights
wtdir = '../../wt/';
arch_name = '39L700R500R12M_dnnwa_rg_l20_lr0.001_mf0.9_1';
load(strcat(wtdir,'W_',arch_name,'.mat'));

GWi = Wi;  GWa = Wa; GWh = Wh; GWo = Wo;
Gbi = bi; Gba = ba; Gbh = bh; Gbo = bo;

% Do testing
testerr = 0;
dnnScores = zeros(test_numbats,dout);

for li = 1:test_numbats
    li
    
    tic
    X = test_batchdata(test_clv(li):test_clv(li+1)-1,:);
    
    % fp
    [hcm,ah,alpha,c,sm,ym] = fp_cpu(X,GWi,Gbi,GWa,Gba,GWh,Gbh,GWo,Gbo,f);
    
    % compute error
    ol_mat = ym;
    Y = test_batchtargets(test_clv(li):test_clv(li+1)-1,:);
    Y = Y(1,:);
    
    switch cfn
        case 'nll'
            me = compute_zerooneloss_spk(ol_mat,Y,dout);
        case 'ls'
            me = mean(sum((Y - ol_mat).^2,2)./(sum(Y.^2,2)));
    end
    
    if isnan(me)
        break
    end
    toc
    
    
    if pflag
        [maxval,pix] = max(ol_mat);
        tix = find(Y);
        pix
        tix
        
        [y,fs] = wavread(strcat(test_wavpath,test_files(li).name));
        
        % compute the spectrogram
        yb = buffer(y,frSize,frOvlap,'nodelay');
        ybw = bsxfun(@times,yb,hamming(frSize));
        magy = abs(fft(ybw,nfft));
        hmagy = magy(1:nfftby4,1:size(X,1));
        lhmagy = 20*log10(hmagy);
        
        % Plot attention vector
        h = figure(1);
        %ax2 = subplot('Position',positionVector1); plot(alpha); axis tight;
        positionVector1 = [0.1, 0.7, 0.8, 0.1];
        xax = (1:size(X,1))*(frShift/16000);
        yax = (1:30);
        [Xax,Yax] = meshgrid(xax,yax);
        ax1 = subplot('Position',positionVector1); surf(Xax,Yax,repmat(alpha*1000,30,1),'edgecolor','none'); view(0,90);colormap(1 - gray); axis tight;
        
        
        [Xax,Yax] = meshgrid(xax,hfhz);
        positionVector2 = [0.1, 0.1, 0.8, 0.55];
        ax2 = subplot('Position',positionVector2); surf(Xax,Yax,lhmagy,'edgecolor','none'); view(0,90);colormap(1 - gray); axis tight;
        ylabel('Frequency (Hz)')
        xlabel('Time (s)')
        linkaxes([ax1 ax2], 'x');
        
        pause
    end
    
    dnnScores(li,:) = (ol_mat);
    testerr = testerr + me/test_numbats;
end

testerr
clear hcm ah alpha c sm ym test_batchtargets test_batchdata

% EER computation
dout = 12;
nSpeakers = dout;
nTestChannels_vec = [1401 1102 1576 2329 711 2215 1801 1785 1771 2725 2269 2355];
nTestChannels_vec_cum = cumsum([1 1401 1102 1576 2329 711 2215 1801 1785 1771 2725 2269 2355]);
nTestChannels = 700;
% load('dnnScores_subset_WA_V2.mat')

dnnScores_subset = zeros(nTestChannels*nSpeakers,nSpeakers);

for i = 1:length(nTestChannels_vec_cum)-1
    
    dnnScores_subset((i-1)*nTestChannels+1:(i)*nTestChannels,:) = dnnScores(nTestChannels_vec_cum(i):nTestChannels_vec_cum(i)+nTestChannels-1,:);
    
end

imagesc(dnnScores_subset); colormap(1-gray);
xaxis_ticklabel = {'Ass','Ben','Guj','Hin','Kan','Mal','Man','Mar','Odi','Pun','Tel','Urd'};
title('LR DNN-WA');

set(gca,'YTick',[1:nTestChannels:nTestChannels*dout])
set(gca,'yTickLabel',xaxis_ticklabel)

set(gca,'XTick',[1:dout])
set(gca,'xTickLabel',xaxis_ticklabel)

ylabel('Test ( Language)'); xlabel('Reference ( Language)');
colorbar; drawnow; axis xy

dnnScores_subset1 = dnnScores_subset;
dnnScores_subset = dnnScores_subset(:);

% trials = zeros(nSpeakers*(nTestChannels)*nSpeakers,2);
answers = zeros(nSpeakers*(nTestChannels)*nSpeakers, 1);
for ix = 1 : nSpeakers,
    b = (ix-1)*nSpeakers*nTestChannels + 1;
    e = b + nSpeakers*nTestChannels - 1;
%     trials(b:e, :)  = [ix * ones(nSpeakers*nTestChannels, 1), (1:nSpeakers*nTestChannels)'];
    answers((ix-1)*nTestChannels+b : (ix-1)*nTestChannels+b+nTestChannels-1) = 1;
end
% imagesc(reshape(dnnScores,nSpeakers*nTestChannels, nSpeakers));
% title('Speaker Verification Likelihood (GMM Model)');
% ylabel('Test # (Channel x Speaker)'); xlabel('Model #');
% colorbar; drawnow; axis xy
figure
eer = compute_eer(dnnScores_subset, answers, true);
eer

resultspath = '../../results/';
mkdir(resultspath);


eer_lang = zeros(nSpeakers,1);
% Per Language EER
for i = 1 : nSpeakers
    
    answers1 = zeros(nSpeakers*(nTestChannels)*nSpeakers, 1);

    b = (i-1)*nSpeakers*nTestChannels + 1;
    answers1((i-1)*nTestChannels+b : (i-1)*nTestChannels+b+nTestChannels-1) = 1;

    eer1 = compute_eer(dnnScores_subset, answers1, false);
    eer1
    eer_lang(i) = eer1;

end
mean(eer_lang)
save(strcat(resultspath,'dnnScores_subset',arch_name,'.mat'),'dnnScores_subset','answers','eer','eer_lang');







