% load mvn of input
load(strcat(datadir,'mvn_lf0vf0/mvni.mat'))

% load maxmin of output
load(strcat(datadir,'mvn_lf0vf0/mvno.mat'))
load(strcat(datadir,'mvn_lf0vf0/maxmino.mat'))

intmvnf = 1;
outtmvnf = 1;

load(strcat(datadir,'test.mat'));
test_batchdata = single(data);
if intmvnf
    I1 = bsxfun(@minus,test_batchdata(:,mvnivec),m(:,mvnivec));
    I1 = bsxfun(@rdivide,I1,v(:,mvnivec)+1e-5);
    test_batchdata(:,mvnivec) = I1;
end
clear I1;
test_batchdata = test_batchdata(:,invec);

test_batchtargets_orig = single(targets);
test_batchtargets = single(targets);
if outtmvnf
    I1 = bsxfun(@minus,test_batchtargets,minv);
    I1 = bsxfun(@rdivide,I1,maxv);
    nml_test_batchtargets = I1;
end
nml_test_batchtargets = single(nml_test_batchtargets(:,outvec));
test_clv = cumsum([1 clv]);
test_numbats = length(test_clv) - 1;

[Nin,din] = size(test_batchdata);
[Nout,dout] = size(nml_test_batchtargets);

maxv = maxv(outvec);
minv = minv(outvec);

mo = mo(outvec);
vo = vo(outvec);
