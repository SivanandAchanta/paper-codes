% Purpose : Test RNN

clear all; close all; clc;

% config

config_IndicTTS
acousticparam_config

% read data
load(strcat(statdir,'mvni.mat'))
load(strcat(statdir,'mvno.mat'))
load(strcat(statdir,'mvno_voiced.mat'))
testdataname = strcat('test','.mat');
readtestdata

% architecture init
arch_name1 = strcat(arch_name1,num2str(dout),ol_type);
arch_init

% load weights
gvparams = load(strcat(model_stats_dir,'gv_params.mat'));
vuvth_final = load(strcat(model_stats_dir,'vuvth.mat'));


total_err = 0;
tot_test_numbats = 0;


for j = 1:length(lang_list)
    
    % read test data
    datadir = strcat('../../../../../../../',lang_list{j},'/M/nnspss/matfiles_16KHz/');
    testdataname = strcat('test','.mat');
    readtestdata
    
    % testfile names
    testwavpath = strcat('../../../../../../../',lang_list{j},'/M/nnspss/data/test/cmp/');
    testfiles = dir(strcat(testwavpath,'*.cmp'));
    
    % restrict the number of test batches
    test_numbats = 20;
    tot_test_numbats = length(lang_list)*test_numbats;
    objscores = zeros(test_numbats,4);
    
    % error computation
    for li = 1:test_numbats
        li
        
        [me,ol_mat,Y] = compute_error_singlefile(test_batchdata, test_batchtargets, test_clv, test_numbats, li, ...
            Wzf,Rzf,bzf,Wif,Rif,pif,bif,Wff,Rff,pff,bff,Wof,Rof,pof,bof,Uf,bu, ...
            Wzb,Rzb,bzb,Wib,Rib,pib,bib,Wfb,Rfb,pfb,bfb,Wob,Rob,pob,bob,Ub,f,nl,cfn,switch_spk_flag,spix);
        
        total_err = total_err + me/tot_test_numbats;
        
        % denormalize
        pcmp_deltas = denormalize(ol_mat,mo,vo,outvec,outtmvnf);
        ocmp_deltas = denormalize(Y,mo,vo,outvec,outtmvnf);
        
        % MLPG, Distortion Scores and GV
        [objscores(li,1),objscores(li,2),objscores(li,3),objscores(li,4),pmgc_mlpg,pbap_mlpg,pf0_mlpg,pvuv] = get_objscores(pcmp_deltas,ocmp_deltas,LOWERF0,UPPERF0,vo,vo_v,mgcdim,bapdim,outvec_mgc,outvec_bap,outvec_f0,vuvth_final.vuvth_final);
        %[objscores(li,1),objscores(li,2),objscores(li,3),objscores(li,4),pmgc_mlpg,pbap_mlpg,pf0_mlpg,pvuv] = get_objscores_withoutmlpg(pcmp_deltas,ocmp_deltas,LOWERF0,UPPERF0,vo,vo_v,mgcdim,bapdim,outvec_mgc,outvec_bap,outvec_f0,vuvth_final.vuvth_final);
        [pmgc_mlpg] = do_gv(pmgc_mlpg,gvparams.a_opt(1:mgcdim));
        [pbap_mlpg] = do_gv(pbap_mlpg,gvparams.a_opt(3*mgcdim+1:3*mgcdim+bapdim));
        [pf0_mlpg] = do_gv(pf0_mlpg,gvparams.a_opt(233));
        pf0_mlpg(pf0_mlpg<LOWERF0) = 0;
        pf0_mlpg(pf0_mlpg>UPPERF0) = UPPERF0;
        
        % Sythesis
        ocmp_deltas(ocmp_deltas(:,233) < 50,233) = 0;
        
        [fname,tok] = strtok(testfiles(li).name,'.');
        ys_abs = do_synth(ocmp_deltas(:,1:50),ocmp_deltas(:,151:176),ocmp_deltas(:,233),fs,prm,spsssynthdir,fname,strcat('_',lang_list{j},'_abs'),X2X,MGC2SP,FREQWARP,GAMMA,MGCORDER,lenfac,nfftby2);
        ys_synth = do_synth(pmgc_mlpg,pbap_mlpg,pf0_mlpg,fs,prm,spsssynthdir,fname,strcat('_',lang_list{j},'_mgcf0bap_gv'),X2X,MGC2SP,FREQWARP,GAMMA,MGCORDER,lenfac,nfftby2);
        
        
    end    
    
    % write_objscores(resdir,strcat(lang_list{j},'_swspk',num2str(switch_spk_flag),'_',wtfile_name),test_numbats,objscores,testfiles)
end

total_err

command = ['rm',' ', 'temp*'];
system(command);

