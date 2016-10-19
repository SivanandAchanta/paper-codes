clear all; close all; clc;

foldname = {'Hindi'};
% htslabpath = strcat('../../feats/text_feats/hts_lab/',foldname{1},'_htslab','/');
htslabpath = strcat('../../voices/',foldname{1},'/data/train/text_feats/htslab/');
uniqphnslist = strcat('../../voices/',foldname{1},'/etc/uniqphns.txt');
durpath = strcat('../../voices/',foldname{1},'/data/train/dur_phnwc/');
% durpath = strcat('../../feats/text_feats/dur_phnwc/',foldname{1},'_dur_phnwc','/');
syls_durs_v2(htslabpath,uniqphnslist,durpath)
