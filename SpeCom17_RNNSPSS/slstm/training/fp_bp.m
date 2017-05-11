% Forward Pass
[zm,fm,cm,hm,ym] = fp_lstm(X,Wz,Rz,bz,Wf,Rf,bf,nl,sl,f,U,bu);

% Error at Output Layer
switch cfn
    case 'ls'
        E   = -(Y - ym)/sl;
    case  'nll'
        E   = -(Y - ym)/sl;
end

% Backprop
gU = (E'*hm);
gbu = sum(E)';
Eb = U'*E';

[dhm,dcm,dfm,dzm] = bp_lstm(Eb,Rz,Rf,zm,fm,cm,hm,nl,sl);
[gWz,gRz,gbz,gWf,gRf,gbf] = gradients_lstm(X,hm,dfm,dzm,nl);
