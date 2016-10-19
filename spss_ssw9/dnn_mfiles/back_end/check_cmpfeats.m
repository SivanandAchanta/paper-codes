% Purpose : Read all the composite feats files and see where the maximum
% value is 1e10 for lf0 stream.

indir = '../../data/val/comp_feats/';

files = dir(indir);

% read all the files in the input directory and see where the error is !!
mgcdim = 50;
bapdim = 26;

for i = 3:length(files)
    i
    %     files(i).name
    fid1 = fopen(strcat(indir,files(i).name),'r','ieee-le');
    cmp = fread(fid1,'float');
    cmpdim = 3*(mgcdim + 1 + bapdim);
    nfr_cmp = length(cmp(4:end))/cmpdim;
    cmp = reshape(cmp(4:end),cmpdim,nfr_cmp);
    cmp = cmp';
    fclose(fid1);
    
    if (min(min(cmp))) == -1e10
        maxv = min(cmp);
        idx = find(maxv == -1e10);
        idx
        fprintf('file %s has -1*exp(10) value \n',files(i).name);
        %         pause
    end
    
end








