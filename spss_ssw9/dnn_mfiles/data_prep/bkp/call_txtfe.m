% Purpose : Call text feature extraction script
clear all; close all; clc;

% set paths
htslabpath = strcat('../../feats/text_feats/hts_lab/',foldname{i},'_htslab','/');
uniqphnslist = strcat('../../voices/',foldname{i},'/uniqphns.txt');
vowlist = strcat('../../voices/',foldname{i},'/vowlist.txt');
poslist = strcat('../../voices/',foldname{i},'/poslist.txt');
tfeatspath = strcat('../../feats/text_feats/',tftsname,'/',foldname{i},'_',tftsname,'/');

% call text feat ext script
txtfe_hts_v5(htslabpath,tfeatspath,uniqphnslist,vowlist,poslist)

