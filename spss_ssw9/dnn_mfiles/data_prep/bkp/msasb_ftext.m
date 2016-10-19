function [] = msasb_ftext(wavpath,outdir,outdir2,logoutdir,trainlistpath)

if nargin == 4
    system(['ls', ' ', wavpath, ' ', '>', ' ','temptrnlist.txt'])
    trainlistpath = 'temptrnlist.txt';
end

% set paths
addpath('/home/siva/Dropbox/MatlabWorkspace/AbS/mfiles/STRAIGHTV40/'); % STRAIGHT
addpath('/home/siva/Dropbox/MatlabWorkspace/AbS/mfiles/msasb'); % msasb


% store feats here
mkdir(outdir);
mkdir(outdir2);
mkdir(logoutdir);

% STRAIGHT AbS settings
fs = 16000;
frshift_s = 80 ; % frame shift in samples
UPPERF0 = 580;
LOWERF0 = 60;

frshiftms = round((frshift_s/fs)*1000); % frameshift in ms
prm.F0frameUpdateInterval = frshiftms;
prm.spectralUpdateInterval = frshiftms;
prm.F0searchUpperBound = UPPERF0;
prm.F0searchLowerBound = LOWERF0;

% MSASB synthesis settings
nfft = 1024;
nfftby2 = round(nfft/2 + 1);
nbands = 80;
bw_band = fs/2/nbands;
bef = bw_band:bw_band:(fs/2 - bw_band);
bcf = bw_band/2:bw_band:(fs/2);
nbef = round((bef/fs)*nfft + 1);
nbcf = round((bcf/fs)*nfft + 1);
x = [1 nbcf nfftby2];
xi = [1:nfftby2];

w1 = [0.5 0 -0.5];  % have to reverse than the regular HTS format becaus of the use of filter fuction for computing deltas
w2 = [1 -2 1]; % symmetric fn and hence reverse is the same as original for double deltas

fid = fopen(trainlistpath);

while ~feof(fid)
    
    fname = fgetl(fid)
    [str,tok] = strtok(fname,'.');
    [x,fs] = wavread(strcat(wavpath,fname));
    
    
    % STRAIGHT Analysis for f0 and spectral envelope
    [f0, ap] = exstraightsource(x,fs,prm);
    [magy,se_bi,seali] = exmsasbspecft(x,f0,fs,nfft,frshiftms);
    
    nof = min(length(f0),size(magy,2));
    se_bi = se_bi(:,1:nof);
    log_sebi = 20*log10(se_bi + 1e-5);
    f0 = f0(1:nof);
    logf0 = zeros(size(f0));
    logf0(f0~=0) = log(f0(f0~=0));
    
    %     % del and del-del feats
    %     d = deltas_hts_dellis(se_bi, w1); % make sure x is d x N
    %     dd = deltas_hts_dellis(se_bi, w2);
    %     yy = [se_bi;d;dd];
    %     yy = yy'; % N x d matrix
    
    % del and del-del feats
    d = deltas_hts_dellis(log_sebi, w1); % make sure x is d x N
    dd = deltas_hts_dellis(log_sebi, w2);
    log_yy = [log_sebi;d;dd];
    log_yy = log_yy'; % N x d matrix
    
    % write the feats to the file
    dlmwrite(strcat(outdir,str,'.txt'),f0','delimiter',' ');
    dlmwrite(strcat(outdir2,str,'.txt'),logf0','delimiter',' ');
    dlmwrite(strcat(logoutdir,str,'.txt'),log_yy,'delimiter',' ');
    
end

fclose(fid);
