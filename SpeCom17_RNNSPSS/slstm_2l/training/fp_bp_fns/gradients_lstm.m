% Purpose : Gradients for LSTM parameters using error signals
% Ref : LSTM : A Search Space Odyssey (Greff et.al arxiv. 2014)
% Vanilla LSTM

function [p] = gradients_lstm(p,X,hm,dfm,dzm,nout)

hpm = [zeros(1,nout);hm(1:end-1,:)];

p.gWz = dzm'*X;
p.gWf = dfm'*X;

p.gRz = dzm'*hpm;
p.gRf = dfm'*hpm;

p.gbz = sum(dzm,1)';
p.gbf = sum(dfm,1)';

end

