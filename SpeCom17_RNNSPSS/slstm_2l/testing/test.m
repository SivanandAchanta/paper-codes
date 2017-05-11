% Purpose : Test RNN

clear all; close all; clc;

% config
for lid = 1:3
    
    for arch_id = 1:2;
        
        model_no = (arch_id-1)*3 + lid;
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
        
        % load model specific stats
        gvparams = load(strcat(model_stats_dir,'gv_params.mat'));
        vuvth_final = load(strcat(model_stats_dir,'vuvth.mat'));
        
        total_err = 0;
        test_numbats = 10;
        objscores = zeros(test_numbats,4);
        tt = zeros(test_numbats,1);
        
        % error computation
        for li = 1:test_numbats
            fprintf('Processing file %d of %d ... \n',li,test_numbats);
            
            [X,Y,sl] = get_XY_seqver(test_batchdata, test_batchtargets, test_clv, (1:test_numbats), li, gpu_flag);
            
            %     fp = tic;
            fp_model
            %     tt(li) = toc(fp);
            
            %     switch cfn
            %         case 'nll'
            %             me = compute_zerooneloss(ol_mat,Y);
            %         case 'ls'
            %             me = compute_nmlMSE(ol_mat,Y);
            %     end
            %
            %
            %     total_err = total_err + me/test_numbats;
            
            % denormalize
            pcmp_deltas = denormalize(ol_mat,mo,vo,outvec,outtmvnf);
            ocmp_deltas = denormalize(Y,mo,vo,outvec,outtmvnf);
            
            % MLPG, Distortion Scores and GV
            [objscores(li,1),objscores(li,2),objscores(li,3),objscores(li,4),pmgc_mlpg,pbap_mlpg,pf0_mlpg,pvuv] = get_objscores(pcmp_deltas,ocmp_deltas,LOWERF0,UPPERF0,vo,vo_v,mgcdim,bapdim,outvec_mgc,outvec_bap,outvec_f0,vuvth_final.vuvth_final);
            %     [objscores(li,1),objscores(li,2),objscores(li,3),objscores(li,4),pmgc_mlpg,pbap_mlpg,pf0_mlpg,pvuv] = get_objscores_withoutmlpg(pcmp_deltas,ocmp_deltas,LOWERF0,UPPERF0,vo,vo_v,mgcdim,bapdim,outvec_mgc,outvec_bap,outvec_f0,vuvth_final.vuvth_final);
            [pmgc_mlpg] = do_gv(pmgc_mlpg,gvparams.a_opt(1:mgcdim));
            [pbap_mlpg] = do_gv(pbap_mlpg,gvparams.a_opt(mgcdim+1:mgcdim+bapdim));
            [pf0_mlpg] = do_gv(pf0_mlpg,gvparams.a_opt(end));
            pf0_mlpg(pf0_mlpg<LOWERF0) = 0;
            pf0_mlpg(pf0_mlpg>UPPERF0) = UPPERF0;
            
            % Sythesis
            ocmp_deltas(ocmp_deltas(:,233) < 50,233) = 0;
            ys_abs = do_synth(ocmp_deltas(:,1:50),ocmp_deltas(:,151:176),ocmp_deltas(:,233),fs,prm,spsssynthdir,li,'_abs',X2X,MGC2SP,FREQWARP,GAMMA,MGCORDER,lenfac,nfftby2);
            ys_synth = do_synth(pmgc_mlpg,pbap_mlpg,pf0_mlpg,fs,prm,spsssynthdir,li,'_mgcf0bap_gv',X2X,MGC2SP,FREQWARP,GAMMA,MGCORDER,lenfac,nfftby2);
            
            
        end
        
        %total_err
        
        %write_objscores(resdir,wtfile_name,test_numbats,objscores,testfiles)
        %fprintf('Average time taken to synthesize %d files by %s arch is : %f \n',test_numbats,wtfile_name,mean(tt));
        command = ['rm',' ', 'temp*'];
        system(command);
        
    end
    
end
