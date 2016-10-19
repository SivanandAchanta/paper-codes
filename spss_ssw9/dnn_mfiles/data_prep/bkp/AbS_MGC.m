% MGC AbS

% SPTK commands
X2X     = '/home/siva/tools/TTS/SPTK/bin/x2x';
MGCEP   = '/home/siva/tools/TTS/SPTK/bin/mcep';
LPC2LSP = '/home/siva/tools/TTS/SPTK/bin/lpc2lsp';
AVERAGE = '/home/siva/tools/TTS/SPTK/bin/average';
NAN     = '/home/siva/tools/TTS/SPTK/bin/nan';
MINMAX  = '/home/siva/tools/TTS/SPTK/bin/minmax';

FREQT    = '/home/siva/tools/TTS/SPTK/bin/freqt';
C2ACR    = '/home/siva/tools/TTS/SPTK/bin/c2acr';
VOPR     = '/home/siva/tools/TTS/SPTK/bin/vopr';
MC2B     = '/home/siva/tools/TTS/SPTK/bin/mc2b';
SOPR     = '/home/siva/tools/TTS/SPTK/bin/sopr';
B2MC     = '/home/siva/tools/TTS/SPTK/bin/b2mc';
LSP2LPC  = '/home/siva/tools/TTS/SPTK/bin/lsp2lpc';
MGC2MGC  = '/home/siva/tools/TTS/SPTK/bin/mgc2mgc';
MERGE    = '/home/siva/tools/TTS/SPTK/bin/merge';
BCP      = '/home/siva/tools/TTS/SPTK/bin/bcp';
LSPCHECK = '/home/siva/tools/TTS/SPTK/bin/lspcheck';
MGC2SP      = '/home/siva/tools/TTS/SPTK/bin/mgc2sp';
INTERPOLATE = '/home/siva/tools/TTS/SPTK/bin/interpolate';
DFS         = '/home/siva/tools/TTS/SPTK/bin/dfs';
BCUT     = '/home/siva/tools/TTS/SPTK/bin/bcut';
VSTAT    = '/home/siva/tools/TTS/SPTK/bin/vstat';


%Speech Analysis/Synthesis Setting ==============
% speech analysis
sr = 16000;   % sampling rate (Hz)
fs = 80; % frame period (point)
fw = 0.42;  % frequency warping
gm = 0;     % pole/zero representation weight
lg = 1;     % use log gain instead of linear gain
fr = fs/sr; % frame period (sec)



% speech analysis conditions
SAMPFREQ    = 16000;   % Sampling frequency (48kHz)
FRAMESHIFT  = round(0.005*SAMPFREQ); % Frame shift in point (240 = 48000 * 0.005)
FREQWARP    = 0.42;   % frequency warping factor
GAMMA       = 0;      % pole/zero weight for mel-generalized cepstral (MGC) analysis
MGCORDER    = 24;   % order of MGC analysis
LNGAIN      = 1;     % use logarithmic gain rather than linear gain

% Step 1 : Convert Spectrum to MGC
spfile = strcat(expdir,'synth_',arch_name,'/sp_abs/tel_0009_abs.sp');

% step 5-3 : synthesis with post filtered spectra
spec = dlmread(spfile);
spec = spec';
[sy_stght,prmS] = exstraightsynth(f0raw(1:951),spec,ap(:,1:951),sr,prm);
sy_stght=sy_stght./(1.01*max(abs(sy_stght)));
soundsc(diff(sy_stght),sr)

mgcfile = strcat(mgcdir,'/',str,'.mgc');
convspfile = strcat(mgcdir,'/',str,'.sp');
command = [X2X, ' ', '+af', ' ', spfile, ' ', '|' ...
    ' ', MGCEP, ' ', '-a', ' ', num2str(FREQWARP), ' ', '-m', ' ', num2str(MGCORDER),' ', '-l', ' ', num2str(1024) ...
    ' ', '-e', ' ', num2str(1.0E-08), ' ', '-j', ' ',num2str(0), ' ','-f' ,' ', num2str(0.0), ' ', '-q',' ',num2str(3), ' ', '>', ' ', mgcfile];

system(command)

pf = 1.5
system(['perl', ' ', 'temp.pl', ' ', str, ' ', mgcdir,' ',num2str(MGCORDER), ' ', num2str(pf)])

% Step 2 : Convert MGC back to spectrum
pmgcfile = strcat(mgcdir,'/',str,'.p_mgc');
command = [MGC2SP, ' ', '-a', ' ', num2str(fw),' ', '-g',' ', num2str(gm),' ', '-m', ' ', num2str(MGCORDER), ' ', ...
    '-l', ' ', num2str(1024), ' ', '-o', ' ', num2str(2), ' ', pmgcfile, ' ', '>', ' ', convspfile ];

system( command);

% step 5-3 : synthesis with post filtered spectra
fid1 = fopen(strcat(mgcdir,'/',str,'.sp'),'r','ieee-le');
pf_spec = fread(fid1, [513 T],'float');
fclose(fid1);
[sy_stght,prmS] = exstraightsynth(f0raw,pf_spec,ap,sr,prm);
sy_stght=sy_stght./(1.01*max(abs(sy_stght)));
soundsc(diff(sy_stght),sr)







