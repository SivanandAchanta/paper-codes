% The sequence of steps for building a statisitical parametric speech synthesis system using deep neural nets

clear all; close all; clc;

% set paths
foldname = 'arctic_rms';
voicename = 'RMS_DNN/';
tftsname = 'categ_3stateawbdur';
trainlist = '';

wavpath = strcat('../../feats/acoustic_feats/wav/',foldname,'_wav/');
f0dir = strcat('../../feats/acoustic_feats/f0/',foldname,'_f0/');
logf0dir = strcat('../../feats/acoustic_feats/logf0/',foldname,'_logf0/');
logmsasbdir = strcat('../../feats/acoustic_feats/logmsasb/',foldname,'_logmsasb/');

htslabpath = strcat('../../feats/text_feats/hts_lab/',foldname,'_hts_lab','/');
uniqphnslist = strcat('../../',voicename,'uniqphns.txt');
vowlist = strcat('../../',voicename,'vowlist.txt');
poslist = strcat('../../',voicename,'poslist.txt');
tfeatspath = strcat('../../feats/text_feats/',tftsname,'/',foldname,'_',tftsname,'/');

durpath = strcat('../../feats/dur_phnwc/',foldname,'_dur_phnwc','/');
atgtpath = strcat('../../feats/acoustic_feats/unittype/logmsasb/',foldname,'_logmsasb','/');
ttgtpath = strcat('../../feats/text_feats/unittype/',tftsname,'/',foldname,'_',tftsname,'/');

%% Step1: Extraction of audio feats

% Input: wav folder path and a trainlist file (optional)
% scripts for Step1 : call_audiofeatext.m, msasb_ftext.m, deltas_hts_dellis.m

msasb_ftext(wavpath,f0dir,logf0dir,logmsasbdir)

%% Step2: Extraction of text feats

% Input: hts_lab directory path
% scripts for Step2 : test_uniqsyls.m, unique_syls.m, txtfe_hts_v3.m, parse_htscdlabelstr.m

% unique_syls(htslabpath,uniqphnslist);
% txtfe_hts_v3(htslabpath,tfeatspath,uniqphnslist,vowlist)
txtfe_hts_v5(htslabpath,tfeatspath,uniqphnslist,vowlist,poslist)
%% Step3: Check the audio and text feats for anomaly

% Input: Audio and Text feats path
% scripts for Step3: checkframes.m

[diffvec] = checkframes(tfeatspath,logmsasbdir);

%% Step4: Make duration list for each unit-type

% Input: hts label files and uniq phone list
% scripts for Step4: syls_durs_v2.m

syls_durs_v2(htslabpath,uniqphnslist,durpath)

%% Step5: Split feats according to unit-type

% Input: duration catelogue per unit type and i/o features
% scripts for Step5: splitdata_unittype.m

splitdata_unittype(tfeatspath,logmsasbdir,ttgtpath,atgtpath,durpath,uniqphnslist,trainlist)

%% Step6: Train ANN per Unit-Type

% scripts for Step6: doannparampreprocess.m, annparam_preprocessing.m

nepochs='60';
mf='0.3';
l1='2';
l2='1';
l4='512N';
l5='L';
tmvnf='1';
issflag='1';
ossflag='1';
hflag='1';
nump = 8;
doannparampreprocess(sf,ttgtpath,atgtpath,nepochs,mf,l1,l2,l4,l5,tmvnf,issflag,ossflag,hflag,nump)


