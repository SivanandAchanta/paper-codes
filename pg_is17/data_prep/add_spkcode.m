% Purpose: Add speaker codes to individual speakers data

clear all; close all; clc;

lang_name_vec = {'tel','tam','kan','mal','hin'};

for j = 2:length(lang_name_vec)
    lang_name = lang_name_vec{j};
    
    switch lang_name
        case 'tel'
            spk_code = [1 0 0 0 0]; % [1 0] - Tel; [0 1] - Tam;
        case 'tam'
            spk_code = [0 1 0 0 0]; % [1 0] - Tel; [0 1] - Tam;
        case 'kan'
            spk_code = [0 0 1 0 0]; % [1 0] - Tel; [0 1] - Tam;
        case 'mal'
            spk_code = [0 0 0 1 0]; % [1 0] - Tel; [0 1] - Tam;
        case 'hin'
            spk_code = [0 0 0 0 1]; % [1 0] - Tel; [0 1] - Tam;
    end
    
    data_dir = strcat('../../../../../',lang_name,'/M/nnspss/matfiles_16KHz/');
    
    files = dir(strcat(data_dir,'t*.mat'));
    
    for i = 1:length(files)
        fprintf('Processing file %s ... \n',files(i).name)
        
        load(strcat(data_dir,files(i).name));
        old_data = data;
        data = [old_data repmat(spk_code,size(old_data,1),1)];
        save(strcat(data_dir,files(i).name),'data','targets','clv','-v7.3');
        
    end
    
    
    load(strcat(data_dir,'val.mat'));
    old_data = data;
    data = [old_data repmat(spk_code,size(old_data,1),1)];
    save(strcat(data_dir,'val.mat'),'data','targets','clv','-v7.3');
    
end