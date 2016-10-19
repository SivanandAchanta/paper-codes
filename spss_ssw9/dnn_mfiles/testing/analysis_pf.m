expname = 'exp_hts_stmspecf0_Telugu';
expdir = strcat('../../',expname,'/');
% Step4 : Load weight matrix
% NN param initialization
mf = [0.95]; % momentum factor
berp = [1 1 1 1 1 1 1]; % bernoulli prob of output layer is always 1

% initialize nonlinearity and learning rate per layer params
eta = 1e-3;
a_tanh = 1.7159;
b_tanh = 2/3;
bby2a = (b_tanh/(2*a_tanh));

train_batchsize = 1000;
arch_name = strcat('1000R800R600R500R428L','_bs',num2str(train_batchsize),'flr_mf',num2str(eta),num2str(mf));

mgcdir = strcat(expdir,'synth_',arch_name,'/mgc_sps');
str = 'tel_009';

% SPTK commands
X2X     = '/home/siva/tools/TTS/SPTK/bin/x2x';
MGCEP   = '/home/siva/tools/TTS/SPTK/bin/mcep';
LPC2LSP = '/home/siva/tools/TTS/SPTK/bin/lpc2lsp';
BCP     = '/home/siva/tools/TTS/SPTK/bin/bcp';
AVERAGE = '/home/siva/tools/TTS/SPTK/bin/average';
MERGE   = '/home/siva/tools/TTS/SPTK/bin/merge';
VSTAT   = '/home/siva/tools/TTS/SPTK/bin/vstat';
NAN     = '/home/siva/tools/TTS/SPTK/bin/nan';
MINMAX  = '/home/siva/tools/TTS/SPTK/bin/minmax';


% speech analysis conditions
SAMPFREQ    = 16000;   % Sampling frequency (48kHz)
FRAMESHIFT  = round(0.005*SAMPFREQ); % Frame shift in point (240 = 48000 * 0.005)
FREQWARP    = 0.42;   % frequency warping factor
GAMMA       = 0;      % pole/zero weight for mel-generalized cepstral (MGC) analysis
MGCORDER    = 39;   % order of MGC analysis
LNGAIN      = 1;     % use logarithmic gain rather than linear gain


%dlmwrite('temp.sp',seali','delimiter', ' ');

spfile = 'temp.sp';
mgcfile = strcat(mgcdir,'/',str,'.mgc');

command = [X2X, ' ', '+af', ' ', spfile, ' ', '|' ...
    ' ', MGCEP, ' ', '-a', ' ', num2str(FREQWARP), ' ', '-m', ' ', num2str(MGCORDER),' ', '-l', ' ', num2str(1024) ...
    ' ', '-e', ' ', num2str(1.0E-08), ' ', '-j', ' ',num2str(0), ' ','-f' ,' ', num2str(0.0), ' ', '-q',' ',num2str(3), ' ', '>', ' ', mgcfile];

system(command)

% step 5-2 : do post filtering and compute post filtered spectra
pf = 1.4
system(['perl', ' ', 'temp.pl', ' ', str, ' ', mgcdir,' ',num2str(MGCORDER), ' ', num2str(pf)])

% Step 2 : Convert MGC back to spectrum
pmgcfile = strcat(mgcdir,'/',str,'.p_mgc');
convspfile = strcat(mgcdir,'/',str,'.sp');
command = [MGC2SP, ' ', '-a', ' ', num2str(fw),' ', '-g',' ', num2str(gm),' ', '-m', ' ', num2str(MGCORDER), ' ', ...
    '-l', ' ', num2str(1024), ' ', '-o', ' ', num2str(2), ' ', pmgcfile, ' ', '>', ' ', convspfile ];

system( command);

fid1 = fopen(strcat(mgcdir,'/',str,'.sp'),'r','ieee-le');
pf_spec = fread(fid1, [513 T],'float');
fclose(fid1);

% step 5-3 : synthesis with post filtered spectra
[sy_stght,prmS] = exstraightsynth(f0raw,pf_spec,ap,sr,prm);
sy_stght=sy_stght./(1.01*max(abs(sy_stght)));
soundsc(diff(sy_stght),sr)
wavwrite(sy_stght,sr,strcat(spssynthdir,str,'_mlpg_pf.wav'));

% sp = dlmread(spfile);
% 
% fid1 = fopen(strcat(mgcdir,'/',str,'.sp'),'r','ieee-le');
% pf_spec = fread(fid1, [513 T],'float');
% fclose(fid1);
% 
% 
% size(sp)
% size(pf_spec)
% 
% for i = 1:size(sp,1)
%     
%     plot((1:513),sp(i,:),'b-',(1:513),pf_spec(:,i),'r-');
%     pause
% end