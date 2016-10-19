function [] = txtfe_hts_v3(htslabpath,featspath,uniqphnslist,vowlist)

% Purpose : numerical feature mapping from context dependent label file of HTS

% **** no Parts of Speech and no state durations **** %
% **** Alan's duration coding feats (festival) are used ****%

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
        durfeats = [durfeats;(nofcphn(cnt)-1:-1:0)'*(1/(nofcphn(cnt)-1)) (nofcphn(cnt)-1:-1:0)' ...
            (0:nofcphn(cnt)-1)' repmat((et-st),nofcphn(cnt),1)];
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
        rf = repmat([bf Cfeatsb Nfeats],nofcphn(cnt),1);
        X = [X;rf];
        cnt = cnt + 1;
        
    end
    
    X = [X durfeats];
    dlmwrite(strcat(featspath,fname,'.feats'),X,'delimiter',' ');
    
    fclose(fid);
end


















