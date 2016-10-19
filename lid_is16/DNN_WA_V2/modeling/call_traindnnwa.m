%{
###########################################################################
##                                                                       ##
##                                                                       ##
##                       IIIT Hyderabad, India                           ##
##                      Copyright (c) 2015                               ##
##                        All Rights Reserved.                           ##
##                                                                       ##
##  Permission is hereby granted, free of charge, to use and distribute  ##
##  this software and its documentation without restriction, including   ##
##  without limitation the rights to use, copy, modify, merge, publish,  ##
##  distribute, sublicense, and/or sell copies of this work, and to      ##
##  permit persons to whom this work is furnished to do so, subject to   ##
##  the following conditions:                                            ##
##   1. The code must retain the above copyright notice, this list of    ##
##      conditions and the following disclaimer.                         ##
##   2. Any modifications must be clearly marked as such.                ##
##   3. Original authors' names are not deleted.                         ##
##   4. The authors' names are not used to endorse or promote products   ##
##      derived from this software without specific prior written        ##
##      permission.                                                      ##
##                                                                       ##
##  IIIT HYDERABAD AND THE CONTRIBUTORS TO THIS WORK                     ##
##  DISCLAIM ALL WARRANTIES WITH REGARD TO THIS SOFTWARE, INCLUDING      ##
##  ALL IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS, IN NO EVENT   ##
##  SHALL IIIT HYDERABAD NOR THE CONTRIBUTORS BE LIABLE                  ##
##  FOR ANY SPECIAL, INDIRECT OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES    ##
##  WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN   ##
##  AN ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION,          ##
##  ARISING OUT OF OR IN CONNECTION WITH THE USE OR PERFORMANCE OF       ##
##  THIS SOFTWARE.                                                       ##
##                                                                       ##
###########################################################################
##                                                                       ##
##          Author :  Sivanand Achanta (sivanand.a@research.iiit.ac.in)  ##
##          Date   :  Jul. 2015                                          ##
##                                                                       ##
###########################################################################
%}

clear all; close all; clc;

% Load configuration variables
config

% Step 1 : Read data
readdata_dnn
% din = 7;
% dout = 6;

% Step 2 : Set architecture
arch_name1 = strcat(arch_name1,num2str(dout),ol_type);
arch_init
arch_name1 = strcat(arch_name1,'_',model_name,'_',wtinit_meth);

