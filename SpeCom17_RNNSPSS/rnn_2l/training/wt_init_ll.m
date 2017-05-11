function [Gp] = wt_init_ll(p,gpu_flag,nout,nin,so,wtdir,wtinit_meth,sgd_type)

p.bu = zeros(1,nout);
p.U = zeros(nout,nin);

switch wtinit_meth
    case 'ki'
        % Kishore sirs Initilization ( This is where it all began !!! :) )
        maxweight = 3/sqrt(nin);
        p.U = 2*maxweight*rand(nin,nout) - maxweight;
        
    case 'si'
        % Sparse Initialization
        
        % "On the importance of initialization and momentum for Deep Learning," Sutskever and Martens
        scale_out = 1/nout;
        p.U = scale_out*randn(nin,nout);
        
    case 'di'
        % Sparse Initialization
        
        % "A Simple Way to Initialize RNNs using ReLp.U,", Q.V.Le, N.Jaitly and GEH
        scale_out = 1/nout;
        p.U = so*randn(nin,nout);
        
    case 'lw'
        % Load pre-stored weights ... (Note architecture name must be specified !!!)
        % arch_name = '247L250R78L_rnn_di_l20_lr0.0001_mf0.3_gc1_si0.01_ri0.1_so0.01_rnn_mvni_mvno_50'
        % arch_name = '247L500R78L_rnn_di_l20_lr0.001_mf0.3_gc1_si0.01_ri0.01_so0.01_rnn_mvni_mvno_34'
        % arch_name = '247L300N78L_rnn_di_l20_lr0.03_mf0.3_gc1_si0.01_ri0.1_so0.01_rnn_mvni_mvno_37'
        arch_name = '247L500E150L_rnn_di_l20_lr0.003_mf0.3_gc1_si0.01_ri0.1_so0.01_rnn_mvni_mvno_40'
        
        load(strcat(wtdir,'W_',arch_name,'.mat'))
        p.U = p.U';
        p.bu = p.bu';
        
        
    case 'yi'
        % Yoshua Initialization Scheme
        
        % Ref : "p.Understanding the difficulty of training deep feedforward neural networks," Glorot,Xavier; Bengio, Yohsua (arXiv 06/02/15)
        maxweight = sqrt(6/(nin+nin));
        p.U = 2*maxweight*rand(nin,nout) - maxweight;
        
        
    case 'ri'
        % ReLp.U Initialization Scheme
        
        % Ref : Delving Deep into Rectifiers (arXiv 06/02/15)
        maxweight = sqrt(2/nin);
        p.U = maxweight*randn(nin,nout);
    case 'rw'
        % Ref : "Random Walk Initalization for training very deep FFNNs" and "A Simple Way to Initalize Recurrent Neural Nets"
        
        maxweight = 1/nout;
        p.U = maxweight*randn(nin,nout);
        
    case 'np'
        p.U = so*randn(nin,nout);
end

p.U = p.U';
p.bu = p.bu';

disp('size of weight matrices');
size(p.U)
size(p.bu)


switch sgd_type
    case 'sgdcm'
        if gpu_flag
            Gp.U = gpuArray(p.U);  Gp.bu = gpuArray(p.bu);
            Gp.pdU = gpuArray(zeros(size(p.U)));
            Gp.pdbu = gpuArray(zeros(size(p.bu)));
        else
            Gp.U = p.U; Gp.bu = p.bu;
            Gp.pdU = zeros(size(p.U));
            Gp.pdbu = zeros(size(p.bu));
        end
        
        
        
    case 'adadelta'
        if gpu_flag
            Gp.U = gpuArray(p.U);  Gp.bu = gpuArray(p.bu);
            Gp.pdU = gpuArray(zeros(size(p.U)));
            Gp.pdbu = gpuArray(zeros(size(p.bu)));
            Gp.pmsgU = gpuArray(zeros(size(p.U)));
            Gp.pmsgbu = gpuArray(zeros(size(p.bu)));
            Gp.pmxgU = gpuArray(zeros(size(p.U)));
            Gp.pmxgbu = gpuArray(zeros(size(p.bu)));
        else
            Gp.U = p.U; Gp.bu = p.bu;
            Gp.pdU = zeros(size(p.U));
            Gp.pdbu = zeros(size(p.bu));
            Gp.pmsgU = zeros(size(p.U));
            Gp.pmsgbu = zeros(size(p.bu));
            Gp.pmxgU = zeros(size(p.U));
            Gp.pmxgbu = zeros(size(p.bu));
        end
        
    case 'adam'
        if gpu_flag
            Gp.U = gpuArray(p.U);  Gp.bu = gpuArray(p.bu);
            Gp.pmU = gpuArray(zeros(size(p.U)));
            Gp.pmbu = gpuArray(zeros(size(p.bu)));
            Gp.pvU = gpuArray(zeros(size(p.U)));
            Gp.pvbu = gpuArray(zeros(size(p.bu)));
        else
            Gp.U = p.U; Gp.bu = p.bu;
            Gp.pmU = zeros(size(p.U));
            Gp.pmbu = zeros(size(p.bu));
            Gp.pvU = zeros(size(p.U));
            Gp.pvbu = zeros(size(p.bu));
        end
        
end
