% Purpose : Training module 

% open error file
fid = fopen(strcat(errdir,'err_',arch_name,'.err'),'w');

% early stopping params (Theano DeepLearningTutorials)
patience = 10000;
patience_inc = 2;
imp_thresh = 0.995;
val_freq = min(train_numbats,patience/2);
best_val_err = inf;
best_epoch = 0;
num_up = 0;
train_test_numbats = round(train_numbats/train_test_ratio);

% initialize train/val/test errors to 0
val_err = 0;
test_err = 0;
train_err = 0;

max_nb = max(nb_vec);
nlang_splits = 1;
slno_vec = [1];
elno_vec = [5];

% train the model of N epochs
for NE = 1:numepochs
    
    % for each epoch
    iter = (NE-1)*train_numbats;
    
    % weight update step
    twu = tic;

    for bn = 1:max_nb
        
        for nlsp = 1:nlang_splits
            slno = slno_vec(nlsp);
            elno = elno_vec(nlsp);
 
            [train_batchdata,train_batchtargets,train_clv] = get_traindata(datadir,bn,m,v,mo,vo,mvnivec,dout,lang_list,nb_vec,slno,elno);
            train_numbats = length(train_clv) - 1;
            rp = randperm(train_numbats);
            train_test_numbats = round(train_numbats/train_test_ratio);
            train

            if isnan(val_err) || isnan(test_err)
               break;
            end
            clear train_batchdata train_batchtargets
        end

    end

    if isnan(val_err) || isnan(test_err)
        break;
    end
    
    % time take for training 1 epoch
    fprintf('Time taken for Epoch : %d is %f sec \n',NE,toc(twu));
end

% close the error file
fclose(fid);

% print the best val and test error as well as the epoch at which it is obtained
fprintf('Best loss obtained at Epoch : %d; Val Loss: %f   Test Loss: %f \n',best_epoch,best_val_err,test_err);
