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
        
        Wi = si*randn(nl(1),nl(2));
        Wfr = ri*eye(nl(2));
        U = so*randn(nl(2),nl(3));
        
        %         load('../drnn_v1/drnn_wt.mat');
        %         Wfr = Ws;
        
    case 'lw'
        % Load pre-stored weights ... (Note architecture name must be specified !!!)
        
        load(strcat(wtdir,'W_',arch_name,'.mat'))
        
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
