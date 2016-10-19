%%#########################################################################
%%                                                                       ##
%%                                                                       ##
%%                       IIIT Hyderabad, India                           ##
%%                      Copyright (c) 2014-2015                          ##
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
%%          Date   :  Jun. 2015                                          ##
%%                                                                       ##
%%#########################################################################

% open error text file
fid = fopen(strcat(errdir,'/err_',arch_name,'.err'),'w');

% % train set variables
% otl = [1 train_batchsize*(nl(nlv+1))];
% otl = cumsum(otl);
%
% % % test error set variables
% ottl = [1 test_batchsize*(nl(nlv+1))];
% ottl = cumsum(ottl);
%
% % validation set variables
% otvl = [1 val_batchsize*(nl(nlv+1))];
% otvl = cumsum(otvl);

% set params of nonlinearity
a_tanh = 1.7159;
b_tanh = 2/3;
bby2a = (b_tanh/(2*a_tanh));

% early stopping params (Theano DeepLearningTutorials)
patience = 10000;
patience_inc = 2;
imp_thresh = 0.995;
% val_freq = min(train_numbats,patience/2);
best_val_loss = inf;
best_iter = 0;
num_up = 0;


for NE = 1:numepochs
    
    % for each epoch
    iter = (NE-1)*train_numbats;
    
    % Weight update step
    twu = tic;
    rix = randperm(train_numbats);
    
    % fp and bp for each batch
    for i = 1:train_numbats
        i
        num_up = num_up + 1;
        
        % fp
        X = []; Y = [];
         
        X = train_batchdata(train_clv(rix(i)):train_clv(rix(i)+1)-1,:);
%         X=[X;mean(X,1);var(X,1)];
        sl_enc = size(X,1);
        Y = train_batchtargets(train_clv(rix(i)):train_clv(rix(i)+1)-1,:);
        Y = Y(1,:);
        sl = size(Y,1);
        
        
        [hcm,ah,alpha,c,sm,ym] = fp_cpu(X,GWi,Gbi,GWa,Gba,GWh,Gbh,GWo,Gbo,f);
        
