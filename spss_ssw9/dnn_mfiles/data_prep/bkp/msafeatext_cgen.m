% Straight-MSASB feature extraction

clear all; close all; clc;

% setpaths
addpath('/media/newHDD/hts_voices/STRAIGHTV40');
addpath('/media/newHDD/BDL_DNN/mfiles/featext/speech'); % for HTS deltas

stmsapath = '../stmsa/';
stpath = '../stspec/';
f0path = '../f0_st/';
vuvpath = '../v/';
mcepdpath = '../mcep_deltas/';
f0bpath = '../f0/';

mkdir(stmsapath);
mkdir(stpath);
mkdir(f0path);
mkdir(vuvpath);
mkdir(mcepdpath);
mkdir(f0bpath);

% STRAIGHT Params
fs = 16000;
frshift_s = 80 ; % frame shift in samples
UPPERF0 = 480;
LOWERF0 = 70;

frshiftms = round((frshift_s/fs)*1000); % frameshift in ms
prm.F0frameUpdateInterval = frshiftms;
prm.spectralUpdateInterval = frshiftms;
prm.F0searchUpperBound = UPPERF0;
prm.F0searchLowerBound = LOWERF0;

% msasb params
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
w = [0.5 0 -0.5];  % have to reverse than the regular HTS format becaus of the use of filter fuction for computing deltas
    
wavpath = '../wav/';
files = dir(wavpath);

for j = 3:length(files)
    
    [filename,tok] = strtok(files(j).name,'.');
    [y,fs] = wavread(strcat(wavpath,filename,'.wav'));
    filename
    %%%%%%%%%%%%%%%%%%%%% STRAIGHT AbS %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    
    % STRAIGHT Analysis by Synthesis
    [f0raw, ap] = exstraightsource(y,fs,prm);
    [st_sgram] = exstraightspec(y, f0raw, fs, prm);
    
    % MSASB modification applied to STRAIGHT Spectrum
    nframe = size(st_sgram,2);
    se_bi = zeros(nbands+2,nframe);
    
    for ii = 1:size(st_sgram,2)
        % compute the maximal spectral amplitudes in sub bands
        se_bi(1,ii) = st_sgram(1,ii);
        se_bi(2,ii) = max(st_sgram(2:nbef(1),ii));
        for k = 2:nbands-1
            se_bi(k+1,ii) = max(st_sgram(nbef(k-1) + 1:nbef(k),ii));
        end
        se_bi(k+2,ii) = max(st_sgram(nbef(k) + 1:end - 1,ii));
        se_bi(nbands + 2,ii) = st_sgram(end,ii);
        
    end
    
    f0raw = f0raw';
    vuv = zeros(size(f0raw));
    vuv(f0raw~=0) = 1;
    

    dlmwrite(strcat(stpath,filename,'.stspec'),st_sgram','delimiter',' ');
    dlmwrite(strcat(f0path,filename,'.f0'),[f0raw vuv],'delimiter',' ');
    dlmwrite(strcat(vuvpath,filename,'.v'),vuv,'delimiter',' ');
    
    % compute deltas for st-msasb  
    lsebi = 20*log10(se_bi + 1e-5);
    d = deltas_hts_dellis(lsebi, w);
    dsebi = [lsebi;d]; % 2dxN matrix
    
    dlmwrite(strcat(stmsapath,filename,'.stmsasb'),dsebi','delimiter',' ');
        
    % write the binary files (f0 and spectrum)
    command = ['$ESTDIR/bin/ch_track',' ','-itype',' ', 'ascii', ' ', '-otype',' ','est_binary',' ', ...
        strcat(stmsapath,filename,'.stmsasb'), ' ','-s', ' ','0.005',' ','-o',' ', strcat(mcepdpath,filename,'.mcep')];
    system(command);
    
    command = ['$ESTDIR/bin/ch_track',' ','-itype',' ', 'ascii', ' ', '-otype',' ','est_binary',' ', ...
        strcat(f0path,filename,'.f0'), ' ','-s', ' ','0.005',' ','-o',' ', strcat(f0bpath,filename,'.f0')];
    system(command);
    
end






