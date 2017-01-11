function [batchdata] = makebatchdata_v2(data,batchsize) 

[totnum,numdims]  =  size(data);

numbatches=totnum/batchsize;
batchdata = single(zeros(batchsize, numdims, numbatches));

for b=1:numbatches
  batchdata(:,:,b) = data((1+(b-1)*batchsize:b*batchsize), :);
end;

end
