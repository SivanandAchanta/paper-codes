function [train_batchdata,train_batchtargets,train_clv] = get_traindata(datadir,bno,m,v,mo,vo,mvnivec,dout,lang_list,nb_vec,slno,elno)

train_batchdata = [];
train_batchtargets = [];
train_clv = [];
gen_list = {'M','F'};

for j = slno:elno

    for k = 1:length(gen_list)  
        
        if j == 4 && k == 2
           continue
        end

        datadir = strcat('../../../',lang_list{j},'/',gen_list{k},'/matfiles_16KHz/');
        bn = mod(bno,nb_vec((j-1)*2+k));
   
        if bn == 0;
           bn = nb_vec((j-1)*2+k);
        end
        
        fprintf('Loading batch %d %d %d ... \n',bn,j,k);
        load(strcat(datadir,'train',num2str(bn),'.mat'));
    
        % Step1: make training data
        train_batchdata = [train_batchdata;single(data)];
        train_batchtargets = [train_batchtargets;single(targets)];
    
        clv = clv(:)';
        train_clv = [train_clv clv];
    
    
    end
end

train_clv = cumsum([1 train_clv]);
train_numbats = length(train_clv) - 1;

for i = mvnivec
    for j = 1:train_numbats
        I1 = bsxfun(@minus,train_batchdata(train_clv(j):train_clv(j+1)-1,i),m(:,i));
        I1 = bsxfun(@rdivide,I1,v(:,i)+1e-5);
        train_batchdata(train_clv(j):train_clv(j+1)-1,i) = I1;
    end
end


for i = 1:dout
    for j = 1:train_numbats
        I1 = bsxfun(@minus,train_batchtargets(train_clv(j):train_clv(j+1)-1,i),mo(:,i));
        I1 = bsxfun(@rdivide,I1,vo(:,i)+1e-5);
        train_batchtargets(train_clv(j):train_clv(j+1)-1,i) = I1;
    end
end



