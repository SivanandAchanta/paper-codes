function [] = txtfe_hts_v5_vsm(htslabpath,featspath,uniqphnslist,vowlist,poslist,vsmfile)

% Purpose : numerical feature mapping from context dependent label file of HTS

% Inputs : (1) htslabpath - Path where HTS Full context label files are present
%          (2) featspath - Output numerical feats will be written in this directory
%          (3) uniqphnslist - unique phones list
%          (4) vowlist - vowels list
%          (5) poslist - parts-of-speech tags list

% Ouputs : (1) featspath - Output numerical feats will be written in this directory

% **** state durations and Alan's duration coding merged (ver3 + ver4 = ver5) ****

mkdir(featspath);
files = dir(htslabpath);

vsm = importdata(vsmfile);
vsmvec = vsm.data;
[nwords,vsmdim] = size(vsmvec);
vsmphns = vsm.textdata;

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
        
        durfeats = [durfeats; si (nofcphn(cnt)-1:-1:0)'*(1/(nofcphn(cnt))) (nofcphn(cnt)-1:-1:0)' ...
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
        
        % convert categorical feats to continous categorical fets (ignore parts of speech and tobi)
        bf = [];
        for i = 1:5
            zstr = zeros(1,vsmdim);
            if strcmp(Cfeatsnb{i},'x') ~=1 
                ix = strcmp(Cfeatsnb{i},vsmphns);                
                zstr = vsmvec(ix,:);
            end
            bf = [bf zstr];            
        end
        
        zstr = zeros(1,vsmdim);
        if strcmp(Cfeatsnb{6},'x') ~=1 && strcmp(Cfeatsnb{6},'0') ~=1 && strcmp(Cfeatsnb{6},'novowel') ~=1
            ix = strcmp(Cfeatsnb{6},vsmphns);
%             Cfeatsnb{6}
            zstr = vsmvec(ix,:);
        end
        bf = [bf zstr];

%         size(bf)
        
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

