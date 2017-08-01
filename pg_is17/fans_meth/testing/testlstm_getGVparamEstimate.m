% Purpose : Test RNN

clear all; close all; clc;

% config
config_IndicTTS
acousticparam_config

% read data
load(strcat(statdir,'mvni.mat'))
load(strcat(statdir,'mvno.mat'))
% testdataname = strcat('train',num2str(1),'.mat');
% readtestdata
din = length(m);
dout = length(mo);

% architecture init
arch_name1 = strcat(arch_name1,num2str(dout),ol_type);
arch_init


nr_sum = zeros(1,dout);
dr_sum = zeros(1,dout);

lang_list = {'tel','tam','kan','mal','hin'};

for j = 1:length(lang_list)
    
    datadir = strcat('../../../../../../../',lang_list{j},'/M/nnspss/matfiles_16KHz/');
    nb = dir(strcat(datadir,'train*'));
    nb = length(nb);
    
    for i = 1%:nb
        
        data = [];
        targets = [];
        clv = [];
        total_err = 0;
        testdataname = strcat('train',num2str(i),'.mat');
        readtestdata
        
        % error computation
        for li = 1:test_numbats
            fprintf('Processing batch: %d ; file %d of %d ... \n',i,li,test_numbats);
            
            [X,Y,sl] = get_XY_seqver(test_batchdata, test_batchtargets, test_clv, (1:test_numbats), li, gpu_flag);
            
            fp_model
            
            switch cfn
                case 'nll'
                    me = compute_zerooneloss(ol_mat,Y);
                case 'ls'
                    me = compute_nmlMSE(ol_mat,Y);
            end
            
            
            total_err = total_err + me/test_numbats;
            
            % Optimum Transformation Parameter Estimation using Min. GV Error Criterion
            % denormalize
            pcmp_deltas = denormalize(ol_mat,mo,vo,outvec,outtmvnf);
            ocmp_deltas = denormalize(Y,mo,vo,outvec,outtmvnf);
            
            gv_gen = var(pcmp_deltas,1);
            gv_orig = var(ocmp_deltas,1);
            
            nr_sum = nr_sum + (gv_gen.*gv_orig);
            dr_sum = dr_sum + (gv_gen.^2);
            
        end
        total_err
    end
end

a_optsqr = nr_sum./dr_sum;
a_opt = sqrt(a_optsqr);
save(strcat(model_stats_dir,'gv_params.mat'),'a_opt');

