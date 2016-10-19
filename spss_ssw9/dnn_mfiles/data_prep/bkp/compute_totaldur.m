clear all; close all; clc

wavpath = '../../feats/acoustic_feats/wav/emma_wav/';
files = dir(wavpath);
totalsecs = 0;
fid1 = fopen('../../EMMA_DNN/tstlist.txt','w');
fid2 = fopen('../../EMMA_DNN/trnlist.txt','w');

for i = 3:length(files)
    
    files(i).name
    
    finfo = mmfileinfo(strcat(wavpath,files(i).name));
    
    totalsecs = totalsecs + finfo.Duration;
    
    if mod(i,10) == 0
        fprintf(fid1,'%s\n',files(i).name);
    else
        fprintf(fid2,'%s\n',files(i).name);
    end
end

fclose(fid1);
fclose(fid2);
totmins = totalsecs/60
tothrs = totmins/60