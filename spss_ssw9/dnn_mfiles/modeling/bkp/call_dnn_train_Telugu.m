readdata_dnn_dur_Tel

disp('size of train i/o data');
[~,din,train_numbats] = size(train_batchdata)
[~,dout,train_numbats] = size(train_batchtargets)

disp('size of validation i/o data');
[~,~,val_numbats] = size(val_batchdata)
[~,~,val_numbats] = size(val_batchtargets)

disp('size of test i/o data');
[~,~,test_numbats] = size(test_batchdata)
[~,~,test_numbats] = size(test_batchtargets)

% nn params settings
numepochs = 60;

mf_vec = [0.99]; % momentum factor
berp = [1 1 1 1 1 1 1]; % bernoulli prob of output layer is always 1
mncflag = 0;
mnc = 4;

wtdir = strcat('../wt/',expname,'/');
errdir = strcat('../err/',expname,'/');
mkdir(wtdir);
mkdir(errdir);

% initialize nonlinearity and learning rate per layer params
l1 = 0.00;
l2 = 0.0000;
rhoada = 0.95;
epsada = 1e-5;
eta_vec = [1e-2];
cfn = 'ls';
a_tanh = 1.7159;
b_tanh = 2/3;
bby2a = (b_tanh/(2*a_tanh));

scale = 0.1;

for etai = 1:length(eta_vec);
    eta = eta_vec(etai);
    for mfi = 1:length(mf_vec)
        mf = mf_vec(mfi)
        
        nl = [din 500 250 125 50 dout];
        nh = length(nl) - 1; % number of hidden layers
        f = [ 'R' 'R' 'R' 'R' 'L'];
        
        if (length(nl) - 1) ~= length(f)
            disp('number of hidden o/p fns mus be same as number of hidden layers');
        end
        
        % weight initialization
        nlv = 1:nh;
        wtl = [1 nl(nlv).*nl(nlv+1)];
        wtl = cumsum(wtl);
        btl = cumsum([1 nl(nlv+1)]);
        
        
        W = zeros(1,sum(nl(1:end-1).*nl(2:end)));
        b = zeros(1,sum(nl(2:end)));
        
        wimeth = 'yi';
        
        switch wimeth
            case 'ki'
                for i = 1:nh
                    maxweight = 3/sqrt(nl(i));
                    W(1,wtl(i):wtl(i+1)-1) = 2*maxweight*rand(1,nl(i)*nl(i+1)) - maxweight;
                end
            case 'si'
                for i = 1:nh
                    Ws = scale*randn(nl(i+1),nl(i));
                    Nh = nl(i+1);
                    for j = 1:Nh
                        Ws(j,randperm(nl(i),nl(i)-20)) = 0;
                    end
                    W(1,wtl(i):wtl(i+1)-1) = Ws(:)';
                end
            otherwise
                for i = 1:nh-1
                    maxweight = sqrt(6/(nl(i) + nl(i+1)));
                    W(1,wtl(i):wtl(i+1)-1) = 2*maxweight*rand(1,nl(i)*nl(i+1)) - maxweight;
                end
        end
        
        arch_name = strcat('500R250R125R50R1L','_bs',num2str(train_batchsize),...
            '_flr_mf',num2str(eta),num2str(mf),'_',wimeth);
        
        
        Gb = gpuArray(b);
        GW = gpuArray(W);
        pdb = zeros(size(b));
        pdW = zeros(size(W));
        Gpdb = gpuArray(pdb);
        GpdW = gpuArray(pdW);
        Gpmsgbt = gpuArray(zeros(1,btl(end)-1));
        GpmsgWt = gpuArray(zeros(1,wtl(end)-1));
        Gpmsxbt = gpuArray(zeros(1,btl(end)-1));
        GpmsxWt = gpuArray(zeros(1,wtl(end)-1));
        
        disp('size of weight matrix');
        size(W)
        
        %%%%%%%%%%%%%%%%%%%%%%%%% done with initialization %%%%%%%%%%%%%%%%%%%%%%%
        
        %%%%%%%%%%%%%%%%%%%%%%%%% actual ANN training starts here %%%%%%%%%%%%%%%%
        
        traindnn_flrcm
    end
end