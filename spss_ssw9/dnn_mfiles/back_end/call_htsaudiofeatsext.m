% Purpose : Call "audiofeats_hts.sh" scripts to make hts audio feats
clear all; close all; clc;

% if isdir('wav_16k')
%     system(['rm', ' ', '-rf', ' ', 'wav_16k'])
% end
% 
% if isdir('raw')
%     system(['rm', ' ', '-rf', ' ', 'raw'])
% end
% 
% if isdir('wav')
%     system(['rm', ' ', '-rf', ' ', 'wav'])
% end
% 
% if isdir('sp')
%     system(['rm', ' ', '-rf', ' ', 'sp'])
% end
% 
% if isdir('ap')
%     system(['rm', ' ', '-rf', ' ', 'ap'])
% end
% 
% if isdir('f0')
%     system(['rm', ' ', '-rf', ' ', 'f0'])
% end
% 
% if isdir('mgc')
%     system(['rm', ' ', '-rf', ' ', 'mgc'])
% end
% 
% if isdir('bap')
%     system(['rm', ' ', '-rf', ' ', 'bap'])
% end
% 
% if isdir('lf0')
%     system(['rm', ' ', '-rf', ' ', 'lf0'])
% end
% 
% if isdir('cmp')
%     system(['rm', ' ', '-rf', ' ', 'cmp'])
% end
% 
% wavdir = '../../wav/';
% mkdir('wav_16k')
% mkdir('raw')
% 
% % copy wav files to wav_16k
% system(['cp', ' ', strcat(wavdir,'*.wav'), ' ', 'wav_16k/']);

% make wavlist
system(['ls', ' ', 'wav_16k', ' ', '>', ' ', 'wavlist.txt']);

command = ['sh',' ','audiofeats_hts_v3.sh' ,' ','wavlist.txt',' ','wav_16k',' ','raw'];
system(command)

% command = ['perl',' ','highlevelfeats.pl'];
% system(command)


% remove all directories other than "wav (48KHz)" and "cmp"
% if isdir('wav_16k')
%     system(['rm', ' ', '-rf', ' ', 'wav_16k'])
% end
% 
% if isdir('raw')
%     system(['rm', ' ', '-rf', ' ', 'raw'])
% end
% 
% if isdir('sp')
%     system(['rm', ' ', '-rf', ' ', 'sp'])
% end
% 
% if isdir('ap')
%     system(['rm', ' ', '-rf', ' ', 'ap'])
% end
% 
% if isdir('f0')
%     system(['rm', ' ', '-rf', ' ', 'f0'])
% end
% 
% if isdir('mgc')
%     system(['rm', ' ', '-rf', ' ', 'mgc'])
% end
% 
% if isdir('bap')
%     system(['rm', ' ', '-rf', ' ', 'bap'])
% end
% 
% if isdir('lf0')
%     system(['rm', ' ', '-rf', ' ', 'lf0'])
% end
