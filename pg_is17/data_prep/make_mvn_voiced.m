lang_list = {'tel','tam','kan','mal','hin'};

mo_v = 0;
vo_v = 0;
N = 0;
nb_vec = [];
temp_clv = [];

for j = 1:length(lang_list)
    
    datadir = strcat('../../../../../',lang_list{j},'/M/nnspss/matfiles_16KHz/');
    nb = dir(strcat(datadir,'train*'));
    nb = length(nb);
    
    nb_vec = [nb_vec nb];
    
    
    
    for i = 1:nb
        
        fprintf('Loading batch %d ... \n',i);
        load(strcat(datadir,'train',num2str(i),'.mat'));
        
        % Step1: make training data
        targets = single(targets);
        
        if sum(sum(isnan(targets)))
            disp('there are NaN eles in targets');
            pause
        end
        
        clv = clv(:)';
        temp_clv = [temp_clv clv];
        
        
        sum(targets(:,232)==0)
        sum(targets(:,232)~=0)
        
        targets = targets(targets(:,232)~=0,:);
        N = N + size(targets,1);
        
        mo_v = mo_v + sum(targets);
        vo_v = vo_v + sum(targets.^2);
        
        clear data targets clv
    end
    
    
    
end


mo_v = mo_v/N;
vo_v = sqrt(vo_v/(N-1) - mo_v.^2);

datadir = '../matfiles_16KHz/';
save(strcat(datadir,'mvno_voiced.mat'),'mo_v','vo_v');

