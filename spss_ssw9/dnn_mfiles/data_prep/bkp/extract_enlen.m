% Purpose : Extract energy and log-energy features from signals


clear all; close all; clc;

wavpath = '../../All_IH/Telugu/wav/';
files = dir(wavpath);

featspath16 = '../../feats/acoustic_feats/enlen_16/';
mkdir(featspath16);

featspath48 = '../../feats/acoustic_feats/enlen_48/';
mkdir(featspath48);

frsize16 = 25*(16);
frshift16 = 5*(16);
frovlap16 = frsize16 - frshift16;

frsize48 = 25*(48);
frshift48 = 5*(48);
frovlap48 = frsize48 - frshift48;


for i = 3:length(files)
    
    [filename,tok] = strtok(files(i).name,'.');
    
    if strcmp(tok,'.wav')
        filename
        
        [y,fs] = wavread(strcat(wavpath,files(i).name));
        yb16 = buffer(y,frsize16,frovlap16,'nodelay');
        en16 = sum(yb16.^2);
        en16 = en16';
        len16 = log(en16 + 1e-6);
        
        dlmwrite(strcat(featspath16,filename,'.enlen'),[en16 len16],'delimiter',' ');
        
        yr = resample(y,48000,fs);
        yb48 = buffer(yr,frsize48,frovlap48,'nodelay');        
        en48 = sum(yb48.^2);
        en48 = en48';
        len48 = log(en48 + 1e-6);
        
        dlmwrite(strcat(featspath48,filename,'.enlen'),[en48 len48],'delimiter',' ');
        
    end
end










