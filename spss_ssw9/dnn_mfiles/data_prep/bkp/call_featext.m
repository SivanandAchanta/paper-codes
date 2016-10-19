clear all; close all; clc;

% Purpose: Compute the durations of training data in each language
fprintf(' extractic features ...\n');
foldname = {'Telugu', 'Hindi', 'Tamil', 'Marathi', 'Malayalam', 'Bengali'}

for i = 2:3
    wavpath = strcat('../All_IH/',foldname{i},'/wav/')
    specdir = strcat('../feats/acoustic_feats/stspec/',foldname{i},'_stspec/');
    msasbdir = strcat('../feats/acoustic_feats/stmspec/',foldname{i},'_stmspec/');
    apdir = strcat('../feats/acoustic_feats/stap/',foldname{i},'_stap/');
    msasbapdir = strcat('../feats/acoustic_feats/stmap/',foldname{i},'_stmap/');
    f0dir = strcat('../feats/acoustic_feats/stf0/',foldname{i},'_stf0/');
    stmsasb_ftext(wavpath,specdir,msasbdir,apdir,msasbapdir,f0dir)
end

fprintf(' feature extraction done !!!\n');
