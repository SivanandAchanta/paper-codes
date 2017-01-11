% Purpose : Gradients for LSTM parameters using error signals

% Ref : LSTM : A Search Space Odyssey (Greff et.al arxiv. 2014)

% Vanilla LSTM

function [gWz,gRz,gbz,gWi,gRi,gpi,gbi,gWf,gRf,gpf,gbf,gWo,gRo,gpo,gbo] = gradients_lstm(X,hm,cm,dom,dfm,dim,dzm,nl,sl)

hpm = [zeros(1,nl(2));hm(1:end-1,:)];
cpm = [zeros(1,nl(2));cm(1:end-1,:)];

gWz = dzm'*X;
gWi = dim'*X;
gWf = dfm'*X;
gWo = dom'*X;

gRz = dzm'*hpm;
gRi = dim'*hpm;
gRf = dfm'*hpm;
gRo = dom'*hpm;

gbz = sum(dzm,1)';
gbi = sum(dim,1)';
gbf = sum(dfm,1)';
gbo = sum(dom,1)';

gpi = sum(dim.*cpm,1)';
gpf = sum(dfm.*cpm,1)';
gpo = sum(dom.*cm,1)'; 

end

