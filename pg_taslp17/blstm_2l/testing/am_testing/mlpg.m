function [Y] = mlpg(S,m)

% Step 4-2: do MLPG
[T,d] = size(m);
[W_hts] = deltas_HTS(1,T+2); % 3N x N matrix
d = round(d/3);
Y = zeros(T+2,d);
verbose_flag = 0;

for i = 1:d
    if verbose_flag; fprintf('processing feature %d of %d \n',i,d); end;
    
    %     tic
    M_feat = [m(:,i) m(:,i+(d)) m(:,i+2*(d))];
    M_feat = M_feat';
    M_feat = M_feat(:); % 3N x 1 vector
    %     toc
    
    %     tic
    % make sigma 3N x 3N matrix
    S_feat = [S(:,i) S(:,i+(d)) S(:,i+2*(d))];
    S_feat = S_feat'; % 3 x 1 vector
    S_feat = repmat(S_feat,T,1); % 3N x 1 vector
    
    S_feat(S_feat == 0) = 1e-5; % substitute zero variance with small number (to avoid NaNs)
    S_feat = 1./S_feat; % inverse of the variances
    %     toc
    
    %     size(W_hts)
    %     size(S_feat)
    
    %     S_feat = diag(S_feat); % 3N x 3N matrix
    %     WS = W_hts'*S_feat;
    %     tic
    WS = bsxfun(@times,W_hts',S_feat');
    %     toc
    
    %     tic
    Rq = WS*W_hts; % N x N matrix
    rq = WS*M_feat; % N x 1 vector
    %     toc
    
    % tic
    % using cholesky decompostion
    Rqc = chol(Rq);    
    Y(:,i) = Rqc\(Rqc'\rq);
    % toc
end

if sum(sum(isnan(Y)))
    disp('there are nan elements in M_mlpg');
end

end