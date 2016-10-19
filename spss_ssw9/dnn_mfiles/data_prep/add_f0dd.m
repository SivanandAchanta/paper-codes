% Purpose: Add f0 , delta and double delta to the cmp representation in targets 
% initial order : mgc,del,del-del,bap,del,del-del,lf0,del,del-del,vuv (50,50,50,26,26,26,1,1,1,1) (total 232)
% final order : mgc,del,del-del,bap,del,del-del,lf0,del,del-del,vuv,f0,del,del-del (50,50,50,26,26,26,1,1,1,1,1,1,1) (total 235)

audiopath = '.';
nb = dir('train*.mat');
nb = length(nb)
w1 = [0.5 0 -0.5];  % have to reverse than the regular HTS format becaus of the use of filter fuction for computing deltas
w2 = [1 -2 1]; % symmetric fn and hence reverse is the same as original for double deltas

% for k = 1:nb
%     
% load(strcat('train',num2str(k),'.mat'));
% size(targets)
% cclv = cumsum([1 clv]);
% 
% lf0 = targets(:,229);
% lf0d = targets(:,230);
% lf0dd = targets(:,231);
% 
% f0 = exp(lf0);
% f0(f0<60) = 0;
% 
% tf0 = zeros(length(lf0),3);
% 
% for i = 1:length(cclv)-1
%     
%     f0u = f0(cclv(i):cclv(i+1)-1);
%     d = deltas_hts_dellis(f0u', w1);
%     dd = deltas_hts_dellis(f0u', w2);
%         
%     df0u = [f0u d' dd'];
%     tf0(cclv(i):cclv(i+1)-1,:) = df0u;
% end
% 
% tf0 = single(tf0);
% ix_int = (lf0d == -10);
% tf0(ix_int,2) = 0;
% ix_int = (lf0dd == -10);
% tf0(ix_int,3) = 0;
% 
% targets = [targets tf0];
% 
% % ttargets = targets(:,1:50);
% % targets = [];
% % clv = [];
% % Ysub = [];
% 
% save(strcat('train',num2str(k),'.mat'),'data','targets','clv')
% 
% end

load(strcat('val','.mat'));
size(targets)
cclv = cumsum([1 clv]);

lf0 = targets(:,229);
lf0d = targets(:,230);
lf0dd = targets(:,231);

f0 = exp(lf0);
f0(f0<60) = 0;

tf0 = zeros(length(lf0),3);

for i = 1:length(cclv)-1
    
    f0u = f0(cclv(i):cclv(i+1)-1);
    d = deltas_hts_dellis(f0u', w1);
    dd = deltas_hts_dellis(f0u', w2);
        
    df0u = [f0u d' dd'];
    tf0(cclv(i):cclv(i+1)-1,:) = df0u;
end

tf0 = single(tf0);
ix_int = (lf0d == -10);
tf0(ix_int,2) = 0;
ix_int = (lf0dd == -10);
tf0(ix_int,3) = 0;

targets = [targets tf0];

save(strcat('val','.mat'),'data','targets','clv')


load(strcat('test','.mat'));
size(targets)
cclv = cumsum([1 clv]);

lf0 = targets(:,229);
lf0d = targets(:,230);
lf0dd = targets(:,231);

f0 = exp(lf0);
f0(f0<60) = 0;

tf0 = zeros(length(lf0),3);

for i = 1:length(cclv)-1
    
    f0u = f0(cclv(i):cclv(i+1)-1);
    d = deltas_hts_dellis(f0u', w1);
    dd = deltas_hts_dellis(f0u', w2);
        
    df0u = [f0u d' dd'];
    tf0(cclv(i):cclv(i+1)-1,:) = df0u;
end

tf0 = single(tf0);
ix_int = (lf0d == -10);
tf0(ix_int,2) = 0;
ix_int = (lf0dd == -10);
tf0(ix_int,3) = 0;

targets = [targets tf0];

save(strcat('test','.mat'),'data','targets','clv')
