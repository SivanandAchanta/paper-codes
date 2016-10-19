function [Yc] = mlpg(S,m)

% Step 4-2: do MLPG
[T,d] = size(m);
tic
[W_hts] = deltas_HTS(1,T+2); % 3N x N matrix
toc
d = round(d/3);
Yc = zeros(T+2,d);
% Yc = Y;

for i = 1:d
    fprintf('processing feature %d of %d \n',i,d);
    
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
    
    tic
    % using cholesky decompostion
    Rqc = chol(Rq);    
    Yc(:,i) = Rqc\(Rqc'\rq);
    toc
    
%     tic
%     Y(:,i) = pinv((Rq))*rq; % Nx 1 vector
%     toc
end

if sum(sum(isnan(Yc)))
    disp('there are nan elements in M_mlpg');
end

end