function [ap] = bap2ap(bap,nfftby2)

% Purpose: Convert bap to ap using bap2ap perl script

% load sptk commands
sptk_cmd

% convert bap 2 ap
[N,dim] = size(bap);
dlmwrite('temp_ascii.bap',bap,'delimiter', ' ');

command = [X2X, ' ', '+af', ' ', 'temp_ascii.bap', ' ', ' >', ' ', 'temp.bap'];
system(command);
command = ['perl', ' ', 'bap2ap.pl'];
system(command);

fid1 = fopen('temp.ap','r','ieee-le');
ap = fread(fid1, [nfftby2 N],'float');
fclose(fid1);

end