% set hyper params
switch sgd_type
    
    case 'sgdcm'
        
        % Training DNN using Naive SGD with classical momentum
        
        for l1 = l1_vec
            for l2 = l2_vec
                for lr = lr_vec
                    for mf = mf_vec
                        
                        
                        % Step 4 : Weight initialization
                        wt_init
                        
                        arch_name2 = strcat('_l2',num2str(l2),'_lr',num2str(lr),'_mf',num2str(mf));
                        arch_name = strcat(arch_name1,arch_name2,'_',num2str(nwt))
                        nwt = nwt + 1;
                        
                        if gpu_flag
                            
                            GWi = gpuArray(Wi); GWa = gpuArray(Wa); GWh = gpuArray(Wh); GWo = gpuArray(Wo);
                            Gbi = gpuArray(bi); Gba = gpuArray(ba); Gbh = gpuArray(bh); Gbo = gpuArray(bo);
                            
                            GpdWi = gpuArray(zeros(size(Wi))); GpdWa = gpuArray(zeros(size(Wa))); GpdWh = gpuArray(zeros(size(Wh))); GpdWo = gpuArray(zeros(size(Wo)));
                            Gpdbi = gpuArray(zeros(size(bi))); Gpdba = gpuArray(zeros(size(ba))); Gpdbh = gpuArray(zeros(size(bh))); Gpdbo = gpuArray(zeros(size(bo)));
                        else
                            
                            GWi = Wi;  GWa = Wa; GWh = Wh; GWo = Wo; GWba1 = Wba1; GWba2 = Wba2;
                            Gbi = bi; Gba = ba; Gbh = bh; Gbo = bo;  Gbba1 = bba1; Gbba2 = bba2; 
                            
                            GpdWi = zeros(size(Wi)); GpdWa = zeros(size(Wa)); GpdWh = zeros(size(Wh)); GpdWo = zeros(size(Wo)); GpdWba1 = zeros(size(Wba1)); GpdWba2 = zeros(size(Wba2));
                            Gpdbi = zeros(size(bi)); Gpdba = zeros(size(ba)); Gpdbh = zeros(size(bh)); Gpdbo = zeros(size(bo)); Gpdbba1 = zeros(size(bba1)); Gpdbba2 = zeros(size(bba2)); 
                            
                        end
                        trainer
                    end
                end
            end
        end
        
        
    case 'adadelta'
        
        % Training DNN using ADA-DELTA
        % Ref : ADADELTA: An Adaptive Learning Rate Method - Matthew Zeiler
        
        disp('training with ADA-DELTA optimizer ...');
        for l1 = l1_vec
            for l2 = l2_vec
                for rho = rho_vec
                    for eps = eps_vec
                        for mf = mf_vec
                            
                            % Step 4 : Weight initialization
                            wt_init
                            
                            arch_name2 = strcat('_l2',num2str(l2),'_rho',num2str(rho),'_eps',num2str(eps),'_mf',num2str(mf),'_',wtinit_meth);
                            arch_name = strcat(arch_name1,arch_name2,'_',num2str(nwt))
                            
                            if gpu_flag
                                disp('training on GPU ... :) ');
                                Gb = gpuArray(b);
                                GW = gpuArray(W);
                                Gpdb = gpuArray(zeros(size(b)));  GpdW = gpuArray(zeros(size(W)));
                                Gpmsgbt = gpuArray(zeros(1,btl(end)-1));  GpmsgWt = gpuArray(zeros(1,wtl(end)-1));
                                Gpmsxbt = gpuArray(zeros(1,btl(end)-1));  GpmsxWt = gpuArray(zeros(1,wtl(end)-1));
                                
                            else
                                disp('training on CPU ... ');
                                GWi = Wi;  GWa = Wa; GWh = Wh; GWo = Wo;GWba1 = Wba1; GWba2 = Wba2; 
                                Gbi = bi; Gba = ba; Gbh = bh; Gbo = bo;Gbba1 = bba1;Gbba2 = bba2;
                                
                                GpdWi = zeros(size(Wi)); GpdWa = zeros(size(Wa)); GpdWh = zeros(size(Wh)); GpdWo = zeros(size(Wo));GpdbWa1 = zeros(size(Wba1));GpdWba2 = zeros(size(Wba2));
                                Gpdbi = zeros(size(bi)); Gpdba = zeros(size(ba)); Gpdbh = zeros(size(bh)); Gpdbo = zeros(size(bo));Gpdbba1 = zeros(size(bba1));Gpdbba2 = zeros(size(bba2));
                                
                                GpmsgWi = zeros(size(Wi)); GpmsgWa = zeros(size(Wa)); GpmsgWh = zeros(size(Wh)); GpmsgWo = zeros(size(Wo));GpmsgWba1 = zeros(size(Wba1));GpmsgWba2 = zeros(size(Wba2));
                                Gpmsgbi = zeros(size(bi)); Gpmsgba = zeros(size(ba)); Gpmsgbh = zeros(size(bh)); Gpmsgbo = zeros(size(bo));Gpmsgbba1 = zeros(size(bba1));Gpmsgbba2 = zeros(size(bba2));
                                
                                GpmsxWi = zeros(size(Wi)); GpmsxWa = zeros(size(Wa)); GpmsxWh = zeros(size(Wh)); GpmsxWo = zeros(size(Wo));GpmsxWba1 = zeros(size(Wba1));GpmsxWba2 = zeros(size(Wba2));
                                Gpmsxbi = zeros(size(bi)); Gpmsxba = zeros(size(ba)); Gpmsxbh = zeros(size(bh)); Gpmsxbo = zeros(size(bo));Gpmsxbba1 = zeros(size(bba1));Gpmsxbba2 = zeros(size(bba2));
                            end
                            
                            trainer
                            
                        end
                    end
                end
                
            end
        end
        
        
    case 'adam'
        
        % Training DNN using ADAM - SGD
        % Ref: ADAM : A Method For Stochastic Optimization - ICLR 2015 - D.P.Kingma and J.L.Ba
        
        disp('training with ADAM optimizer ... ');
        for l1 = l1_vec
            for l2 = l2_vec
                for alpha_adam = alpha_vec
                    for beta1 = beta1_vec
                        for beta2 = beta2_vec
                            
                            % Step 4 : Weight initialization
                            wt_init
                            
                            arch_name2 = strcat('_l2',num2str(l2),'alpha',num2str(alpha_adam),'_b1',num2str(beta1),'_b2',num2str(beta2),'_',wtinit_meth);
                            arch_name = strcat(arch_name1,arch_name2,'_',num2str(nwt))
                            
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
                                
                                GWi = Wi;  GWa = Wa; GWh = Wh; GWo = Wo;GWba1 = Wba1;GWba2 = Wba2;
                                Gbi = bi; Gba = ba; Gbh = bh; Gbo = bo;Gbba1 = bba1;Gbba2 = bba2;
                                
                                
                                GpmWi = zeros(size(Wi)); GpmWa = zeros(size(Wa)); GpmWh = zeros(size(Wh)); GpmWo = zeros(size(Wo));GpmWba1 = zeros(size(Wba1));GpmWba2 = zeros(size(Wba2));
                                Gpmbi = zeros(size(bi)); Gpmba = zeros(size(ba)); Gpmbh = zeros(size(bh)); Gpmbo = zeros(size(bo));Gpmbba1 = zeros(size(bba1));Gpmbba2 = zeros(size(bba2));
                                
                                GpvWi = zeros(size(Wi)); GpvWa = zeros(size(Wa)); GpvWh = zeros(size(Wh)); GpvWo = zeros(size(Wo));GpvWba1 = zeros(size(Wba1));GpvWba2 = zeros(size(Wba2));
                                Gpvbi = zeros(size(bi)); Gpvba = zeros(size(ba)); Gpvbh = zeros(size(bh)); Gpvbo = zeros(size(bo));Gpvbba1 = zeros(size(bba1));Gpvbba2 = zeros(size(bba2));
                                
                            end
                            
                            trainer
                            
                        end
                    end
                end
            end
        end
        
end
