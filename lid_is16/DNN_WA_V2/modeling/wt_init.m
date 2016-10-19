Wi = zeros(nl(2),nl(1));
bi = zeros(nl(2),1);
Wba1 = zeros(nl(3),nl(2));
bba1 = zeros(nl(3),1);
Wba2 = zeros(nl(4),nl(3));
bba2 = zeros(nl(4),1);
Wa = zeros(nl(4),1);
ba = 0;
Wh = zeros(nl(5),nl(4));
bh = zeros(nl(5),1);
Wo = zeros(nl(6),nl(5));
bo = zeros(nl(6),1);

switch wtinit_meth
    case 'ki'
        % Kishore sirs Initilization ( This is where it all began !!! :) )
        
        maxweight = 3/sqrt(nl(1));
        Wi = 2*maxweight*rand(size(Wi)) - maxweight;
        maxweight = 3/sqrt(nl(2));
        Wa = 2*maxweight*rand(size(Wa)) - maxweight;
        Wh = 2*maxweight*rand(size(Wh)) - maxweight;
        maxweight = 3/sqrt(nl(3));
        Wo = 2*maxweight*rand(size(Wo)) - maxweight;
        
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
        Wh = Ws;
        if set_specradflag
            Wh = Wh*(specrad/abs(eigs(Wh,1,'lm',opts)));
        end
        Wo = scale_out*randn(nl(2),nl(3));
        
    case 'di'
        % Sparse Initialization
        % "A Simple Way to Initialize RNNs using ReLU,", Q.V.Le, N.Jaitly and GEH
        
        scale_in = 1/nl(2);
        scale_out = 1/nl(3);
        scale_hid = 1/nl(2);
        
        Wi = si*randn(nl(1),nl(2));
        Wh = eye(nl(2));
        Wo = so*randn(nl(2),nl(3));
        
    case 'lw'
        % Load pre-stored weights ... (Note architecture name must be specified !!!)
        arch_name='13L500R500R462M_dnnwa_rg_l25e-05_lr0.003_mf0.9_54';
        load(strcat(wtdir,'W_',arch_name,'.mat'))
        
    case 'yi'
        % Yoshua Initialization Scheme
        % Ref : "Understanding the difficulty of training deep feedforward neural networks," Glorot,Xavier; Bengio, Yohsua (arXiv 06/02/15)
        
        maxweight = sqrt(6/(nl(1)+nl(2)));
        Wi = 2*maxweight*rand(size(Wi)) - maxweight;
        maxweight = sqrt(6/(nl(2)+nl(3)));
        Wba1 = 2*maxweight*rand(size(Wba1));
        maxweight = sqrt(6/(nl(3)+nl(4)));
        Wba2 = 2*maxweight*rand(size(Wba2));
        maxweight = sqrt(6/(nl(4)));
        Wa = 2*maxweight*rand(size(Wa));
        maxweight = sqrt(6/(nl(4)+nl(5)));
        Wh = 2*maxweight*rand(size(Wh)) - maxweight;
        maxweight = sqrt(6/(nl(5)+nl(6)));
        Wo = 2*maxweight*rand(size(Wo)) - maxweight;
        
    case 'ri'
        % ReLU Initialization Scheme
        % Ref : Delving Deep into Rectifiers (arXiv 06/02/15)
        
        maxweight = sqrt(2/nl(1));
        Wi = maxweight*randn(size(Wi));
        maxweight = sqrt(2/nl(2));
        Wa = maxweight*randn(size(Wa));
        Wh = maxweight*randn(size(Wh));
        maxweight = sqrt(2/nl(3));
        Wo = maxweight*randn(size(Wo));
        
    case 'rw'
        % Ref : "Random Walk Initalization for training very deep FFNNs" and "A Simple Way to Initalize Recurrent Neural Nets"
        
        if strcmp(f(1),'R')
            g1 = sqrt(2)*exp(1.2/(max([nl(2) 6])-2.4));
        elseif strcmp(f(1),'L')
            g1 = exp(1/(2*nl(2)));
        else
            g1 = 1.2;
        end
        
        if strcmp(f(2),'R')
            g2 = sqrt(2)*exp(1.2/(max([nl(3) 6])-2.4));
        elseif strcmp(f(1),'L')
            g2 = exp(1/(2*nl(3)));
        else
            g2 = 1.2;
        end
        
        if strcmp(f(3),'R')
            g3 = sqrt(2)*exp(1.2/(max([nl(4) 6])-2.4));
        elseif strcmp(f(1),'L')
            g3 = exp(1/(2*nl(4)));
        else
            g3 = 1.2;
        end
        
        maxweight = sqrt(1/nl(2));
        Wi = g1*maxweight*randn(size(Wi));
        maxweight = sqrt(1/nl(3));
        Wa = g2*maxweight*randn(size(Wa));
        Wh = g2*maxweight*randn(size(Wh));
        maxweight = sqrt(1/nl(4));
        Wo = g3*maxweight*randn(size(Wo));
        
    case 'rg'
        % Random Gaussian Initialization with pre-specified scale factors
        
        Wi = si*randn(size(Wi));
        Wba1 = sba1*randn(size(Wba1));
        Wba2 = sba2*randn(size(Wba2));
        Wa = sa*randn(size(Wa));
        Wh = sh*randn(size(Wh));
        Wo = so*randn(size(Wo));
        
    case 'oi'
        % Orthogonal Initialization (Andre Saxe et.al.)
        
        [u,d,v] = svd(randn(size(Wi)));
        %Wio = u*d;
        if size(Wi,1) < size(Wi,2) ; Wio = v(1:size(Wi,1),:); else; Wio = u(:,1:size(Wi,2)); end        
        [u,d,v] = svd(randn(size(Wh)));
        if size(Wh,1) < size(Wh,2) ; Who = v(1:size(Wh,1),:); else; Who = u(:,1:size(Wh,2)); end
        [u,d,v] = svd(randn(size(Wo)));
        if size(Wo,1) < size(Wo,2) ; Woo = v(1:size(Wo,1),:); else; Woo = u(:,1:size(Wo,2)); end
        clear u d v
        
        if strcmp(f(1),'R')
            g1 = sqrt(2)*exp(1.2/(max([nl(2) 6])-2.4));
        elseif strcmp(f(1),'L')
            g1 = exp(1/(2*nl(2)));
        else
            g1 = 1.2;
        end
        
        if strcmp(f(2),'R')
            g2 = sqrt(2)*exp(1.2/(max([nl(3) 6])-2.4));
        elseif strcmp(f(1),'L')
            g2 = exp(1/(2*nl(3)));
        else
            g2 = 1.2;
        end
        
        if strcmp(f(3),'R')
            g3 = sqrt(2)*exp(1.2/(max([nl(4) 6])-2.4));
        elseif strcmp(f(1),'L')
            g3 = exp(1/(2*nl(4)));
        else
            g3 = 1.2;
        end
        
        maxweight = sqrt(1/nl(2));
        Wi = g1*maxweight*Wio;
        maxweight = sqrt(1/nl(3));
        Wa = g2*maxweight*randn(size(Wa));
        Wh = g2*maxweight*Who;
        maxweight = sqrt(1/nl(4));
        Wo = g3*maxweight*Woo;
        
end

% Wi = Wi';
Wa = Wa';
% Wh = Wh';
% Wo = Wo';

disp('size of weight matrices');
size(Wi)
size(bi)
size(Wa)
size(ba)
size(Wh)
size(bh)
size(Wo)
size(bo)
