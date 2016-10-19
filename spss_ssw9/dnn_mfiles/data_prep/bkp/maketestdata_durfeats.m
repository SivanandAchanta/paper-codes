% Purpose : make test/val data for duration feats 
clear all; close all; clc;

foldname = {'Tamil'};

tftname = 'hts';
aftname = 'dur';


for j = 1%:4%length(foldname)
    foldname{j}
    tvstr = 'test';
    apath1 = strcat('../../voices/',foldname{j},'/','data/',tvstr,'/dur_feats/','phndur','/');
    tpath = strcat('../../voices/',foldname{j},'/','data/',tvstr,'/dur_feats/','hts','/');
    
    files = dir(tpath);
    
    expname = strcat('exp_',tftname,'_',aftname,'_',foldname{j});
    aext1 = '.txt';
    datadir = strcat('../../',expname,'/data/');
    mkdir(datadir);
    
    
    numfiles_batch = 400;
    num_bats = ceil((length(files)-2)/numfiles_batch)
    
    for nb = 1:num_bats
        nb
        data = [];
        targets = [];
        clv = [];
        
        efno = (numfiles_batch*(nb)+2);
        if efno > length(files)
            efno = length(files);
        end
        
        for i = (numfiles_batch*(nb-1)+1+2):efno
            
            [str,tok] = strtok(files(i).name,'.');
            str
            T = dlmread(strcat(tpath,files(i).name));
            A1 = dlmread(strcat(apath1,str,aext1));
            
            [tN,td] = size(T);
            [aN1,ad1] = size(A1);
            
            nframes = min([tN aN1]);
            
            T = T(1:nframes,:);
            A1 = A1(1:nframes,:);
            
            if sum(sum(isnan(T)))
                fprintf('File %s has NaN elements in Text Feats\n',str)
                %                 pause
            end
            
            if sum(sum(isnan(A1)))
                fprintf('File %s has NaN elements in Spec Feats\n',str)
                %                 pause
            end
            
            %
            %             % find if the central frame is silence phone
            %             ixall = zeros(nframes,1);
            %             for k = 1:nframes
            %                 ixall(k) = find(T(k,cpidx));
            %             end
            %             ixint = find(ixall == silid);
            %
            %             % drop 80% of the silence frames
            %             berv =  binornd(1,0.2,[size(ixint)]);
            %             ixint_80 = ixint(berv==0);
            %
            %             T(ixint_80,:) = [];
            %             A1(ixint_80,:) = [];
            
            % cat data
            data = single([data;T]);
            targets = single([targets;A1]);
            clv = [clv size(T,1)];
        end
        
        if sum(sum(isnan(data)))
            fprintf('There are NaN elements in data Feats\n')
            pause
            
        end
        
        if sum(sum(isnan(targets)))
            fprintf('There are NaN elements in target Feats\n')
            pause
            
        end
        
        save(strcat(datadir,tvstr,'.mat'),'data','targets','clv','-v7.3');
    end
    
end