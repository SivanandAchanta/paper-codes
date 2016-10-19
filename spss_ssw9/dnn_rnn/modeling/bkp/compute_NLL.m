function [nll] = compute_NLL(ll,AO)


% Purpose : This function computes the negativelikelihood of the data

% Inputs : (1) PO - a vector of class predictions
%          (2) AO - a vector of actual classes

% Output : (1) nll - the negative log-likelihood

nll = -mean(ll(:,AO == 1));



end