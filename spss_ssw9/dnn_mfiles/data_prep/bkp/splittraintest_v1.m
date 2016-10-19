function [] = splittraintest_v1(featpath,trnpath,tstpath,etcfile)
% Purpose : Split data into training and testing using festival train test
% method

% make directories
mkdir(trnpath);
mkdir(tstpath);

command = ['/media/newHDD/arctic/cmu_us_bdl_arctic/bin/traintest_v2',' ', etcfile,' ','temp'];
system(command);

fid = fopen('temp.train');
trnlist = textscan(fid,'%s');
trnlist = trnlist{1};
fclose(fid);

command = ['ls',' ', featpath,' ','>', ' ','temp.tot'];
system(command);

fid = fopen('temp.tot');

while ~feof(fid)
    [fname,tok] = strtok(fgetl(fid),'.');
%     fname

    
    if sum(strcmp(fname,trnlist))
        command = ['cp', ' ',strcat(featpath,fname,tok), ' ', strcat(trnpath,fname,tok)];
        system(command);
    else
        command = ['cp', ' ',strcat(featpath,fname,tok), ' ', strcat(tstpath,fname,tok)];
        system(command);
    end
    
    
end

fclose(fid);

