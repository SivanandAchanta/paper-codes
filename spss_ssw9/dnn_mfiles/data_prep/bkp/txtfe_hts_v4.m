function [] = txtfe_hts_v4(htslabpath,featspath,uniqphnslist,vowlist,poslist)

% Purpose : numerical feature mapping from context dependent label file of HTS

% *** Parts of Speech included and State durations also included *****
% *** Alan's duration coding is not used ****
%foldname = 'arctic_rms';
%htslabpath = strcat('../../../../feats/text_feats/hts_lab/',foldname,'_hts_lab','/');
%featspath = strcat('../../../../feats/text_feats/categ_dur/',foldname,'_categ_dur','/');
mkdir(featspath);
files = dir(htslabpath);

fid = fopen(uniqphnslist,'r');
phnset = textscan(fid,'%s');
phns = phnset{1};
fclose(fid);

fid = fopen(vowlist,'r');
vowset = textscan(fid,'%s');
vows = vowset{1};
fclose(fid);

fid = fopen(poslist,'r');
posset = textscan(fid,'%s');
pos = posset{1};
fclose(fid);

% tristate information
s = [0 0 1; 0 1 0; 1 0 0 ];


for fno = 3:length(files)
    files(fno).name
    X = [];
    [fname,tok] = strtok(files(fno).name,'.');
    
    % read the context label file
    fid = fopen(strcat(htslabpath,files(fno).name),'r');
    cnt = 1;
    durfeats = [];
    while feof(fid) ~=1
        lin = fgetl(fid);
        selected_outputs = regexp(lin(1:21),' ','split');
        [st,et] = selected_outputs{~strcmp(selected_outputs,'')};
        st = str2double(st);et = str2double(et);
        st = st/10^7; et = et/10^7;
        
        nofcphn(cnt) = round((et - st)/0.005);
        
        % tristate information
        nofps = floor(nofcphn(cnt)/3);
        efms = mod(nofcphn(cnt),3);
        s1 = [repmat(s(1,:),nofps,1) (0:nofps-1)'];
        s2 = [repmat(s(2,:),nofps+efms,1) (0:nofps+efms-1)'];
        s3 = [repmat(s(3,:),nofps,1) (0:nofps-1)'];
        si = [s1;s2;s3];
        
        durfeats = [durfeats; si (0:nofcphn(cnt)-1)' repmat((et-st),nofcphn(cnt),1)];
        cnt = cnt + 1;
    end
    
    fclose(fid);
    
    fid = fopen(strcat(htslabpath,files(fno).name),'r');
    cnt = 1;
    while feof(fid) ~=1
        
        lin = fgetl(fid);
        str = lin(23:end);
        [Cfeatsnb,Cfeatsb,Nfeats] = parse_htscdlabelstr(str);
        
        % conver nobinary categorical feats to binary categorical fets (ignore parts of speech and tobi)
        bf = [];
        for i = 1:5
            zstr = zeros(1,length(phns)); % a string of zeros
            
            if strcmp(Cfeatsnb{i},'x') ~=1
                ix = strcmp(Cfeatsnb{i},phns);
                zstr(ix) = 1;
            end
            bf = [bf zstr];
            
        end
        
        zstr = zeros(1,length(vows));
        if strcmp(Cfeatsnb{6},'x') ~=1
            ix = strcmp(Cfeatsnb{6},vows);
            zstr(ix) = 1;
        end
        bf = [bf zstr];
        
        % parts of speech tagging
        for i = 7:9
            zstr = zeros(1,length(pos));
            
            ix = strcmp(Cfeatsnb{i},pos);
            zstr(ix) = 1;
            
            bf = [bf zstr];
        end
        
        
        rf = repmat([bf Cfeatsb Nfeats],nofcphn(cnt),1);
        X = [X;rf];
        cnt = cnt + 1;
        
    end
    
    X = [X durfeats];
    dlmwrite(strcat(featspath,fname,'.feats'),X,'delimiter',' ');
    
    fclose(fid);
end

