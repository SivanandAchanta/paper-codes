% Purpose: Extract MGC features from STRAIGHT spectrum

files = dir(specdir);
mkdir(mgcdir);

for i = 3:length(files)
    
    % Get STRAIGHT log-spectrum
    [filename,tok] = strtok(files(i).name,'.');
    filename
    
    M = dlmread(strcat(specdir,files(i).name));
    M = M(:,1:nfftby2);
    [N,dim] = size(M);
    
    dlmwrite('temp.sp',M,'delimiter', ' ');
    
    % Convert to MGC (q = 1 for 20*log10(|H(w)|) (q = 3 for |H(w)|)
    command = [X2X, ' ', '+af', ' ', 'temp.sp', ' ', '|' ...
        ' ', MGCEP, ' ', '-a', ' ', num2str(FREQWARP), ' ', '-m', ' ', num2str(MGCORDER),' ', '-l', ' ', num2str(lenfac) ...
        ' ', '-e', ' ', num2str(1.0E-08), ' ', '-j', ' ',num2str(0), ' ','-f' ,' ', num2str(0.0), ' ', '-q',' ',num2str(1), ' ', '>', ' ', 'temp.mgc'];
    
    system(command)
    
    % read MGC
    fid1 = fopen('temp.mgc','r','ieee-le');
    mgc = fread(fid1, [MGCORDER+1 N],'float');
    fclose(fid1);
    
    % Make deltas and double-deltas
    d = deltas_hts_dellis(mgc, w1);
    dd = deltas_hts_dellis(mgc, w2);
    dmgc = [mgc;d;dd]; % 3dxN matrix
    
    dlmwrite(strcat(mgcdir,filename,'.mgc'),dmgc', 'delimiter', ' ');
    
end
