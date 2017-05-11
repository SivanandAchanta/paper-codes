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

% train the model of N epochs
for NE = 1:numepochs
    
    % for each epoch
    iter = (NE-1)*train_numbats;
    
    % weight update step
    twu = tic;
    
    % randomize the sequences
    rp = randperm(train_numbats);
    
    % train with train_numbats
    train
    
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
