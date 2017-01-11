function [data] = unmakebatchdata_v2(batchdata,numbatches,batchsize,ndim) 

data = single(zeros(numbatches*batchsize,ndim));

for b=1:numbatches
  data((1+(b-1)*batchsize:b*batchsize), :)=batchdata(:,:,b);
end

end
