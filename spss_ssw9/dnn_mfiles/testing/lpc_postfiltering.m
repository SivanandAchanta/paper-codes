% Purpose : post filtering the synthesized waves 

clear all; close all; clc;

natpath = 'nat/';
spspath = 'sps/';


natfiles = dir(natpath);

[str,tok] = strtok(natpath,natfiles(3).name,'.');
[yn,fs]  = wavread(strcat(natpath,natfiles(3).name));

[ys,fs2] = wavread(strcat(spspath,str,'_specnapf0_specmlpg','.wav'));

ysr = resample(ys,fs,fs2);

% formant analysis 

fs = 16000;
frshift_s = round(0.005*fs) ; % frame shift in samples
UPPERF0 = 580;
LOWERF0 = 60;

frshiftms = round((frshift_s/fs)*1000); % frameshift in ms
prm.F0frameUpdateInterval = frshiftms;
prm.spectralUpdateInterval = frshiftms;
prm.F0searchUpperBound = UPPERF0;
prm.F0searchLowerBound = LOWERF0;

[f0raw, ap] = exstraightsource(ysr,fs,prm);

vuv = find(f0raw);




    
    
    



