% Purpose : Gradients for LSTM parameters using error signals
% Ref : LSTM : A Search Space Odyssey (Greff et.al arxiv. 2014)
% Vanilla LSTM

function [gWz,gRz,gbz,gWf,gRf,gbf] = gradients_lstm(X,hm,dfm,dzm,nl)

hpm = [zeros(1,nl(2));hm(1:end-1,:)];

gWz = dzm'*X;
gWf = dfm'*X;

gRz = dzm'*hpm;
gRf = dfm'*hpm;

gbz = sum(dzm,1)';
gbf = sum(dfm,1)';

end

