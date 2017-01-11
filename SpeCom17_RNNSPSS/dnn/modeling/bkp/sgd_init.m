
% l1 and l2 regularization penalty coefficent settings
l1_vec = [0];
l2_vec = [0.0001 0.00005 0.00001 0.000005];

% set hyper params
switch sgd_type
    
    case 'sgdcm'
        
        % Training DNN using Naive SGD with classical momentum
        
        lr = [1e-2 1e-4 1e-6];
        mf_vec = [0 0.3 0.7 0.995];
        
        if gpu_flag
            Gb = gpuArray(b);  GW = gpuArray(W);
            Gpdb = gpuArray(zeros(size(b)));  GpdW = gpuArray(zeros(size(W)));
        else
            Gb = b;  GW = W;
            Gpdb = zeros(size(b));  GpdW = zeros(size(W));
        end
        
        for l1 = l1_vec
            for l2 = l2_vec
                for lr = lr_vec
                    for mf = mf_vec
                        
                        arch_name2 = strcat('_l2',num2str(l2),'_lr',num2str(lr),'_mf',num2str(mf));
                        arch_name = strcat(arch_name1,arch_name2,'_bs',num2str(train_batchsize),'_',wtinit_meth);
                        
                        % Step 4 : Weight initialization
                        wtinit_meth = 'yi';
                        wt_init
                        
                        % Step 5 : Training
                        if gpu_flag
                            traindnn_gpu
                        else
                            traindnn_cpu
                        end
                        
                    end
                end
            end
        end
        
        
    case 'adadelta'
        
        % Training DNN using ADA-DELTA
        
        % Ref : ADADELTA: An Adaptive Learning Rate Method - Matthew Zeiler
        
        rho_vec = [0.9 0.95 0.98];
        eps_vec = [1e-4 1e-5 1e-6];
        mf_vec = [0 0.3 0.7 0.995];
        
        if gpu_flag
            Gb = gpuArray(b);
            GW = gpuArray(W);
            Gpdb = gpuArray(zeros(size(b)));  GpdW = gpuArray(zeros(size(W)));
            Gpmsgbt = gpuArray(zeros(1,btl(end)-1));  GpmsgWt = gpuArray(zeros(1,wtl(end)-1));
            Gpmsxbt = gpuArray(zeros(1,btl(end)-1));  GpmsxWt = gpuArray(zeros(1,wtl(end)-1));
            
        else
            Gb = b;  GW = W;
            Gpdb = zeros(size(b));  GpdW = zeros(size(W));
            Gpmsgbt = zeros(1,btl(end)-1);  GpmsgWt = zeros(1,wtl(end)-1);
            Gpmsxbt = zeros(1,btl(end)-1);  GpmsxWt = zeros(1,wtl(end)-1);
            
        end
        
        for l1 = l1_vec
            for l2 = l2_vec
                for rho = rho_vec
                    for eps = eps_vec
                        for mf = mf_vec
                            
                            arch_name2 = strcat('_l2',num2str(l2),'_rho',num2str(rho),'_eps',num2str(eps),'_mf',num2str(mf));
                            arch_name = strcat(arch_name1,arch_name2,'_bs',num2str(train_batchsize),'_',wtinit_meth);
                            
                            % Step 4 : Weight initialization
                            wtinit_meth = 'yi';
                            wt_init
                            
                            % Step 5 : Training
                            if gpu_flag
                                traindnn_gpu
                            else
                                traindnn_cpu
                            end
                            
                        end
                    end
                end
            end
        end
        
    case 'adam'
        
        % Training DNN using ADAM - SGD
        % Ref: ADAM : A Method For Stochastic Optimization - ICLR 2015 - D.P.Kingma and J.L.Ba
        
        alpha_vec = [1e-4];
        beta1_vec = [0.9];
        beta2_vec = [0.999];
        eps_hp = 1e-8;
        lam = 1 - eps_hp;
        
        for l1 = l1_vec
            for l2 = l2_vec
                for alpha = alpha_vec
                    for beta1 = beta1_vec
                        for beta2 = beta2_vec
                            
                            
			    %step 4 : Weight initialization
                            wtinit_meth = 'yi';
                            wt_init
                            
                            arch_name2 = strcat('_l2',num2str(l2),'alpha',num2str(alpha),'_b1',num2str(beta1),'_b2',num2str(beta2));
                            arch_name = strcat(arch_name1,arch_name2,'_',wtinit_meth)
                            
                            if gpu_flag
                                fprintf('training on GPU !!! :) \n');
                                Gb = gpuArray(b);
                                GW = gpuArray(W);
                                Gpmbt = gpuArray(zeros(1,btl(end)-1));
                                GpmWt = gpuArray(zeros(1,wtl(end)-1));
                                Gpvbt = gpuArray(zeros(1,btl(end)-1));
                                GpvWt = gpuArray(zeros(1,wtl(end)-1));
                            else
                                disp('training on CPU ... ');
                                Gb = b;  GW = W;
                                Gpmbt = zeros(1,btl(end)-1);  GpmWt = zeros(1,wtl(end)-1);
                                Gpvbt = zeros(1,btl(end)-1);  GpvWt = zeros(1,wtl(end)-1);
                            end
                            
                            
                            % Step 5 : Training
                            if gpu_flag
                                traindnn_gpu
                            else
                                traindnn_cpu
                            end
                       end
                   end
               end
           end
        end	        
        
end



