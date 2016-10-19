files = dir(wavpath);

aext1 = '.mgc';
aext2 = '.txt';
aext3 = '.txt';

for i = 3:length(files)
    [str,tok] = strtok(files(i).name,'.');
    str
    A1 = dlmread(strcat(mgcdir,str,aext1));
    A2 = dlmread(strcat(msasbapdir,str,aext2));
    A3 = dlmread(strcat(f0dir,str,aext3));
    [aN1,ad1] = size(A1);
    [aN2,ad2] = size(A2);
    [aN3,ad3] = size(A3);
    nframes = min([aN1 aN2 aN3]);
    
    A1 = A1(1:nframes,:);
    A2 = A2(1:nframes,:);
    A3 = A3(1:nframes,:);
    
    A = [A1 A2 A3];
    dlmwrite(strcat(compdir,str,'.txt'),A,'delimiter',' ');
end