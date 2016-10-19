function [] = splitdata_unittype(tftpath,aftpath,ttgtpath,atgtpath,unitlabpath,uniqphnslist,trainlist)
% Purpose : Split data into unit wise

% tftpath = '../data/tfeats/';
% aftpath = '../data/lmaxima/';
% ttgtpath = '../data/unitwise/tfeats/';
mkdir(ttgtpath);
% atgtpath = '../data/unitwise/lmax/';
mkdir(atgtpath);

% mkdir('/scratch/siva/');
% file_ttgtpath = '/scratch/siva/tfeats/';
% file_atgtpath = '/scratch/siva/afeats/';
% mkdir(file_ttgtpath)
% mkdir(file_atgtpath)

% unitlabpath = '../data/dur_phnwc/';
files = dir(unitlabpath);

fid = fopen(uniqphnslist);
phnset = textscan(fid,'%s');
phnset = phnset{1};
fclose(fid);

fid = fopen(trainlist);
trnlist = textscan(fid,'%s \n');
fclose(fid);

for i = 3:length(files)
    files(i).name
    [unitname,tok] = strtok(files(i).name,'.');
    fid = fopen(strcat(unitlabpath,files(i).name));
    unitlabfile = textscan(fid,'%s %s %s %d %d %d\n');
    fclose(fid);
    
    lablist = unitlabfile{2}; % lab files list
    ulablist = unique(lablist);
    %stfr = unitlabfile{4}; % start frame no
    %efr = unitlabfile{5};  % end frame no
    X = [];
    Y = [];
    phnid = strcmp(phnset,unitname);
    phnid = find(phnid)
    
    %     mkdir(strcat('/scratch/siva/tfeats/',unitname))
    %     mkdir(strcat('/scratch/siva/afeats/',unitname))
    
    for j = 1:length(ulablist)
        [filename,tok] = strtok(ulablist{j},'.')
        if sum(strcmp(filename,trnlist{1})) % if the file is present in the train file list then process
            T = dlmread(strcat(tftpath,filename,'.feats'));
            A = dlmread(strcat(aftpath,filename,'.stspec'));
            
            cp = T(:,83:123);
            
            ixall = zeros(size(cp,1),1);
            for k = 1:size(cp,1)
                ixall(k) = find(cp(k,:));
            end
            ixint = find(ixall == phnid);
            
            T = T(ixint,:);
            A = 20*log10(A(ixint,:)+1e-6);
            
            %             dlmwrite(strcat(file_ttgtpath,unitname,'/',filename,'.feats'),T,'delimiter',' ');
            %             dlmwrite(strcat(file_atgtpath,unitname,'/',filename,'.lmax'),A,'delimiter',' ');
            
            
%             X = [X;T];
            Y = single([Y;A]);
        end
        
    end
    
%     dlmwrite(strcat(ttgtpath,unitname,'.feats'),X,'delimiter',' ');
    dlmwrite(strcat(atgtpath,unitname,'.lmax'),Y,'delimiter',' ');
    
end
