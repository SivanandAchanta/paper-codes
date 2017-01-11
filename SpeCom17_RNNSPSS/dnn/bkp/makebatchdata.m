function [batchdata,batchtargets] = makebatchdata(data,targets,batchsize) 

[totnum,numdims]  =  size(data);
[~,numclasses]  =  size(targets);

numbatches=totnum/batchsize;
batchdata = single(zeros(batchsize, numdims, numbatches));
batchtargets = single(zeros(batchsize, numclasses, numbatches));

for b=1:numbatches
  batchdata(:,:,b) = data((1+(b-1)*batchsize:b*batchsize), :);
  batchtargets(:,:,b) = targets((1+(b-1)*batchsize:b*batchsize), :);
end;

end
