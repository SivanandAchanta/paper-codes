function [me] = compute_crossentropy(PO,AO)


% Purpose : This function computes the zero - one loss give the predicted and actual outputs

% Inputs : (1) PO - a vector of class predictions
%          (2) AO - a vector of actual classes

% Output : (1) me - mean error

% PO(PO==0) = 1e-10;
CE = -sum(AO.*log(PO),2);

me = mean(CE);


end
