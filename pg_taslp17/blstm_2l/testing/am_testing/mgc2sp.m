function [M1] = mgc2sp(ym_mgc,X2X,MGC2SP,FREQWARP,GAMMA,MGCORDER,lenfac,nfftby2)


[N,dim] = size(ym_mgc);
dlmwrite('temp.mgc',ym_mgc,'delimiter', ' ');

% convert MGC into spectrum
command = [X2X, ' ', '+af', ' ', 'temp.mgc', ' ', '|' ...
    MGC2SP, ' ', '-a', ' ', num2str(FREQWARP),' ', '-g',' ', num2str(GAMMA),' ', '-m', ' ', num2str(MGCORDER), ' ', ...
    '-l', ' ', num2str(lenfac), ' ', '-o', ' ', num2str(2), ' ', '>', ' ', 'temp.sp' ];

system(command);

fid1 = fopen('temp.sp','r','ieee-le');
M1 = fread(fid1, [nfftby2 N],'float');
fclose(fid1);

end

