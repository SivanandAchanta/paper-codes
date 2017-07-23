
% set the input dimensions and normalization dimensions
invec = [1:567];
mvnivec = [485:521 525:529];

% set the output features to be predicted
feat_name = 'cmp'

% set the output dimensions 
if strcmp(feat_name,'mgc')
   outvec = [1:150];
elseif strcmp(feat_name,'f0')
   outvec = [232:235];
elseif strcmp(feat_name,'bap')
   outvec = [151:228];
elseif strcmp(feat_name,'cmp')
   outvec = [1:235];
end



