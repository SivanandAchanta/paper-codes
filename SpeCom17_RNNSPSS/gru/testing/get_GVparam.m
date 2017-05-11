% Purpose : Test RNN

clear all; close all; clc;

% config
arch_id = 2;

for lid = 1:3;
    
    model_no = 2*lid;
    
    config_basic
    acousticparam_config
    
    % read data
    load(strcat(statdir,'mvni.mat'))
    load(strcat(statdir,'mvno.mat'))
    load(strcat(statdir,'mvno_voiced.mat'))
    mo_v = mu_v;
    vo_v = std_v;
    
    testdataname = strcat('train',num2str(1),'.mat');
    readtestdata
    
    % architecture init
    arch_name1 = strcat(arch_name1,num2str(dout),ol_type);
    arch_init
    
    % load model specific stats
    vuvth_final = load(strcat(model_stats_dir,'vuvth.mat'));
    
    nr_sum = zeros(1,77);
    dr_sum = zeros(1,77);
    nb = 1;
    
    for i = 1:nb
        
        data = [];
        targets = [];
        clv = [];
        total_err = 0;
        testdataname = strcat('train',num2str(i),'.mat');
        readtestdata
        test_numbats = 50;
        % error computation
        for li = 1:test_numbats
            fprintf('Processing batch: %d ; file %d of %d ... \n',i,li,test_numbats);
            
            [X,Y,sl] = get_XY_seqver(test_batchdata, test_batchtargets, test_clv, (1:test_numbats), li, gpu_flag);
            
            fp_model
            
            
            % Optimum Transformation Parameter Estimation using Min. GV Error Criterion
            % denormalize
            pcmp_deltas = denormalize(ol_mat,mo,vo,outvec,outtmvnf);
            [pmgc_mlpg,pbap_mlpg,pf0_mlpg,pvuv] = do_mlpg(pcmp_deltas,LOWERF0,UPPERF0,vo,vo_v,mgcdim,bapdim,outvec_mgc,outvec_bap,outvec_f0,vuvth_final.vuvth_final);
            pcmp = [pmgc_mlpg pbap_mlpg pf0_mlpg];
            ocmp_deltas = denormalize(Y,mo,vo,outvec,outtmvnf);
            ocmp = [ocmp_deltas(:,1:mgcdim) ocmp_deltas(:,3*mgcdim+1:3*mgcdim+bapdim) ocmp_deltas(:,233)];
            
            gv_gen = var(pcmp,1);
            gv_orig = var(ocmp,1);
            
            nr_sum = nr_sum + (gv_gen.*gv_orig);
            dr_sum = dr_sum + (gv_gen.^2);
            
        end
        
    end
    
    a_optsqr = nr_sum./dr_sum;
    a_opt = sqrt(a_optsqr);
    save(strcat(model_stats_dir,'gv_params.mat'),'a_opt');
end

