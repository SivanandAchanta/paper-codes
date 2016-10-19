
% Setpaths for various tools
STRAIGHT_PATH = '/media/newHDD/hts_voices/STRAIGHTV40';
MATLAB_PATH = '/home/siva/Matlab/R2012a/bin/matlab'; 
SOX_PATH = '/usr/bin/sox';
SPTK_PATH = '/home/siva/tools/TTS/SPTK/bin/';
addpath(STRAIGHT_PATH);
wavpath         = '../../wav/';

% Setpaths for acoustic and text feature extraction
afeatpath       = '../../feats/acoustic_feats/feats_48k/';
datapath        = '../../data/';
matpath         = '../../matfiles/';
aext            = '.cmp';
text            = '.tfeat';
compdir         = strcat(afeatpath,'cmp/');
audio_traindir  = strcat(datapath,'train/cmp/');
audio_valdir    = strcat(datapath,'val/cmp/');
audio_testdir   = strcat(datapath,'test/cmp/');

htslabpath      = '../../htslab/';
uniqphnslist    = '../../etc/uniqphns.txt';
vowlist         = '../../etc/vowlist.txt';
poslist         = '../../etc/poslist.txt';
tfeatpath       = '../../feats/text_feats/';
tfeatsdir       = strcat(tfeatpath,'hts/');
text_traindir   = strcat(datapath,'train/text_feats/');
text_valdir     = strcat(datapath,'val/text_feats/');
text_testdir    = strcat(datapath,'test/text_feats/');

%%%%%%%% Remove the pre-exisiting directories and then make them %%%%%%%%
if isdir('wav_16k')
    system(['rm', ' ', '-rf', ' ', 'wav_16k'])
end

if isdir('raw')
    system(['rm', ' ', '-rf', ' ', 'raw'])
end

if isdir(audio_traindir)
    system(['rm', ' ', '-rf', ' ', audio_traindir])
end

if isdir(audio_valdir)
    system(['rm', ' ', '-rf', ' ', audio_valdir])
end

if isdir(audio_testdir)
    system(['rm', ' ', '-rf', ' ', audio_testdir])
end


if isdir(text_traindir)
    system(['rm', ' ', '-rf', ' ', text_traindir])
end

if isdir(text_valdir)
    system(['rm', ' ', '-rf', ' ', text_valdir])
end

if isdir(text_testdir)
    system(['rm', ' ', '-rf', ' ', text_testdir])
end


mkdir('wav_16k')
mkdir('raw')
mkdir(compdir)
mkdir(tfeatsdir)
mkdir(matpath)
mkdir(audio_traindir);
mkdir(audio_valdir);
mkdir(audio_testdir);
mkdir(text_traindir);
mkdir(text_valdir);
mkdir(text_testdir);

% SPTK commands
X2X         = strcat(SPTK_PATH,'x2x');
MGCEP       = strcat(SPTK_PATH,'mcep');
LPC2LSP     = strcat(SPTK_PATH,'lpc2lsp');
AVERAGE     = strcat(SPTK_PATH,'average');
NAN         = strcat(SPTK_PATH,'nan');
MINMAX      = strcat(SPTK_PATH,'minmax');
FREQT       = strcat(SPTK_PATH,'freqt');
C2ACR       = strcat(SPTK_PATH,'c2acr');
VOPR        = strcat(SPTK_PATH,'vopr');
MC2B        = strcat(SPTK_PATH,'mc2b');
SOPR        = strcat(SPTK_PATH,'sopr');
B2MC        = strcat(SPTK_PATH,'b2mc');
LSP2LPC     = strcat(SPTK_PATH,'lsp2lpc');
MGC2MGC     = strcat(SPTK_PATH,'mgc2mgc');
MERGE       = strcat(SPTK_PATH,'merge');
BCP         = strcat(SPTK_PATH,'bcp');
LSPCHECK    = strcat(SPTK_PATH,'lspcheck');
MGC2SP      = strcat(SPTK_PATH,'mgc2sp');
INTERPOLATE = strcat(SPTK_PATH,'interpolate');
DFS         = strcat(SPTK_PATH,'dfs');
BCUT        = strcat(SPTK_PATH,'bcut');
VSTAT       = strcat(SPTK_PATH,'vstat');


% STRAIGHT Params
fs          = 48000;
frshift_ms  = 5; % frameshift in ms
UPPERF0     = 580;
LOWERF0     = 60;

nfft        = 2048;
nfftby2     = round(nfft/2 + 1);
w1          = [0.5 0 -0.5];  % have to reverse than the regular HTS format becaus of the use of filter fuction for computing deltas
w2          = [1 -2 1]; % symmetric fn and hence reverse is the same as original for double deltas

% speech analysis conditions
SAMPFREQ    = fs;   % Sampling frequency (48kHz)
FRAMESHIFT  = round(0.005*SAMPFREQ); % Frame shift in point (240 = 48000 * 0.005)
FREQWARP    = 0.55;   % frequency warping factor
GAMMA       = 0;      % pole/zero weight for mel-generalized cepstral (MGC) analysis
MGCORDER    = 49;   % order of MGC analysis
LNGAIN      = 1;     % use logarithmic gain rather than linear gain
lenfac      = nfft;
mgcdim      = MGCORDER + 1;
bapdim      = 26;
numfiles_batch = 400;


