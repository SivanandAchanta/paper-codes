% Purpose: Extract MGC features from STRAIGHT spectrum

clear all; close all; clc;

sppath = '../../feats/acoustic_feats/feats_16k/stspec/Telugu_stspec/';
files = dir(sppath);
mgcpath = '../../feats/acoustic_feats/feats_16k/mgc/Telugu_mgc/';
mkdir(mgcpath);

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


% speech analysis conditions
SAMPFREQ    = 16000;   % Sampling frequency (48kHz)
FRAMESHIFT  = round(0.005*SAMPFREQ); % Frame shift in point (240 = 48000 * 0.005)
FREQWARP    = 0.42;   % frequency warping factor
GAMMA       = 0;      % pole/zero weight for mel-generalized cepstral (MGC) analysis
MGCORDER    = 39;   % order of MGC analysis
LNGAIN      = 1;     % use logarithmic gain rather than linear gain

nfft = 1024;
nfftby2 = nfft/2 + 1;
w1 = [0.5 0 -0.5];  % have to reverse than the regular HTS format becaus of the use of filter fuction for computing deltas
w2 = [1 -2 1]; % symmetric fn and hence reverse is the same as original for double deltas

lenfac = nfft;

for i = 3:length(files)
    
    % Get STRAIGHT log-spectrum
    [filename,tok] = strtok(files(i).name,'.');
    filename
    
    M = dlmread(strcat(sppath,files(i).name));
    M = M(:,1:nfftby2);
    [N,dim] = size(M);
    
    dlmwrite('temp.sp',M,'delimiter', ' ');
    
    % Convert to MGC (q = 1 for 20*log10(|H(w)|)
    command = [X2X, ' ', '+af', ' ', 'temp.sp', ' ', '|' ...
        ' ', MGCEP, ' ', '-a', ' ', num2str(FREQWARP), ' ', '-m', ' ', num2str(MGCORDER),' ', '-l', ' ', num2str(lenfac) ...
        ' ', '-e', ' ', num2str(1.0E-08), ' ', '-j', ' ',num2str(0), ' ','-f' ,' ', num2str(0.0), ' ', '-q',' ',num2str(1), ' ', '>', ' ', 'temp.mgc'];
    
    system(command)
    
    
    %     % cross check MGC
    %     command = [MGC2SP, ' ', '-a', ' ', num2str(FREQWARP),' ', '-g',' ', num2str(GAMMA),' ', '-m', ' ', num2str(MGCORDER), ' ', ...
    %     '-l', ' ', num2str(lenfac), ' ', '-o', ' ', num2str(0), ' ', 'temp.mgc', ' ', '>', ' ', 'temp.csp' ];
    %
    %     system( command);
    %
    %     fid1 = fopen('temp.csp','r','ieee-le');
    %     M1 = fread(fid1, [nfftby2 N],'float');
    %     fclose(fid1);
    
    % read MGC
    fid1 = fopen('temp.mgc','r','ieee-le');
    mgc = fread(fid1, [MGCORDER+1 N],'float');
    fclose(fid1);
    
    % Make deltas and double-deltas
    d = deltas_hts_dellis(mgc, w1);
    dd = deltas_hts_dellis(mgc, w2);
    dmgc = [mgc;d;dd]; % 3dxN matrix
    
    dlmwrite(strcat(mgcpath,filename,'.mgc'),dmgc', 'delimiter', ' ');
    
end
