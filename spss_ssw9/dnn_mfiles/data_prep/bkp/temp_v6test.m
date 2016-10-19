clear all; close all ;clc;

foldname = 'emma';
voicename = 'EMMA_DNN/';
tftsname = 'categ_3stateawbdur';
trainlist = '';

labpath = strcat('../../feats/text_feats/lab/',foldname,'_lab','/');
uniqphnslist = strcat('../../',voicename,'uniqphns.txt');
tfeatspath = strcat('../../feats/text_feats/',tftsname,'/',foldname,'_',tftsname,'/');
txtfe_hts_v6(labpath,tfeatspath,uniqphnslist)

