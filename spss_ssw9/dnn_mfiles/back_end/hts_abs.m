% Purpose : Abs Using HTS-CMP  Features
clear all; close all; clc;

addpath('/media/newHDD/hts_voices/STRAIGHTV40');

str = 'tel_0002';
mgcdim = 50;
bapdim = 26;

% STRAIGHT Params
fs = 48000;
frshift_s = round(0.005*fs) ; % frame shift in samples
UPPERF0 = 560;
LOWERF0 = 60;

frshiftms = round((frshift_s/fs)*1000); % frameshift in ms
prm.F0frameUpdateInterval = frshiftms;
prm.spectralUpdateInterval = frshiftms;
prm.F0searchUpperBound = UPPERF0;
prm.F0searchLowerBound = LOWERF0;

% SPTK commands
X2X     = '/home/siva/tools/TTS/SPTK/bin/x2x';
MGCEP   = '/home/siva/tools/TTS/SPTK/bin/mcep';
LPC2LSP = '/home/siva/tools/TTS/SPTK/bin/lpc2lsp';
AVERAGE = '/home/siva/tools/TTS/SPTK/bin/average';
NAN     = '/home/siva/tools/TTS/SPTK/bin/nan';
MINMAX  = '/home/siva/tools/TTS/SPTK/bin/minmax';

FREQT    = '/home/siva/tools/TTS/SPTK/bin/freqt';
C2ACR    = '/home/siva/tools/TTS/SPTK/bin/c2acr';
VOPR     = '/home/siva/tools/TTS/SPTK/bin/vopr';
MC2B     = '/home/siva/tools/TTS/SPTK/bin/mc2b';
SOPR     = '/home/siva/tools/TTS/SPTK/bin/sopr';
B2MC     = '/home/siva/tools/TTS/SPTK/bin/b2mc';
LSP2LPC  = '/home/siva/tools/TTS/SPTK/bin/lsp2lpc';
MGC2MGC  = '/home/siva/tools/TTS/SPTK/bin/mgc2mgc';
MERGE    = '/home/siva/tools/TTS/SPTK/bin/merge';
BCP      = '/home/siva/tools/TTS/SPTK/bin/bcp';
LSPCHECK = '/home/siva/tools/TTS/SPTK/bin/lspcheck';
MGC2SP      = '/home/siva/tools/TTS/SPTK/bin/mgc2sp';
INTERPOLATE = '/home/siva/tools/TTS/SPTK/bin/interpolate';
DFS         = '/home/siva/tools/TTS/SPTK/bin/dfs';
BCUT     = '/home/siva/tools/TTS/SPTK/bin/bcut';
VSTAT    = '/home/siva/tools/TTS/SPTK/bin/vstat';



% speech analysis conditions
SAMPFREQ    = 48000;   % Sampling frequency (48kHz)
FRAMESHIFT  = round(0.005*SAMPFREQ); % Frame shift in point (240 = 48000 * 0.005)
FREQWARP    = 0.55;   % frequency warping factor
GAMMA       = 0;      % pole/zero weight for mel-generalized cepstral (MGC) analysis
MGCORDER    = 49;   % order of MGC analysis
LNGAIN      = 1;     % use logarithmic gain rather than linear gain

lenfac = 2048;
nfft = 2048;
nfftby2 = 1025;

% Read composite features
fid1 = fopen(strcat('cmp/',str,'.cmp'),'r','ieee-le');
cmp = fread(fid1,'float');
cmpdim = 3*(mgcdim + 1 + bapdim);
nfr_cmp = length(cmp(4:end))/cmpdim;
cmp = reshape(cmp(4:end),cmpdim,nfr_cmp);
fclose(fid1);

% Convert mgc to spectrum
mgc = cmp(1:mgcdim,:);
mgc = mgc';
[N,dim] = size(mgc);
dlmwrite('temp.mgc',mgc,'delimiter', ' ');
command = [X2X, ' ', '+af', ' ', 'temp.mgc', ' ', '|' ...
    MGC2SP, ' ', '-a', ' ', num2str(FREQWARP),' ', '-g',' ', num2str(GAMMA),' ', '-m', ' ', num2str(MGCORDER), ' ', ...
    '-l', ' ', num2str(lenfac), ' ', '-o', ' ', num2str(2), ' ', '>', ' ', 'temp.sp' ];

system(command);

fid1 = fopen('temp.sp','r','ieee-le');
M1 = fread(fid1,[nfftby2,N],'float');
fclose(fid1);

% Convert lf0 to f0
lf0 = cmp(3*mgcdim+1,:);
f0 = exp(lf0);

% Convert bap to ap
bap = cmp(3*(mgcdim+1)+1:3*(mgcdim+1)+bapdim,:);
bap = bap';
[N,dim] = size(bap);
dlmwrite('temp_ascii.bap',bap,'delimiter', ' ');
command = [X2X, ' ', '+af', ' ', 'temp_ascii.bap', ' ', ' >', ' ', 'temp.bap'];
system(command);
command = ['perl', ' ', 'bap2ap.pl'];
system(command);
fid1 = fopen('temp.ap','r','ieee-le');
M2 = fread(fid1, [nfftby2 N],'float');

fclose(fid1);

% Straight Synthesis
[sy_stght,prmS] = exstraightsynth(f0,M1,M2,fs,prm);
sy_stght=sy_stght./(1.01*max(abs(sy_stght)));
%soundsc(diff(sy_stght),fs)
wavwrite(sy_stght,fs,'cmp_abs.wav');



% Using sp,ap,f0
M1_r = dlmread(strcat('sp/',str,'.sp'));
M2_r = dlmread(strcat('ap/',str,'.ap'));
f0_r = dlmread(strcat('f0/',str,'.f0'));
% Straight Synthesis
[sy_stght,prmS] = exstraightsynth(f0_r,M1_r',M2_r',fs,prm);
sy_stght=sy_stght./(1.01*max(abs(sy_stght)));
%soundsc(diff(sy_stght),fs)
wavwrite(sy_stght,fs,'stght_abs.wav');


system(['rm', ' ' , 'temp.*'])










