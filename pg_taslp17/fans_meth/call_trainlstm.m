% Purpose : Bi-LSTM

function [] = call_trainlstm(arch_name1, sgd_type, si, ri, so, fb_init, gcth, rho, eps_hp)

sgd_type = sgd_type;
arch_name1 = arch_name1;
si = str2num(si);
ri = str2num(ri);
so = str2num(so);
fb_init = str2num(fb_init);
gcth = str2num(gcth);

rho_hp = str2num(rho);
eps_hp = str2num(eps_hp);


% Load configuration file
config_IndicTTS

% Step 1 : Read data
if gradCheckFlag
    generate_randdata
else
    readdata_rnn_IndicTTS_multilingual
    tot_train_numbats = train_numbats;
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

