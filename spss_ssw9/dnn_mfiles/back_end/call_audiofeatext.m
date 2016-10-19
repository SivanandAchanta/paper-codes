% Purpose : 
% (1) A script to extract acoustic features (STRAIGHT Spectrum, Mel-general cepstrum (mgc), F0, VUV and Aperiodicity faetures)
% (2) This script also composes several audio streams into a single composite feature file

fprintf(' extracting acoustic features ...\n');
stmsasb_ftext
extract_mgc
system(['rm', ' ', ' temp.sp', ' ', ' temp.mgc'])
comp_audiofeats
fprintf(' acoustic feature extraction done !!!\n');

