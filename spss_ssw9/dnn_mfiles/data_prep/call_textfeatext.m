% Purpose : Text feature extraction


fprintf(' extracting text features ...\n');
% Step 1 : To convert festival utts to hts full  
command = ['sh', ' ', 'make_htsfcl.sh', ' ', uttspath, ' ', htslabpath];
system(command);
% Step 2 : Extract numerical features from HTS full context labels
txtfe_hts_v5
fprintf(' text feature extraction done !!!\n');