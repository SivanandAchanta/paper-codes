% Purpose : Test RNN


% config
lid = 3;
arch_id = 2;
model_no = 6;

config_basic
acousticparam_config

% read data
load(strcat(statdir,'mvni.mat'))
load(strcat(statdir,'mvno.mat'))
load(strcat(statdir,'mvno_voiced.mat'))
mo_v = mu_v;
vo_v = std_v;

testdataname = strcat('test','.mat');
readtestdata

% architecture init
arch_name1 = strcat(arch_name1,num2str(dout),ol_type);
arch_init

test_numbats = 5;
tt = zeros(test_numbats,1);

% error computation
for li = 1:test_numbats
    fprintf('Processing file %d of %d ... \n',li,test_numbats);
    
    [X,Y,sl] = get_XY_seqver(test_batchdata, test_batchtargets, test_clv, (1:test_numbats), li, gpu_flag);
    
    fp = tic;
    fp_model
    tt(li) = toc(fp);
    
    
end

fid = fopen('test_times.txt','a');
fprintf(fid,'Average time taken to synthesize %d files by %s arch is : %f \n',test_numbats,wtfile_name,mean(tt));
fclose(fid);


