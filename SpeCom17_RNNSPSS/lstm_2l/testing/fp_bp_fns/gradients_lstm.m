% Purpose : Gradients for LSTM parameters using error signals

% Ref : LSTM : A Search Space Odyssey (Greff et.al arxiv. 2014)

% Vanilla LSTM

function [p] = gradients_lstm(p,X,hm,cm,dom,dfm,dim,dzm,nout)

hpm = [zeros(1,nout);hm(1:end-1,:)];
cpm = [zeros(1,nout);cm(1:end-1,:)];

p.gWz = dzm'*X;
p.gWi = dim'*X;
p.gWf = dfm'*X;
p.gWo = dom'*X;

p.gRz = dzm'*hpm;
p.gRi = dim'*hpm;
p.gRf = dfm'*hpm;
p.gRo = dom'*hpm;

p.gbz = sum(dzm,1)';
p.gbi = sum(dim,1)';
p.gbf = sum(dfm,1)';
p.gbo = sum(dom,1)';

p.gpi = sum(dim.*cpm,1)';
p.gpf = sum(dfm.*cpm,1)';
p.gpo = sum(dom.*cm,1)'; 

end

