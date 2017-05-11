function [Gp] = wt_init_rl(p,gpu_flag,nout,nin,si,ri,wtdir,wtinit_meth,sgd_type)

p.Wi = zeros(nout,nin);
p.Wfr = zeros(nout,nout);
p.bh = zeros(1,nout);

switch wtinit_meth
    case 'ki'
        % Kishore sirs Initilization ( This is where it all began !!! :) )
        
        maxweight = 3/sqrt(nin);
        p.Wi = 2*maxweight*rand(nin,nout) - maxweight;
        maxweight = 3/sqrt(nout);
        p.Wfr = 2*maxweight*rand(nout,nout) - maxweight;
        
    case 'si'
        % Sparse Initialization
        
        % "On the importance of initialization and momentum for Deep Learning," Sutskever and Martens
        scale_in = 1/nout;
        scale_out = 1/nl(3);
        scale_hid = 1/nout;
        
        p.Wi = scale_in*randn(nin,nout);
        
        Ws = scale_hid*randn(nout,nout);
        for j = 1:nout
            Ws(j,randperm(nout,nout-nnz)) = 0;
        end
        p.Wfr = Ws;
        
        if set_specradflag
            p.Wfr = p.Wfr*(specrad/abs(eigs(p.Wfr,1,'lm',opts)));
        end
        
        
    case 'di'
        % Sparse Initialization
        
        % "A Simple Way to Initialize RNNs using ReLp.U,", Q.V.Le, N.Jaitly and GEH
        scale_in = 1/nout;
        scale_hid = 1/nout;
        
        p.Wi = si*randn(nin,nout);
        p.Wfr = ri*eye(nout);
        
    case 'lw'
        % Load pre-stored weights ... (Note architecture name must be specified !!!)
        % arch_name = '247L250R78L_rnn_di_l20_lr0.0001_mf0.3_gc1_si0.01_ri0.1_so0.01_rnn_mvni_mvno_50'
        % arch_name = '247L500R78L_rnn_di_l20_lr0.001_mf0.3_gc1_si0.01_ri0.01_so0.01_rnn_mvni_mvno_34'
        % arch_name = '247L300N78L_rnn_di_l20_lr0.03_mf0.3_gc1_si0.01_ri0.1_so0.01_rnn_mvni_mvno_37'
        arch_name = '247L500E150L_rnn_di_l20_lr0.003_mf0.3_gc1_si0.01_ri0.1_so0.01_rnn_mvni_mvno_40'
        
        load(strcat(wtdir,'W_',arch_name,'.mat'))
        p.Wi = p.Wi';
        p.bh = p.bh';
        
        
    case 'yi'
        % Yoshua Initialization Scheme
        
        % Ref : "p.Understanding the difficulty of training deep feedforward neural networks," Glorot,Xavier; Bengio, Yohsua (arXiv 06/02/15)
        
        maxweight = sqrt(6/(nin+nout));
        p.Wi = 2*maxweight*rand(nin,nout) - maxweight;
        maxweight = sqrt(6/(nout+nout));
        p.Wfr = 2*maxweight*rand(nout,nout) - maxweight;
        
        
    case 'ri'
        % ReLp.U Initialization Scheme
        
        % Ref : Delving Deep into Rectifiers (arXiv 06/02/15)
        maxweight = sqrt(2/nin);
        p.Wi = maxweight*randn(nin,nout);
        maxweight = sqrt(2/nout);
        p.Wfr = maxweight*randn(nout,nout);
    case 'rw'
        % Ref : "Random Walk Initalization for training very deep FFNNs" and "A Simple Way to Initalize Recurrent Neural Nets"
        
        maxweight = 1/nout;
        if strcmp(f(1),'R')
            g = sqrt(2)*exp(1.2/(max([nout 6])-2.4));
        elseif strcmp(f(1),'L')
            g = exp(maxweight/2);
        else
            g = 1.2;
        end
        p.Wi = g*maxweight*randn(nin,nout);
        maxweight = 1/nout;
        p.Wfr = g*maxweight*randn(nout,nout);
        maxweight = 1/nl(3);
        
    case 'np'
        
        maxweight = 1/nin;
        if strcmp(f(1),'R')
            g = sqrt(2)*exp(1.2/(max([nin 6])-2.4));
        else
            g = 1.2;
        end
        
        p.Wi = maxweight*g*randn(nin,nout);
        
        R = randn(nout);
        A = 1/nout*(R'*R);
        e = abs(eigs(A,1,'lm',opts))
        p.Wfr = A/e;
        e = abs(eigs(p.Wfr,1,'lm',opts))
        clear R A e
        
end

p.Wi = p.Wi';
p.bh = p.bh';
p.h_0 = zeros(nout,1);

disp('size of weight matrices');
size(p.Wi)
size(p.bh)
size(p.Wfr)


switch sgd_type
    case 'sgdcm'
        if gpu_flag
            Gp.Wi = gpuArray(p.Wi);  Gp.Wfr = gpuArray(p.Wfr);  Gp.bh = gpuArray(p.bh);
            Gp.pdWi = gpuArray(zeros(size(p.Wi)));  Gp.pdWfr = gpuArray(zeros(size(p.Wfr)));
            Gp.pdbh = gpuArray(zeros(size(p.bh)));
        else
            Gp.Wi = p.Wi;  Gp.Wfr = p.Wfr;  Gp.bh = p.bh;
            Gp.pdWi = zeros(size(p.Wi));  Gp.pdWfr = zeros(size(p.Wfr));
            Gp.pdbh = zeros(size(p.bh));
        end
        
        
        
    case 'adadelta'
        if gpu_flag
            Gp.Wi = gpuArray(p.Wi);  Gp.Wfr = gpuArray(p.Wfr);  Gp.bh = gpuArray(p.bh);
            Gp.pdWi = gpuArray(zeros(size(p.Wi)));  Gp.pdWfr = gpuArray(zeros(size(p.Wfr)));
            Gp.pdbh = gpuArray(zeros(size(p.bh)));
            Gp.pmsgWi = gpuArray(zeros(size(p.Wi)));  Gp.pmsgWfr = gpuArray(zeros(size(p.Wfr)));
            Gp.pmsgbh = gpuArray(zeros(size(p.bh)));
            Gp.pmxgWi = gpuArray(zeros(size(p.Wi)));  Gp.pmxgWfr = gpuArray(zeros(size(p.Wfr)));
            Gp.pmxgbh = gpuArray(zeros(size(p.bh)));
        else
            Gp.Wi = p.Wi;  Gp.Wfr = p.Wfr;  Gp.bh = p.bh;
            Gp.pdWi = zeros(size(p.Wi));  Gp.pdWfr = zeros(size(p.Wfr));
            Gp.pdbh = zeros(size(p.bh));
            Gp.pmsgWi = zeros(size(p.Wi));  Gp.pmsgWfr = zeros(size(p.Wfr));
            Gp.pmsgbh = zeros(size(p.bh));
            Gp.pmxgWi = zeros(size(p.Wi));  Gp.pmxgWfr = zeros(size(p.Wfr));
            Gp.pmxgbh = zeros(size(p.bh));
        end
        
    case 'adam'
        if gpu_flag
            Gp.Wi = gpuArray(p.Wi);  Gp.Wfr = gpuArray(p.Wfr);  Gp.bh = gpuArray(p.bh);
            Gp.pmWi = gpuArray(zeros(size(p.Wi)));  Gp.pmWfr = gpuArray(zeros(size(p.Wfr)));
            Gp.pmbh = gpuArray(zeros(size(p.bh)));
            Gp.pvWi = gpuArray(zeros(size(p.Wi)));  Gp.pvWfr = gpuArray(zeros(size(p.Wfr)));
            Gp.pvbh = gpuArray(zeros(size(p.bh)));
        else
            Gp.Wi = p.Wi;  Gp.Wfr = p.Wfr;  Gp.bh = p.bh;
            Gp.pmWi = zeros(size(p.Wi));  Gp.pmWfr = zeros(size(p.Wfr));
            Gp.pmbh = zeros(size(p.bh));
            Gp.pvWi = zeros(size(p.Wi));  Gp.pvWfr = zeros(size(p.Wfr));
            Gp.pvbh = zeros(size(p.bh));
        end
        
end
