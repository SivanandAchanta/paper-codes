function [] = txtfe_hts_v6(labpath,featspath,uniqphnslist)

% Purpose : numerical feature mapping from ehmm label files

% **** state durations and Alan's duration coding merged (ver3 + ver4 = ver5) ****

%foldname = 'arctic_rms';
%htslabpath = strcat('../../../../feats/text_feats/hts_lab/',foldname,'_hts_lab','/');
%featspath = strcat('../../../../feats/text_feats/categ_dur/',foldname,'_categ_dur','/');

mkdir(featspath);
files = dir(labpath);

fid = fopen(uniqphnslist,'r');
phnset = textscan(fid,'%s');
phns = phnset{1};
fclose(fid);

% tristate information
s = [0 0 1; 0 1 0; 1 0 0 ];

% num of phone contexts to luk at
nc = 5;
ncby2 = floor(nc/2);

for fno = 3:length(files)
    
    files(fno).name
    [fname,tok] = strtok(files(fno).name,'.');
    
    % read the context label file
    fid = fopen(strcat(labpath,files(fno).name),'r');
    fgetl(fid);
    M = textscan(fid,'%f %d %s\n');
    fclose(fid);
    
    et = []; st = []; phseq = ''; nofcphn = []; dur = [];
    et = M{1};
    st = [0;et(1:end-1)];
    phnseq = M{3};
    phnseq = [repmat({'pau'},ncby2,1);phnseq;repmat({'pau'},ncby2,1)];
    
    durfeats = [];
    X = [];
    dur = et - st;
    dur = [zeros(ncby2,1);dur;zeros(ncby2,1)];
    nofcphn = round((et - st)/0.005);
    nofcphn = [zeros(ncby2,1);nofcphn;zeros(ncby2,1)];
    
    
    for i = ncby2+1:length(nofcphn)-ncby2
        
        % tristate information
        nofps = floor(nofcphn(i)/3);
        efms = mod(nofcphn(i),3);
        s1 = [repmat(s(1,:),nofps,1) (0:nofps-1)'];
        s2 = [repmat(s(2,:),nofps+efms,1) (0:nofps+efms-1)'];
        s3 = [repmat(s(3,:),nofps,1) (0:nofps-1)'];
        si = [s1;s2;s3];
        
        durfeats = [durfeats; si (nofcphn(i)-1:-1:0)'*(1/(nofcphn(i)-1)) (nofcphn(i)-1:-1:0)' ...
            (0:nofcphn(i)-1)' repmat(dur(i),nofcphn(i),1)];
        
        
        % conver nobinary categorical feats to binary categorical fets (ignore parts of speech and tobi)
        bf = [];
        
        for j = i-ncby2:i+ncby2
            zstr = zeros(1,length(phns)); % a string of zeros
            ix = strcmp(phnseq{j},phns);
            zstr(ix) = 1;
            bf = [bf zstr];
        end
        
        rf = repmat(bf,nofcphn(i),1);
        X = [X;rf];
        
    end
    
    X = [X durfeats];
    dlmwrite(strcat(featspath,fname,'.feats'),X,'delimiter',' ');
end



end

