readdata_dnn_Hin

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

mf_vec = [0] % momentum factor
berp = [1 1 1 1 1 1 1 1 1 1 1]; % bernoulli prob of output layer is always 1
mncflag = 0;
mnc = 4;

nl = [din 1000 800 600 400 dout];
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


arch_name1 = strcat(num2str(din),'L');
for i = 1:nh
    arch_name1 = strcat(arch_name1,num2str(nl(i+1)),f(i));
end

wtdir = strcat('../wt/',newexpname,'/');
errdir = strcat('../err/',newexpname,'/');
mkdir(wtdir);
mkdir(errdir);

% initialize nonlinearity and learning rate per layer params
l1 = 0.00;
l2 = 0.00001;
rhoada_vec = [0.9 0.95 0.98];
epsada_vec = [1e-6 1e-5 1e-4];
eta = 1e-3;
cfn = 'ls';
a_tanh = 1.7159;
b_tanh = 2/3;
bby2a = (b_tanh/(2*a_tanh));

for rhoi = length(rhoada_vec):-1:1
rhoada = rhoada_vec(rhoi);

for epsi = 1:length(epsada_vec)
epsada = epsada_vec(epsi);

for mfi = 1:length(mf_vec)
    rhoada
    epsada
    mf = mf_vec(mfi);
    mf

    arch_name = strcat(arch_name1,'_bs',num2str(train_batchsize),'_rho_eps_mf',num2str(rhoada),num2str(epsada),num2str(mf),'_withoutdropout');
    
    W = zeros(1,sum(nl(1:end-1).*nl(2:end)));
    b = zeros(1,sum(nl(2:end)));
    
    winit_meth = 'yi';
    
    switch winit_meth
        case 'ki'
            for i = 1:nh
                maxweight = 3/sqrt(nl(i));
                W(1,wtl(i):wtl(i+1)-1) = 2*maxweight*rand(1,nl(i)*nl(i+1)) - maxweight;
            end
        case 'loadwt'
            load(strcat(wtdir,'W_',arch_name,'.mat'))
            
        case 'yi'
            for i = 1:nh-1
                maxweight = sqrt(6/(nl(i) + nl(i+1)));
                W(1,wtl(i):wtl(i+1)-1) = 2*maxweight*rand(1,nl(i)*nl(i+1)) - maxweight;
            end
        otherwise
            for i = 1:nh-1
                maxweight = sqrt(2/nl(i));
                W(1,wtl(i):wtl(i+1)-1) = maxweight*randn(1,nl(i)*nl(i+1));
            end

    end
    

    
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
    
    traindnn_adnag
end

end

end
