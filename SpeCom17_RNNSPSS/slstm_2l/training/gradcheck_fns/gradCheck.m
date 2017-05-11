if gradCheckFlag
    
    % Compute numerical gradient
    argno = 1; [gWzn] = compute_NumericalGrad(Gpi1.Wz,Gpi1.Rz,Gpi1.bz,Gpi1.Wf,Gpi1.Rf,Gpi1.bf,Gpo.U,Gpo.bu,X,Y,f,nl,sl,cfn,Gpi1.Wz,argno);
    argno = argno + 1; [gRzn] = compute_NumericalGrad(Gpi1.Wz,Gpi1.Rz,Gpi1.bz,Gpi1.Wf,Gpi1.Rf,Gpi1.bf,Gpo.U,Gpo.bu,X,Y,f,nl,sl,cfn,Gpi1.Rz,argno);
    argno = argno + 1; [gbzn] = compute_NumericalGrad(Gpi1.Wz,Gpi1.Rz,Gpi1.bz,Gpi1.Wf,Gpi1.Rf,Gpi1.bf,Gpo.U,Gpo.bu,X,Y,f,nl,sl,cfn,Gpi1.bz,argno);
    
    argno = argno + 1; [gWfn]  = compute_NumericalGrad(Gpi1.Wz,Gpi1.Rz,Gpi1.bz,Gpi1.Wf,Gpi1.Rf,Gpi1.bf,Gpo.U,Gpo.bu,X,Y,f,nl,sl,cfn,Gpi1.Wf,argno);    
    argno = argno + 1; [gRfn]  = compute_NumericalGrad(Gpi1.Wz,Gpi1.Rz,Gpi1.bz,Gpi1.Wf,Gpi1.Rf,Gpi1.bf,Gpo.U,Gpo.bu,X,Y,f,nl,sl,cfn,Gpi1.Rf,argno);
    argno = argno + 1; [gbfn]  = compute_NumericalGrad(Gpi1.Wz,Gpi1.Rz,Gpi1.bz,Gpi1.Wf,Gpi1.Rf,Gpi1.bf,Gpo.U,Gpo.bu,X,Y,f,nl,sl,cfn,Gpi1.bf,argno);
    
    argno = argno + 1; [gUn]  = compute_NumericalGrad(Gpi1.Wz,Gpi1.Rz,Gpi1.bz,Gpi1.Wf,Gpi1.Rf,Gpi1.bf,Gpo.U,Gpo.bu,X,Y,f,nl,sl,cfn,Gpo.U,argno);
    argno = argno + 1; [gbun]  = compute_NumericalGrad(Gpi1.Wz,Gpi1.Rz,Gpi1.bz,Gpi1.Wf,Gpi1.Rf,Gpi1.bf,Gpo.U,Gpo.bu,X,Y,f,nl,sl,cfn,Gpo.bu,argno);
    
    % Compute the difference between numerical and back-prop gradients
    [dgWzn] = compute_gradDiff_fn(gWzn,Gpi1.gWz,'gWz');
    [dgWfn] = compute_gradDiff_fn(gWfn,Gpi1.gWf,'gWf');
    
    [dgRzn] = compute_gradDiff_fn(gRzn,Gpi1.gRz,'gRz');
    [dgRfn] = compute_gradDiff_fn(gRfn,Gpi1.gRf,'gRf');
    
    [dgbzn] = compute_gradDiff_fn(gbzn,Gpi1.gbz,'gbz');
    [dgbfn] = compute_gradDiff_fn(gbfn,Gpi1.gbf,'gbf');
    
    [dgUn] = compute_gradDiff_fn(gUn,Gpo.gU,'gU');
    [dgbun] = compute_gradDiff_fn(gbun,Gpo.gbu,'gbu');
    
    pause
    
end