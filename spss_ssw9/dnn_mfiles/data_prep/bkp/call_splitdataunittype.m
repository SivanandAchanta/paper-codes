% Purpose: Call split data unit-type

clear all; close all; clc;

% set paths
foldname = 'arctic_bdl';
voicename = 'BDL_DNN/';
tftsname = 'categ_dur';
trainlist = '/media/newHDD/feats/text_feats/train/train.list';

wavpath = strcat('../../feats/acoustic_feats/wav/',foldname,'_wav/');
f0dir = strcat('../../feats/acoustic_feats/f0/',foldname,'_f0/');
logf0dir = strcat('../../feats/acoustic_feats/logf0/',foldname,'_logf0/');
logmsasbdir = strcat('/media/newHDD/feats/acoustic_feats/train/stspec_train/');

htslabpath = strcat('../../feats/text_feats/hts_lab/',foldname,'_hts_lab','/');
uniqphnslist = strcat('../../',voicename,'uniqphns.txt');
vowlist = strcat('../../',voicename,'vowlist.txt');
poslist = strcat('../../',voicename,'poslist.txt');
tfeatspath = strcat('/media/newHDD/feats/text_feats/train/arctic_bdl_categ_dur_train/');

durpath = strcat('../../feats/dur_phnwc/',foldname,'_dur_phnwc','/');
atgtpath = strcat('../../feats/acoustic_feats/unittype/st/',foldname,'_st','/');
ttgtpath = strcat('../../feats/text_feats/unittype/',tftsname,'/',foldname,'_',tftsname,'/');

splitdata_unittype(tfeatspath,logmsasbdir,ttgtpath,atgtpath,durpath,uniqphnslist,trainlist)