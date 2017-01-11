function [Y,costder,dS] = seqerr_v2(S,m,C,mo,vo,dS_flag)

% Step 4-2: do MLPG
[T,d] = size(m);
[W_hts] = deltas_HTS(1,T+2); % 3N x N matrix
W_hts = gpuArray(W_hts);
d = round(d/3);

Y = gpuArray(zeros(T+2,d));
costder = gpuArray(zeros(T,3*d));
dS = gpuArray(zeros(1,3*d));
I_T = gpuArray(eye(T+2));

tot_tic = tic;

for i = 1:d
%    fprintf('processing feature %d of %d \n',i,d);
    
    M_feat = [m(:,i) m(:,i+(d)) m(:,i+2*(d))];
    M_feat = M_feat';
    M_feat = M_feat(:); % 3N x 1 vector
    
    % make sigma 3N x 3N matrix
    S_feat = [S(:,i) S(:,i+(d)) S(:,i+2*(d))];
    S_feat = S_feat'; % 3 x 1 vector
    S_feat = repmat(S_feat,T,1); % 3N x 1 vector
    
    S_feat(S_feat == 0) = 1e-5; % substitute zero variance with small number (to avoid NaNs)
    S_feat = 1./S_feat; % inverse of the variances
    
    WS = bsxfun(@times,W_hts',S_feat');
    SW = bsxfun(@times,W_hts,S_feat);
    Rq = WS*W_hts; % N x N matrix
    rq = WS*M_feat; % N x 1 vector
    
%    tic
    % using cholesky decompostion
    Rqc = chol(Rq);
    P = Rqc\(Rqc'\I_T);
    Y(:,i) = P*rq;
%    toc
    
    % perform MVN on cl_md and C
    cl_m = mvn_normalize(Y(2:end-1,i),mo(i),vo(i));
    
    dL_dO = -(SW(:,2:end-1))*(C(:,i) - cl_m);
    costder(:,i) = dL_dO(1:T);
    costder(:,i+d) = dL_dO(T+1:2*T);
    costder(:,i+2*d) = dL_dO(2*T+1:3*T);
    
    if dS_flag
        % Modeling the covariances
        cct = cl_m*cl_m';
        ccta = C(:,i)*C(:,i)';

        P1 = W_hts(:,2:end-1)*(P(2:end-1,2:end-1) + cct - ccta);
        P2 = 2*M_feat*(cl_m - C(:,i))';
        P3 = (P1 - P2)*W_hts(:,2:end-1)';
        dL_dS = 0.5*diag(P3);
        dS(i) = dL_dS(1);
        dS(i+d) = dL_dS(2);
        dS(i+2*d) = dL_dS(3);
    end
    
end
toc(tot_tic);

if sum(sum(isnan(Y)))
    disp('there are nan elements in M_mlpg');
end

end
