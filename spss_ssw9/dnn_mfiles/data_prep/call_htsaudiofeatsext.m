% Purpose : Call "audiofeats_hts.sh" scripts to make hts audio feats
% clear all; close all; clc;
% config

if isdir('wav')
    system(['rm', ' ', '-rf', ' ', 'wav'])
end

if isdir('sp')
    system(['rm', ' ', '-rf', ' ', 'sp'])
end

if isdir('ap')
    system(['rm', ' ', '-rf', ' ', 'ap'])
end

if isdir('f0')
    system(['rm', ' ', '-rf', ' ', 'f0'])
end

if isdir('mgc')
    system(['rm', ' ', '-rf', ' ', 'mgc'])
end

if isdir('bap')
    system(['rm', ' ', '-rf', ' ', 'bap'])
end

if isdir('lf0')
    system(['rm', ' ', '-rf', ' ', 'lf0'])
end

if isdir('cmp')
    system(['rm', ' ', '-rf', ' ', 'cmp'])
end

% copy wav files to wav_16k
system(['cp', ' ', strcat(wavpath,'*.wav'), ' ', 'wav_16k/']);

% % make wavlist
% system(['ls', ' ', 'wav_16k', ' ', '>', ' ', 'wavlist.txt']);

command = ['sh',' ','audiofeats_hts_v3.sh' ,' ',SPTK_PATH,' ',MATLAB_PATH,' ',STRAIGHT_PATH,' ',SOX_PATH, ...
    ' ', num2str(SAMPFREQ), ' ', num2str(FRAMESHIFT), ' ', num2str(FREQWARP), ' ', num2str(GAMMA), ' ', ...
    num2str(MGCORDER), ' ', num2str(LNGAIN), ' ', num2str(LOWERF0), ' ', num2str(UPPERF0)]
system(command)

% remove all directories other than "wav (48KHz)" and "cmp"
if isdir('wav_16k')
    system(['rm', ' ', '-rf', ' ', 'wav_16k'])
end

if isdir('raw')
    system(['rm', ' ', '-rf', ' ', 'raw'])
end

if isdir('sp')
    system(['rm', ' ', '-rf', ' ', 'sp'])
end

if isdir('ap')
    system(['rm', ' ', '-rf', ' ', 'ap'])
end

if isdir('f0')
    system(['rm', ' ', '-rf', ' ', 'f0'])
end

if isdir('mgc')
    system(['rm', ' ', '-rf', ' ', 'mgc'])
end

if isdir('bap')
    system(['rm', ' ', '-rf', ' ', 'bap'])
end

if isdir('lf0')
    system(['rm', ' ', '-rf', ' ', 'lf0'])
end

system(['mv', ' ', 'cmp', ' ', afeatpath]);
system(['mv', ' ', 'wav', ' ', afeatpath]);