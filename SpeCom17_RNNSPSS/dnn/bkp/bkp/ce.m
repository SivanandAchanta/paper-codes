function [ er ] = ce( po,ao )
% ce - compute error between predicted and actual vectors

% Input : (1) po - predicted output ( Nout x dout)
%         (2) ao - actual output ( Nout x dout)

% Output : (1) er - error between predicted and actual outputs

% er = sum(sum((ao - po).^2))/numel(ao); % MSE (mean squared error)

% size(ao)
% size(po)

er = mean(sum((ao - po).^2,2)./(sum(ao.^2,2)));

% er = sqrt(sum(sum((ao - po).^2))/numel(ao)); % RMSE ( root mean sq. err)
end

