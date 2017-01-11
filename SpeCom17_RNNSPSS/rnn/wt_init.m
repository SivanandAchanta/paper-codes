Wi = zeros(nl(2),nl(1));
Wfr = zeros(nl(2),nl(2));
bh = zeros(1,nl(2));
bo = zeros(1,nl(3));
U = zeros(nl(3),nl(2));

switch wtinit_meth
    case 'ki'
        % Kishore sirs Initilization ( This is where it all began !!! :) )
        
        maxweight = 3/sqrt(nl(1));
        Wi = 2*maxweight*rand(nl(1),nl(2)) - maxweight;
        maxweight = 3/sqrt(nl(2));
        Wfr = 2*maxweight*rand(nl(2),nl(2)) - maxweight;
        U = 2*maxweight*rand(nl(2),nl(3)) - maxweight;
        
    case 'si'
        % Sparse Initialization
        
        % "On the importance of initialization and momentum for Deep Learning," Sutskever and Martens
        scale_in = 1/nl(2);
        scale_out = 1/nl(3);
        scale_hid = 1/nl(2);
        
        Wi = scale_in*randn(nl(1),nl(2));
        
        Ws = scale_hid*randn(nl(2),nl(2));
        for j = 1:nl(2)
            Ws(j,randperm(nl(2),nl(2)-nnz)) = 0;
        end
        Wfr = Ws;
        
        if set_specradflag
            Wfr = Wfr*(specrad/abs(eigs(Wfr,1,'lm',opts)));
        end
        
        U = scale_out*randn(nl(2),nl(3));
        
    case 'di'
        % Sparse Initialization
        
        % "A Simple Way to Initialize RNNs using ReLU,", Q.V.Le, N.Jaitly and GEH
        scale_in = 1/nl(2);
        scale_out = 1/nl(3);
        scale_hid = 1/nl(2);

        diag_vec = [0.001:(1/nl(2)):ri];
        if length(diag_vec) < nl(2); diag_vec = [diag_vec ones(1,nl(2) - length(diag_vec))]; end;
        if length(diag_vec) > nl(2); diag_vec = diag_vec(1:nl(2)); end;
        
        Wi = si*randn(nl(1),nl(2));
        Wfr = ri*eye(nl(2));
        U = so*randn(nl(2),nl(3));
        
        %         load('../drnn_v1/drnn_wt.mat');
        %         Wfr = Ws;
        
    case 'lw'
        % Load pre-stored weights ... (Note architecture name must be specified !!!)
        % arch_name = '247L250R78L_rnn_di_l20_lr0.0001_mf0.3_gc1_si0.01_ri0.1_so0.01_rnn_mvni_mvno_50' 
        % arch_name = '247L500R78L_rnn_di_l20_lr0.001_mf0.3_gc1_si0.01_ri0.01_so0.01_rnn_mvni_mvno_34'
        % arch_name = '247L300N78L_rnn_di_l20_lr0.03_mf0.3_gc1_si0.01_ri0.1_so0.01_rnn_mvni_mvno_37'
        arch_name = '247L500E150L_rnn_di_l20_lr0.003_mf0.3_gc1_si0.01_ri0.1_so0.01_rnn_mvni_mvno_40'
 
        load(strcat(wtdir,'W_',arch_name,'.mat'))
        Wi = Wi';
	U = U';
	bh = bh';
	bo = bo';

        
    case 'yi'
        % Yoshua Initialization Scheme
        
        % Ref : "Understanding the difficulty of training deep feedforward neural networks," Glorot,Xavier; Bengio, Yohsua (arXiv 06/02/15)
        
        maxweight = sqrt(6/(nl(1)+nl(2)));
        Wi = 2*maxweight*rand(nl(1),nl(2)) - maxweight;
        maxweight = sqrt(6/(nl(2)+nl(2)));
        Wfr = 2*maxweight*rand(nl(2),nl(2)) - maxweight;
        U = 2*maxweight*rand(nl(2),nl(3)) - maxweight;
        
        
    case 'ri'
        % ReLU Initialization Scheme
        
        % Ref : Delving Deep into Rectifiers (arXiv 06/02/15)
        maxweight = sqrt(2/nl(1));
        Wi = maxweight*randn(nl(1),nl(2));
        maxweight = sqrt(2/nl(2));
        Wfr = maxweight*randn(nl(2),nl(2));
        U = maxweight*randn(nl(2),nl(3));
    case 'rw'
        % Ref : "Random Walk Initalization for training very deep FFNNs" and "A Simple Way to Initalize Recurrent Neural Nets"
        
        maxweight = 1/nl(2);
        if strcmp(f(1),'R')
            g = sqrt(2)*exp(1.2/(max([nl(2) 6])-2.4));
        elseif strcmp(f(1),'L')
            g = exp(maxweight/2);
        else
            g = 1.2;
        end
        Wi = g*maxweight*randn(nl(1),nl(2));
        maxweight = 1/nl(2);
        Wfr = g*maxweight*randn(nl(2),nl(2));
        maxweight = 1/nl(3);
        U = maxweight*randn(nl(2),nl(3));

    case 'np'
        
        maxweight = 1/nl(1);
        if strcmp(f(1),'R')
            g = sqrt(2)*exp(1.2/(max([nl(1) 6])-2.4));
        else
            g = 1.2;
        end

        Wi = maxweight*g*randn(nl(1),nl(2));

        R = randn(nl(2));
        A = 1/nl(2)*(R'*R);
        e = abs(eigs(A,1,'lm',opts))
        Wfr = A/e;
        e = abs(eigs(Wfr,1,'lm',opts))
        clear R A e        
        U = so*randn(nl(2),nl(3)); 
end

if mask_flag
    mask = (Wfr~=0);
end

Wi = Wi';
U = U';
bh = bh';
bo = bo';
h_0 = zeros(nl(2),1);

disp('size of weight matrices');
size(Wi)
size(bh)
size(Wfr)
size(U)
size(bo)
