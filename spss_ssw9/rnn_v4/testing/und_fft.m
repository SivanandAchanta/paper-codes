clear all; close all; clc;

fs = 1000;
t = (0:4999)/fs; % time interval of 5 seconds
y = sin(2*pi*5*t);
% plot(y);

nfft = 1024;
nfftby2 = round(nfft/2+1);
% Y = fft(y(1:1024),1024);
% f = (0:1023)*500/1024; % frequencies returned by fft
fhz = linspace(0,fs,nfft);
hfhz = linspace(0,fs/2,nfftby2);
% plot(fhz,abs(Y(1:nfftby2)));

% short-time Fourier transform

frsize = 800*(fs/1000);
frshift = 20*(fs/1000);
frovlap = frsize - frshift;
yb = buffer(y,frsize,frovlap,'nodelay');
ybw = bsxfun(@times,yb,hamming(frsize));

Ybw = abs(fft(ybw,nfft));

nof = size(yb,2);
surf(Ybw(1:nfftby2,:),'edgecolor','none'); view(0,90); axis tight;

% for i = 1:nof
% 
%     subplot(411); plot(yb(:,i));
%     subplot(412); plot(ybw(:,i));
%     subplot(413); plot(fhz,Ybw(:,i));
%     subplot(414); plot(hfhz,Ybw(1:nfftby2,i));
%     
%     pause(0.3)
% end

