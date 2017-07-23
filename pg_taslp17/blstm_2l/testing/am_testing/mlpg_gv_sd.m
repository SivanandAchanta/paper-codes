function [Y,Ygv] = mlpg_gv_sd(S,m,mu_v,p_v)

% Step 4-2: do MLPG
[T,d] = size(m);
[W_hts] = deltas_HTS(1,T+2); % 3N x N matrix
omega = 1/(3*T);

d = round(d/3);
Y = zeros(T+2,d);

Ygv = zeros(size(Y));
eta =  1;
num_iters = 6000;

for i = 1:d
    fprintf('processing feature %d of %d \n',i,d);
    
    M_feat = [m(:,i) m(:,i+d) m(:,i+2*d)];
    M_feat = M_feat';
    M_feat = M_feat(:); % 3N x 1 vector
    
    % make sigma 3N x 3N matrix
    S_feat = [S(:,i) S(:,i+d) S(:,i+2*d)];
    S_feat = S_feat';
    S_feat = repmat(S_feat,T,1); % 3N x 1 vector
    
    S_feat(S_feat == 0) = 1e-5; % substitute zero variance with small number (to avoid NaNs)
    S_feat = 1./S_feat; % inverse of the variances
    
    %     S_feat = diag(S_feat); % 3N x 3N matrix
    %     WS = W_hts'*S_feat;
    WS = bsxfun(@times,W_hts',S_feat');
    
    Rq = WS*W_hts; % N x N matrix
    rq = WS*M_feat; % N x 1 vector
    
    tic
    % using cholesky decompostion
    Rqc = chol(Rq);    
    Y(:,i) = Rqc\(Rqc'\rq);
    toc
    
    % start the gradient alogorithm for gv param generation
    c0 = Y(:,i); % Nx1 % initialize with conventional parameter generation
    cp = c0;
    
    % initialize to that trajectory whose initalial GV equals mean GV
    vc = var(cp);
    cp = sqrt((mu_v(i))/vc)*(cp - mean(cp));
    
    
    c1 = -(2/T)*(p_v(i));
    %     L = zeros(num_iters,1);
    
    tic
    for j = 1:num_iters
        
        t11 = -Rq*cp;
        %         t1 = omega*(t11/2 + rq);
        t2 = omega*(t11 + rq);
        
        % loss
        %         L(j) = - ((vc - mu_v(i)).^2/(2*p_v(i))) + cp'*t1;
        
        % compute var
        vc = var(cp);
        v = c1*(vc - mu_v(i))*(cp - mean(cp));
        
        % compute del-c
        dc = t2 + v;
        
        % update the c
        cc = cp + eta*dc;
        cp = cc;
    end
    toc
    
    %     plot(L)
    %         pause
    
    if i == 6
        num_iters = 500;
    end
    
    Ygv(:,i) = cp;
end

end
