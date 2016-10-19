% Purpose: Add vuv flag to the cmp representation in targets and re-order the ourput parameters
% initial order : mgc,del,del-del,lf0,del,del-del,bap,del,del-del (50,50,50,1,1,1,26,26,26) ( total 231)
% final order : mgc,del,del-del,bap,del,del-del,lf0,del,del-del,vuv (50,50,50,26,26,26,1,1,1,1) (total 232)

audiopath = '.';
nb = dir('train*.mat');
nb = length(nb)

for k = 1:nb
    
load(strcat('train',num2str(k),'.mat'));
size(targets)
cclv = cumsum([1 clv]);

lf0 = targets(:,151);
length(find(lf0 == -10))
length(find(lf0 ~= -10))

% length(find(round(lf0) == -10))
% length(find(round(lf0) ~= -10))

vuv = zeros(size(lf0));
vuv(lf0~=1e-10) = 1;
vuv = single(vuv);
targets = [targets(:,1:150) targets(:,154:231) targets(:,151:153) vuv];

save(strcat('train',num2str(k),'.mat'),'data','targets','clv')

end

% load(strcat('val','.mat'));
% size(targets)
% cclv = cumsum([1 clv]);
% 
% lf0 = targets(:,151);
% length(find(lf0 == -10))
% length(find(lf0 ~= -10))
% 
% vuv = zeros(size(lf0));
% vuv(lf0~=1e-10) = 1;
% vuv = single(vuv);
% targets = [targets(:,1:150) targets(:,154:231) targets(:,151:153) vuv];
% 
% save(strcat('val','.mat'),'data','targets','clv')
% 
% 
% 
% load(strcat('test','.mat'));
% size(targets)
% cclv = cumsum([1 clv]);
% 
% lf0 = targets(:,151);
% length(find(lf0 == -10))
% length(find(lf0 ~= -10))
% 
% vuv = zeros(size(lf0));
% vuv(lf0~=1e-10) = 1;
% vuv = single(vuv);
% targets = [targets(:,1:150) targets(:,154:231) targets(:,151:153) vuv];
% 
% save(strcat('test','.mat'),'data','targets','clv')


% for i = 1:length(cclv)-1
%     i
%     Y = ttargets(cclv(i):cclv(i+1)-1,:);