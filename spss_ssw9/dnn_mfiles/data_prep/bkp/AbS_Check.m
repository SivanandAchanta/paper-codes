clear all; close all; clc;

% setpaths
addpath('/media/newHDD/hts_voices/STRAIGHTV40');
addpath('/media/newHDD/BDL_DNN/mfiles/featext/speech'); % for HTS deltas

% STRAIGHT Params
fs = 16000;
frshift_s = 80 ; % frame shift in samples
UPPERF0 = 580;
LOWERF0 = 60;

frshiftms = round((frshift_s/fs)*1000); % frameshift in ms
prm.F0frameUpdateInterval = frshiftms;
prm.spectralUpdateInterval = frshiftms;
prm.F0searchUpperBound = UPPERF0;
prm.F0searchLowerBound = LOWERF0;

% msasb params
nfft = 1024;
nfftby2 = round(nfft/2 + 1);
nbands = 80;
bw_band = fs/2/nbands;
bef = bw_band:bw_band:(fs/2 - bw_band);
bcf = bw_band/2:bw_band:(fs/2);
nbef = round((bef/fs)*nfft + 1);
nbcf = round((bcf/fs)*nfft + 1);
x = [1 nbcf nfftby2];
xi = [1:nfftby2];
w1 = [0.5 0 -0.5];  % have to reverse than the regular HTS format becaus of the use of filter fuction for computing deltas
w2 = [1 -2 1]; % symmetric fn and hence reverse is the same as original for double deltas

nbands_ap = 50;
bw_band_ap = fs/2/nbands_ap;
bef_ap = bw_band_ap:bw_band_ap:(fs/2 - bw_band_ap);
bcf_ap = bw_band_ap/2:bw_band_ap:(fs/2);
nbef_ap = round((bef_ap/fs)*nfft + 1);
nbcf_ap = round((bcf_ap/fs)*nfft + 1);
x_ap = [1 nbcf_ap nfftby2];

% STRAIGHT Analysis by Synthesis
foldname = {'Telugu', 'Hindi', 'Tamil', 'Marathi', 'Malayalam', 'Bengali'};
i = 3;
wavpath = strcat('../All_IH/',foldname{i},'/wav/');
f0dir = strcat('../feats/acoustic_feats/stf0/',foldname{i},'_stf0/');
specdir = strcat('../feats/acoustic_feats/stspec/',foldname{i},'_stspec/');

files = dir(wavpath);
fname = files(15).name;
[filename,tok] = strtok(fname,'.');
filename
[y,fs] = wavread(strcat(wavpath,filename,'.wav'));

[f0raw, st_ap] = exstraightsource(y,fs,prm);
[st_sgram] = exstraightspec(y, f0raw, fs, prm);
[sy_stght,prmS] = exstraightsynth(f0raw,st_sgram,st_ap,fs,prm);
sy_stght=sy_stght./(1.01*max(abs(sy_stght)));
soundsc(sy_stght,fs)

% f0raw = dlmread(strcat(f0dir,filename,'.txt'));
% f0raw = f0raw(:,1);
% spec = dlmread(strcat(specdir,filename,'.txt'));
% spec = 10.^(spec/20);
% spec = spec(:,1:513);
% spec = spec';
% [sy_stght,prmS] = exstraightsynth(f0raw,spec,st_ap,fs,prm);
% sy_stght=sy_stght./(1.01*max(abs(sy_stght)));
% soundsc(sy_stght,fs)
%         wavwrite(sy_stght,fs,strcat(mstsynthpath,filename,'_',spk{i},'.wav'));