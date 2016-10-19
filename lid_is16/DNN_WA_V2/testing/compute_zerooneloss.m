function [me] = compute_zerooneloss(PO,AO)


% Purpose : This function computes the zero - one loss give the predicted and actual outputs

% Inputs : (1) PO - a vector of class predictions
%          (2) AO - a vector of actual classes

% Output : (1) me - mean error

[~,pidx] = max(PO,[],2);
[~,aidx] = max(AO,[],2);

me = mean(pidx ~= aidx);


end