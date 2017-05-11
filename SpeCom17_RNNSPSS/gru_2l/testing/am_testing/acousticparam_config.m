sptk_cmd % load sptk commands

%% synthesis params
%% STRAIGHT Params
fs          = 48000;
frshift_s   = round(0.005*fs) ; % frame shift in samples
UPPERF0     = 580;
LOWERF0     = 60;

frshiftms                   = round((frshift_s/fs)*1000); % frameshift in ms
prm.F0frameUpdateInterval   = frshiftms;
prm.spectralUpdateInterval  = frshiftms;
prm.F0searchUpperBound      = UPPERF0;
prm.F0searchLowerBound      = LOWERF0;

%% Speech Analysis conditions
SAMPFREQ    = fs;   % Sampling frequency (48kHz)
FRAMESHIFT  = round(0.005*SAMPFREQ); % Frame shift in point (240 = 48000 * 0.005)
FREQWARP    = 0.55;   % frequency warping factor
GAMMA       = 0;      % pole/zero weight for mel-generalized cepstral (MGC) analysis
MGCORDER    = 49;   % order of MGC analysis
LNGAIN      = 1;     % use logarithmic gain rather than linear gain
mgcdim      = MGCORDER+1;
bapdim      = 26;
lenfac      = 2048;
nfft        = 2048;
nfftby2     = round(nfft/2 + 1);

outvec_mgc = 1:3*mgcdim;
outvec_bap = 3*mgcdim+1:3*mgcdim+3*bapdim;
outvec_f0 = 233:235;