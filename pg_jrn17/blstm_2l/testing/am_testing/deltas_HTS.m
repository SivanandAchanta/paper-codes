function [W] = deltas_HTS(d,N)

% Input : (1) sfeats - d x N
%         (2) W      - matrix for dletas and double-deltas

% Output : (1) dfeats - 3d x N ( dynamic feats )

% repeat the first and last frames to account for boundaries
% bigW = [];
W = zeros(3*(N-2),N);
for i = 1:N-2
    % %     i
    bW1 = [] ; bW2 = []; bW3 = [];
    bW1 = [repmat(zeros(d),1,i) eye(d) repmat(zeros(d),1,N-i-1)];
    bW2 = [repmat(zeros(d),1,i-1) -0.5*eye(d) zeros(d) 0.5*eye(d) repmat(zeros(d),1,N-i+1-3)];
    bW3 = [repmat(zeros(d),1,i-1) eye(d) -2*eye(d) eye(d) repmat(zeros(d),1,N-i+1-3)];
    % %     size(bW1)
    % %     size(bW2)
    % %     size(bW3)
%     bigW = [bigW;bW1;bW2;bW3]; % the big W matrix has coefficients to compute dynamics
   W((i-1)*3+1:i*3,:) =  [bW1;bW2;bW3];
end


% W = bigW;
% size(W)
% size(W1)

end


