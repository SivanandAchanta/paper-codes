%%#########################################################################
%%                                                                       ##
%%                                                                       ##
%%                       IIIT Hyderabad, India                           ##
%%                      Copyright (c) 2015                               ##
%%                        All Rights Reserved.                           ##
%%                                                                       ##
%%  Permission is hereby granted, free of charge, to use and distribute  ##
%%  this software and its documentation without restriction, including   ##
%%  without limitation the rights to use, copy, modify, merge, publish,  ##
%%  distribute, sublicense, and/or sell copies of this work, and to      ##
%%  permit persons to whom this work is furnished to do so, subject to   ##
%%  the following conditions:                                            ##
%%   1. The code must retain the above copyright notice, this list of    ##
%%      conditions and the following disclaimer.                         ##
%%   2. Any modifications must be clearly marked as such.                ##
%%   3. Original authors' names are not deleted.                         ##
%%   4. The authors' names are not used to endorse or promote products   ##
%%      derived from this software without specific prior written        ##
%%      permission.                                                      ##
%%                                                                       ##
%%  IIIT HYDERABAD AND THE CONTRIBUTORS TO THIS WORK                     ##
%%  DISCLAIM ALL WARRANTIES WITH REGARD TO THIS SOFTWARE, INCLUDING      ##
%%  ALL IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS, IN NO EVENT   ##
%%  SHALL IIIT HYDERABAD NOR THE CONTRIBUTORS BE LIABLE                  ##
%%  FOR ANY SPECIAL, INDIRECT OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES    ##
%%  WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN   ##
%%  AN ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION,          ##
%%  ARISING OUT OF OR IN CONNECTION WITH THE USE OR PERFORMANCE OF       ##
%%  THIS SOFTWARE.                                                       ##
%%                                                                       ##
%%#########################################################################
%%                                                                       ##
%%          Author :  Sivanand Achanta (sivanand.a@research.iiit.ac.in)  ##
%%          Date   :  Jul. 2015                                          ##
%%                                                                       ##
%%#########################################################################

% open text file for writing train/test/val error per update
fid = fopen(strcat(errdir,'/err_',arch_name,'.err'),'w');

% early stopping params (Theano DeepLearningTutorials)
patience = 10000;
patience_inc = 2;
imp_thresh = 0.995;
val_freq = min(train_numbats,patience/2);
best_val_err = inf;
best_epoch = 0;
num_up = 0;

val_err = 0;
test_err = 0;
train_err = 0;

for NE = 1:numepochs
    
    % for each epoch
    iter = (NE-1)*train_numbats;
    
    % Weight update step
    twu = tic;

      
    for bn = 1:nb

        [train_batchdata,train_batchtargets,train_clv] = get_traindata(datadir,bn,m,v,mo,vo,mvnivec,dout);
        train_numbats = length(train_clv) - 1;
        rp = randperm(train_numbats);
        train_test_numbats = round(train_numbats/train_test_ratio);
        train

        if isnan(val_err) || isnan(test_err)
           break;
        end
        clear train_batchdata train_batchtargets
    end
    
    % time take for training 1 epoch
    fprintf('Time taken for Epoch : %d is %f sec \n',NE,toc(twu));
end

% close the error file
fclose(fid);

% print the best val and test error as well as the epoch at which it is obtained
fprintf('Best loss obtained at Epoch : %d; Val Loss: %f   Test Loss: %f \n',best_epoch,best_val_err,test_err);
