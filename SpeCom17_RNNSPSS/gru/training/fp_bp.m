% Forward Pass
[fm,zm,cm,hm,ym] = fp_lstm(X,Wz,Rz,bz,Wf,Rf,bf,Wc,Rc,bc,nl,sl,f,U,bu);

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

[dcm,dzm,dfm] = bp_lstm(Eb,Rz,Rf,Rc,fm,zm,cm,hm,nl,sl);
[gWz,gRz,gbz,gWf,gRf,gbf,gWc,gRc,gbc] = gradients_lstm(X,hm,fm,dfm,dzm,dcm,nl);
