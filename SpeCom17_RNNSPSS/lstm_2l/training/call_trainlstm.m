% Purpose :  LSTM

function [] = call_trainlstm(arch_name1, sgd_type, si, ri, so, gcth, rho, eps_hp, feat_name, lang_name)

sgd_type = sgd_type;
arch_name1 = arch_name1;
si = str2num(si);
ri = str2num(ri);
so = str2num(so);
gcth = str2num(gcth);

rho_hp = str2num(rho);
eps_hp = str2num(eps_hp);

feat_name = feat_name
lang_name = lang_name

datadir = strcat('../../../../',lang_name,'/','matfiles/');

% Load configuration file
config_basic

% Step 1 : Read data
if gradCheckFlag
    generate_randdata
else
    readdata_rnn
end

% Step 2 : Set architecture
arch_setup_step

% Step 3 : Start training
switch sgd_type
    
    case 'sgdcm'
        
        for lr = lr_vec
            for mf = mf_vec
                
                begin_training
                
            end
        end
        
    case 'adadelta'
        
        for rho_hp = rho_vec
            for eps_hp = eps_vec
                
                begin_training
                
            end
        end
        
    case 'adam'
        
        for alpha = alpha_vec
            for beta1 = beta1_vec
                for beta2 = beta2_vec
                    
                    begin_training
                    
                end
            end
        end
        
end

