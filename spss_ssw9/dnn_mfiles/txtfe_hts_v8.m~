function [] = txtfe_hts_v8(htslabpath,featspath,uniqphnslist,vowlist,poslist)

% Purpose : numerical feature mapping from context dependent label file of HTS

% Inputs : (1) htslabpath - Path where HTS Full context label files are present
%          (2) featspath - Output numerical feats will be written in this directory
%          (3) uniqphnslist - unique phones list
%          (4) vowlist - vowels list
%          (5) poslist - parts-of-speech tags list

% Ouputs : (1) featspath - Output numerical feats will be written in this directory

% **** Feature extraction for sequence to sequence mapping no duration information is used ****

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
s3 = [0 0 1; 0 1 0; 1 0 0 ];
s5 = [0 0 0 0 1; 0 0 0 1 0; 0 0 1 0 0; 0 1 0 0 0; 1 0 0 0 0];

% make directories
mkdir(strcat(featspath(1:end-1),'_3/'));
mkdir(strcat(featspath(1:end-1),'_5/'));
mkdir(strcat(featspath(1:end-1),'_3s/'));
mkdir(strcat(featspath(1:end-1),'_5s/'));


for fno = 3:length(files)
    files(fno).name
    X = [];
    X3 = [];
    X5 = [];
    X3s = [];
    X5s = [];
    
    [fname,tok] = strtok(files(fno).name,'.');
    
    if strcmp(tok,'.lab')
        % read the context label file
        
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
            
            sf = [bf Cfeatsb Nfeats];
            X = [X;sf];
            X3 = [X3;repmat(sf,3,1)];
            X5 = [X5;repmat(sf,5,1)];
            X3s = [X3s;[repmat(sf,3,1) s3 (1:3)']];
            X5s = [X5s;[repmat(sf,5,1) s5 (1:5)']];
            
            cnt = cnt + 1;
            
            
        end
        
        fclose(fid);
        
        dlmwrite(strcat(featspath,fname,'.feats'),X,'delimiter',' ');
        dlmwrite(strcat(featspath(1:end-1),'_3/',fname,'.feats'),X3,'delimiter',' ');
        dlmwrite(strcat(featspath(1:end-1),'_5/',fname,'.feats'),X5,'delimiter',' ');
        dlmwrite(strcat(featspath(1:end-1),'_3s/',fname,'.feats'),X3s,'delimiter',' ');
        dlmwrite(strcat(featspath(1:end-1),'_5s/',fname,'.feats'),X5s,'delimiter',' ');
    end
    
end

