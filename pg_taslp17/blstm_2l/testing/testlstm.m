% Purpose : Test RNN

clear all; close all; clc;

% config

config_IndicTTS
acousticparam_config

% read data
load(strcat(statdir,'mvni.mat'))
load(strcat(statdir,'mvno.mat'))
load(strcat(statdir,'mvno_voiced.mat'))
testdataname = strcat('val','.mat');
readtestdata

% architecture init
arch_name1 = strcat(arch_name1,num2str(dout),ol_type);
arch_init

% load weights
%gvparams = load(strcat(model_stats_dir,'gv_params.mat'));
%vuvth_final = load(strcat(model_stats_dir,'vuvth.mat'));
vuvth_final.vuvth_final = 0.5;

total_err = 0;
tot_test_numbats = 0;

gen_name_list = {'M','F'};
spsssynthdir1 = strcat(spsssynthdir,'_',wtfile_name,'_swspk',num2str(switch_spk_flag),'_swlan',num2str(switch_lan_flag),'_swgen',num2str(switch_gen_flag));
clear spsssynthdir

for j = 1:length(lang_list)
    
    for k = 1:length(gen_name_list)
        if j == 2 && k == 2
            continue
        end
        
        if k == 2
            spkno = lanno*2;
        else
            spkno = lanno*2 - 1;
        end
        
        % read test data
        datadir = strcat('../../../../../../',lang_list{j},'/',gen_name_list{k},'/nnspss/matfiles_16KHz/');
        testdataname = strcat('val','.mat');
        readtestdata
        
        % testfile names
        testwavpath = strcat('../../../../../../',lang_list{j},'/',gen_name_list{k},'/nnspss/data/test/cmp/');
        testfiles = dir(strcat(testwavpath,'*.cmp'));
        
        % restrict the number of test batches
        test_numbats = 20;
        tot_test_numbats = length(lang_list)*test_numbats;
        objscores = zeros(test_numbats,4);
        
        spsssynthdir = strcat(spsssynthdir1,'/',lang_list{j},'/',gen_name_list{k},'/');
        mkdir(spsssynthdir)
        
        
        % error computation
        for li = 1:test_numbats
            li
            
            [me,ol_mat,Y] = compute_error_singlefile(test_batchdata, test_batchtargets, test_clv, test_numbats, li, p_f_1,p_lf_1,p_lb_1,p_lf_2,p_lb_2,p_f_2, f,nl,cfn,switch_spk_flag,switch_lan_flag,switch_gen_flag,spkno,lanno);
            
            %             lang_vec = zeros(5,12);
            %             lang_vec(1,4) = 1; lang_vec(2,5) = 1; lang_vec(3,6) = 1; lang_vec(4,11) = 1; lang_vec(5,12) = 1;
            %             X = [zeros(5,529) zeros(5,24) lang_vec zeros(5,2)];
            %             save_mat_name = 'lang_5';
            %             sl = 5;
            %             fp_model_save_outputs_each_layer
            
            %             X = [zeros(2,529) zeros(2,24) zeros(2,12) eye(2)];
            %             save_mat_name = 'gen';
            %             sl = 2;
            %             fp_model_save_outputs_each_layer
            %
            %             X = [zeros(24,529) eye(24) zeros(24,12) zeros(24,2)];
            %             save_mat_name = 'spk';
            %             sl = 24;
            %             fp_model_save_outputs_each_layer
            
            % pause
            
            
            total_err = total_err + me/tot_test_numbats;
            
            % denormalize
            pcmp_deltas = denormalize(ol_mat,mo,vo,outvec,outtmvnf);
            ocmp_deltas = denormalize(Y,mo,vo,outvec,outtmvnf);
            
            % MLPG, Distortion Scores and GV
            [objscores(li,1),objscores(li,2),objscores(li,3),objscores(li,4),pmgc_mlpg,pbap_mlpg,pf0_mlpg,pvuv] = get_objscores(pcmp_deltas,ocmp_deltas,LOWERF0,UPPERF0,vo,vo_v,mgcdim,bapdim,outvec_mgc,outvec_bap,outvec_f0,vuvth_final.vuvth_final);
            %[objscores(li,1),objscores(li,2),objscores(li,3),objscores(li,4),pmgc_mlpg,pbap_mlpg,pf0_mlpg,pvuv] = get_objscores_withoutmlpg(pcmp_deltas,ocmp_deltas,LOWERF0,UPPERF0,vo,vo_v,mgcdim,bapdim,outvec_mgc,outvec_bap,outvec_f0,vuvth_final.vuvth_final);
            % [pmgc_mlpg] = do_gv(pmgc_mlpg,gvparams.a_opt(1:mgcdim));
            % [pbap_mlpg] = do_gv(pbap_mlpg,gvparams.a_opt(3*mgcdim+1:3*mgcdim+bapdim));
            % [pf0_mlpg] = do_gv(pf0_mlpg,gvparams.a_opt(233));
            pf0_mlpg(pf0_mlpg<LOWERF0) = 0;
            pf0_mlpg(pf0_mlpg>UPPERF0) = UPPERF0;
            
            pcmp_deltas(:,1:50) = pmgc_mlpg;
            pcmp_deltas(:,233) = pf0_mlpg;
            
            
            % Sythesis
            ocmp_deltas(ocmp_deltas(:,233) < 50,233) = 0;
            
            [fname,tok] = strtok(testfiles(li).name,'.');
            ys_abs = do_synth(ocmp_deltas(:,1:50),ocmp_deltas(:,151:176),ocmp_deltas(:,233),fs,prm,spsssynthdir,fname,strcat('_',lang_list{j},'_abs'),X2X,MGC2SP,FREQWARP,GAMMA,MGCORDER,lenfac,nfftby2);
            ys_synth = do_synth(pmgc_mlpg,pbap_mlpg,pf0_mlpg,fs,prm,spsssynthdir,fname,strcat('_',lang_list{j},'_',num2str(spkno),'_mgcf0bap_gv'),X2X,MGC2SP,FREQWARP,GAMMA,MGCORDER,lenfac,nfftby2);
            
            dlmwrite(strcat(spsssynthdir,fname,'.cmp'),ocmp_deltas,'delimiter',' ');
            dlmwrite(strcat(spsssynthdir,fname,'_',num2str(spkno),'_synth.cmp'),pcmp_deltas,'delimiter',' ');
            
        end
        
        % write_objscores(resdir,strcat(lang_list{j},'_',gen_name_list{k},'_swspk',num2str(switch_spk_flag),'_',wtfile_name),test_numbats,objscores,testfiles)
    end
end

total_err

command = ['rm',' ', 'temp*'];
system(command);