%         size(ym)
%         size(Y)
        
        
        % bp
        dely = -(Y-ym)/sl;
        
        gWo = (sm*dely)';
        gbo = sum(dely,1)';
        
        switch f(2)
            case 'N'
                der_f = 2*bby2a*((a_tanh - sm).*(a_tanh + sm));
            case 'S'
                der_f = b_tanh*(sm.*(1 - sm));
            case 'R' % added on 28/11/14
                der_f = ones(nl(3),sl).*(sm > 0);
            case 'M' % Softmax layer
                der_f = (sm.*(1 - sm));
            case 'L'
                der_f = ones(nl(3),sl);
            otherwise
                disp('please enter a valid output function name (N/S/R/M/L)');
                return;
        end
        
        dels = (der_f'.*(dely*GWo));
        
        gWh = (c*dels)';
        gbh = sum(dels,1)';
      
        delc = dels*GWh;
        dela = delc*hcm;
        
        der_f_alpha = (diag(alpha) - alpha'*alpha); % sle x sle
        delb = dela*der_f_alpha;
        der_f = 2*bby2a*((a_tanh - ah).*(a_tanh + ah));
        delbb = der_f.*delb;
        
        
        gWa = delbb*hcm';
        gba = sum(delbb,2)';
        
        iemata = delbb'*GWa;
        iematc = alpha'*delc;
        
        switch f(1)
            case 'N'
                der_f = 2*bby2a*((a_tanh - hcm).*(a_tanh + hcm));
            case 'S'
                der_f = b_tanh*(hcm.*(1 - hcm));
            case 'R' % added on 28/11/14
                der_f = ones(nl(2),sl_enc).*(hcm > 0);
            case 'M' % Softmax layer
                der_f = (hcm.*(1 - hcm));
            case 'L'
                der_f = ones(nl(2),sl_enc);
            otherwise
                disp('please enter a valid output function name (N/S/R/M/L)');
                return;
        end
        
        deli = der_f'.*(iemata+iematc);
        gWi = deli'*X;
        gbi = sum(deli,1)';
        
        % grad check
        if gradCheckFlag; compute_numericalgrad_dnnwa; compute_gradDiff_dnnwa; pause; end;
        
        % update params
        update_params
        
        % check validation and test error
        
        if mod(num_up,check_valfreq) == 0
            
            %             for li = 1:val_numbats
            %                 X = train_batchdata(:,:,i);
            %                 Y = train_batchtargets(:,:,i);
            %                 sl = size(Y,1);
            %                 [hcm,ah,alpha,c,sm,ym] = fp_cpu(X,GWi,Gbi,GWa,Gba,GWh,Gbh,GWo,Gbo,f);
            %
            %             end
            valerr = 0;
            tvde = tic;
            % Validation data error computation
            for li = 1:val_numbats
                
                X = val_batchdata(val_clv(li):val_clv(li+1)-1,:);
                %sl = size(X,1);
           
                % fp
                [hcm,ah,alpha,c,sm,ym] = fp_cpu(X,GWi,Gbi,GWa,Gba,GWh,Gbh,GWo,Gbo,f);
                
                % compute error
                ol_mat = ym;
                Y = val_batchtargets(val_clv(li):val_clv(li+1)-1,:);
                Y = Y(1,:);
                
                switch cfn
                    case 'nll'
                        me = compute_zerooneloss_spk(ol_mat,Y,dout);
                    case 'ls'
                        me = mean(sum((Y - ol_mat).^2,2)./(sum(Y.^2,2)));
                end
                
                if isnan(me)
                    break
                end
                
                valerr = valerr + me/val_numbats;
            end
            toc(tvde)
            
            % Print error (validation) per epoc
            fprintf('Epoch : %d  Update : %d Val Loss : %f \n',NE,num_up,valerr);
            pause(1);
            
            if valerr < best_val_loss
                if valerr < (best_val_loss*imp_thresh)
                    patience = max(patience,iter*patience_inc);
                end
                best_val_loss = valerr;
                best_iter = iter;
                
                testerr = valerr;
                %                 % Test data error computation
                %                 for li = 1:test_numbats
                %                     X = test_batchdata(:,:,i);
                %                     Y = test_batchtargets(:,:,i);
                %                     sl = size(Y,1);
                %                     % fp
                %                     [hcm,ah,alpha,c,sm,ym] = fp_cpu(X,GWi,Gbi,GWa,Gba,GWh,Gbh,GWo,Gbo,f);
                %
                %                     % compute error
                %                     ol_mat = ym;
                %                     Y = test_batchtargets(:,:,li);
                %                     me = mean(sum((Y - ol_mat).^2,2)./(sum(Y.^2,2)));
                %                     clear ol_mat;
                %                     testerr = testerr + me/test_numbats;
                %                 end
                
                % Print error (testing) per epoc
                fprintf('\t Epoch : %d  Update: %d Test Loss : %f \n',NE,num_up,testerr);
                
                %%%%%%%%%%%%%%%%%%%%%%%%%%%% save weight file %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                % save parameters of the model
                Wi = GWi; Wa = GWa; Wh = GWh; Wo = GWo;
                bi = Gbi; ba = Gba; bh = Gbh; bo = Gbo;
                save(strcat(wtdir,'W_',arch_name,'.mat'),'Wi','Wa','Wh','Wo','bi','ba','bh','bo');
            end
            
            % Print error (validation and testing) per epoc
            fprintf(fid,'%d %d %f %f \n',NE,num_up,valerr,testerr);
            
        end
    end
    fprintf('Best val error : %f ; at epoch : %d ; with test error : %f \n', best_val_loss,floor(best_iter/train_numbats),testerr)
end



