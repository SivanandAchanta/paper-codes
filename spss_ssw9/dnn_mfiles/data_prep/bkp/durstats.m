clear all; close all; clc;

% Purpose: Compute the durations of training data in each language

lang = {'Telugu', 'Hindi', 'Tamil', 'Marathi', 'Malayalam', 'Bengali'}

for i = 1:length(lang)
    
    wavpath = strcat('../All_IH/',lang{i},'/wav/')
    files = dir(wavpath);
    
    totdur = 0;
    for j = 1:length(files)
        [str,tok] = strtok(files(j).name,'.');
        
        if strcmp(tok,'.wav')
            aa = mmfileinfo(strcat(wavpath,files(j).name));
            totdur = totdur + aa.Duration;
        end
    end
    
    nmins = totdur/60
    nhrs = totdur/3600
    
end