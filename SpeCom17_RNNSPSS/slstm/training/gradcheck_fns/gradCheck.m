if gradCheckFlag
    
    % Compute numerical gradient
    argno = 1; [gWzn] = compute_NumericalGrad(Wz,Rz,bz,Wf,Rf,bf,U,bu,X,Y,f,nl,sl,cfn,Wz,argno);
    argno = argno + 1; [gRzn] = compute_NumericalGrad(Wz,Rz,bz,Wf,Rf,bf,U,bu,X,Y,f,nl,sl,cfn,Rz,argno);
    argno = argno + 1; [gbzn] = compute_NumericalGrad(Wz,Rz,bz,Wf,Rf,bf,U,bu,X,Y,f,nl,sl,cfn,bz,argno);
    
    argno = argno + 1; [gWfn]  = compute_NumericalGrad(Wz,Rz,bz,Wf,Rf,bf,U,bu,X,Y,f,nl,sl,cfn,Wf,argno);    
    argno = argno + 1; [gRfn]  = compute_NumericalGrad(Wz,Rz,bz,Wf,Rf,bf,U,bu,X,Y,f,nl,sl,cfn,Rf,argno);
    argno = argno + 1; [gbfn]  = compute_NumericalGrad(Wz,Rz,bz,Wf,Rf,bf,U,bu,X,Y,f,nl,sl,cfn,bf,argno);
    
    argno = argno + 1; [gUn]  = compute_NumericalGrad(Wz,Rz,bz,Wf,Rf,bf,U,bu,X,Y,f,nl,sl,cfn,U,argno);
    argno = argno + 1; [gbun]  = compute_NumericalGrad(Wz,Rz,bz,Wf,Rf,bf,U,bu,X,Y,f,nl,sl,cfn,bu,argno);
    
    % Compute the difference between numerical and back-prop gradients
    [dgWzn] = compute_gradDiff_fn(gWzn,gWz,'gWz');
    [dgWfn] = compute_gradDiff_fn(gWfn,gWf,'gWf');
    
    [dgRzn] = compute_gradDiff_fn(gRzn,gRz,'gRz');
    [dgRfn] = compute_gradDiff_fn(gRfn,gRf,'gRf');
    
    [dgbzn] = compute_gradDiff_fn(gbzn,gbz,'gbz');
    [dgbfn] = compute_gradDiff_fn(gbfn,gbf,'gbf');
    
    [dgUn] = compute_gradDiff_fn(gUn,gU,'gU');
    [dgbun] = compute_gradDiff_fn(gbun,gbu,'gbu');
    
    pause
    
end