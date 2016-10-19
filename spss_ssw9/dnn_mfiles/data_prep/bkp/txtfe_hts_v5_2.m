clear all; close all; clc;

% Purpose : text feature extraction

foldname = {'Telugu'};
% rfoldname = {'bdl_arctic','rms_arctic','slt_arctic','clb_arctic'};

% voicename = 'RMS_DNN/';
tftsname = 'hts';

for i = 1%:length(foldname)
    foldname{i}
    
    tpath = strcat('../../voices/',foldname{i},'/','data/train/','tfeats','/');
    
    files = {'tel_0106.tfeats','tel_0192.tfeats','tel_0238.tfeats','tel_0281.tfeats','tel_0293.tfeats','tel_0330.tfeats' ...
        'tel_0340.tfeats','tel_0554.tfeats','tel_0743.tfeats','tel_0758.tfeats','tel_0942.tfeats','tel_0976.tfeats' ...
        'tel_1019.tfeats','tel_1171.tfeats','tel_1172.tfeats','tel_1184.tfeats','tel_1236.tfeats','tel_1246.tfeats' ...
        'tel_1543.tfeats','tel_1935.tfeats','tel_2072.tfeats','tel_2086.tfeats' }
    for fno = 1:length(files)
        fname = strtok(files{fno},'.')
        M1 = dlmread(strcat(tpath,fname,'.feats'));
        nanM1 = isnan(M1);
        
        ix = sum(nanM1,2);
        
        M1 = M1(ix == 0, :);
        dlmwrite(strcat(tpath,fname,'.feats'),M1,'delimiter', ' ');
        
    end
    
end
