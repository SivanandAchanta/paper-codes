if gradCheckFlag
    
    % Compute numerical gradient
    argno = 1; [gWzn] = compute_NumericalGrad(Gpi1.Wz,Gpi1.Rz,Gpi1.bz,Gpi1.Wi,Gpi1.Ri,Gpi1.pi,Gpi1.bi,Gpi1.Wf,Gpi1.Rf,Gpi1.pf,Gpi1.bf,Gpi1.Wo,Gpi1.Ro,Gpi1.po,Gpi1.bo,Gpo.U,Gpo.bu,X,Y,f,nl,sl,cfn,Gpi1.Wz,argno);
    argno = argno + 1; [gRzn] = compute_NumericalGrad(Gpi1.Wz,Gpi1.Rz,Gpi1.bz,Gpi1.Wi,Gpi1.Ri,Gpi1.pi,Gpi1.bi,Gpi1.Wf,Gpi1.Rf,Gpi1.pf,Gpi1.bf,Gpi1.Wo,Gpi1.Ro,Gpi1.po,Gpi1.bo,Gpo.U,Gpo.bu,X,Y,f,nl,sl,cfn,Gpi1.Rz,argno);
    argno = argno + 1; [gbzn] = compute_NumericalGrad(Gpi1.Wz,Gpi1.Rz,Gpi1.bz,Gpi1.Wi,Gpi1.Ri,Gpi1.pi,Gpi1.bi,Gpi1.Wf,Gpi1.Rf,Gpi1.pf,Gpi1.bf,Gpi1.Wo,Gpi1.Ro,Gpi1.po,Gpi1.bo,Gpo.U,Gpo.bu,X,Y,f,nl,sl,cfn,Gpi1.bz,argno);
    
    argno = argno + 1; [gWin] = compute_NumericalGrad(Gpi1.Wz,Gpi1.Rz,Gpi1.bz,Gpi1.Wi,Gpi1.Ri,Gpi1.pi,Gpi1.bi,Gpi1.Wf,Gpi1.Rf,Gpi1.pf,Gpi1.bf,Gpi1.Wo,Gpi1.Ro,Gpi1.po,Gpi1.bo,Gpo.U,Gpo.bu,X,Y,f,nl,sl,cfn,Gpi1.Wi,argno);    
    argno = argno + 1; [gRin]  = compute_NumericalGrad(Gpi1.Wz,Gpi1.Rz,Gpi1.bz,Gpi1.Wi,Gpi1.Ri,Gpi1.pi,Gpi1.bi,Gpi1.Wf,Gpi1.Rf,Gpi1.pf,Gpi1.bf,Gpi1.Wo,Gpi1.Ro,Gpi1.po,Gpi1.bo,Gpo.U,Gpo.bu,X,Y,f,nl,sl,cfn,Gpi1.Ri,argno);
    argno = argno + 1; [gpin]  = compute_NumericalGrad(Gpi1.Wz,Gpi1.Rz,Gpi1.bz,Gpi1.Wi,Gpi1.Ri,Gpi1.pi,Gpi1.bi,Gpi1.Wf,Gpi1.Rf,Gpi1.pf,Gpi1.bf,Gpi1.Wo,Gpi1.Ro,Gpi1.po,Gpi1.bo,Gpo.U,Gpo.bu,X,Y,f,nl,sl,cfn,Gpi1.pi,argno);
    argno = argno + 1; [gbin]  = compute_NumericalGrad(Gpi1.Wz,Gpi1.Rz,Gpi1.bz,Gpi1.Wi,Gpi1.Ri,Gpi1.pi,Gpi1.bi,Gpi1.Wf,Gpi1.Rf,Gpi1.pf,Gpi1.bf,Gpi1.Wo,Gpi1.Ro,Gpi1.po,Gpi1.bo,Gpo.U,Gpo.bu,X,Y,f,nl,sl,cfn,Gpi1.bi,argno);
    
    argno = argno + 1; [gWfn]  = compute_NumericalGrad(Gpi1.Wz,Gpi1.Rz,Gpi1.bz,Gpi1.Wi,Gpi1.Ri,Gpi1.pi,Gpi1.bi,Gpi1.Wf,Gpi1.Rf,Gpi1.pf,Gpi1.bf,Gpi1.Wo,Gpi1.Ro,Gpi1.po,Gpi1.bo,Gpo.U,Gpo.bu,X,Y,f,nl,sl,cfn,Gpi1.Wf,argno);    
    argno = argno + 1; [gRfn]  = compute_NumericalGrad(Gpi1.Wz,Gpi1.Rz,Gpi1.bz,Gpi1.Wi,Gpi1.Ri,Gpi1.pi,Gpi1.bi,Gpi1.Wf,Gpi1.Rf,Gpi1.pf,Gpi1.bf,Gpi1.Wo,Gpi1.Ro,Gpi1.po,Gpi1.bo,Gpo.U,Gpo.bu,X,Y,f,nl,sl,cfn,Gpi1.Rf,argno);
    argno = argno + 1; [gpfn]  = compute_NumericalGrad(Gpi1.Wz,Gpi1.Rz,Gpi1.bz,Gpi1.Wi,Gpi1.Ri,Gpi1.pi,Gpi1.bi,Gpi1.Wf,Gpi1.Rf,Gpi1.pf,Gpi1.bf,Gpi1.Wo,Gpi1.Ro,Gpi1.po,Gpi1.bo,Gpo.U,Gpo.bu,X,Y,f,nl,sl,cfn,Gpi1.pf,argno);
    argno = argno + 1; [gbfn]  = compute_NumericalGrad(Gpi1.Wz,Gpi1.Rz,Gpi1.bz,Gpi1.Wi,Gpi1.Ri,Gpi1.pi,Gpi1.bi,Gpi1.Wf,Gpi1.Rf,Gpi1.pf,Gpi1.bf,Gpi1.Wo,Gpi1.Ro,Gpi1.po,Gpi1.bo,Gpo.U,Gpo.bu,X,Y,f,nl,sl,cfn,Gpi1.bf,argno);
    
    argno = argno + 1; [gWon]  = compute_NumericalGrad(Gpi1.Wz,Gpi1.Rz,Gpi1.bz,Gpi1.Wi,Gpi1.Ri,Gpi1.pi,Gpi1.bi,Gpi1.Wf,Gpi1.Rf,Gpi1.pf,Gpi1.bf,Gpi1.Wo,Gpi1.Ro,Gpi1.po,Gpi1.bo,Gpo.U,Gpo.bu,X,Y,f,nl,sl,cfn,Gpi1.Wo,argno);    
    argno = argno + 1; [gRon]  = compute_NumericalGrad(Gpi1.Wz,Gpi1.Rz,Gpi1.bz,Gpi1.Wi,Gpi1.Ri,Gpi1.pi,Gpi1.bi,Gpi1.Wf,Gpi1.Rf,Gpi1.pf,Gpi1.bf,Gpi1.Wo,Gpi1.Ro,Gpi1.po,Gpi1.bo,Gpo.U,Gpo.bu,X,Y,f,nl,sl,cfn,Gpi1.Ro,argno);
    argno = argno + 1; [gpon]  = compute_NumericalGrad(Gpi1.Wz,Gpi1.Rz,Gpi1.bz,Gpi1.Wi,Gpi1.Ri,Gpi1.pi,Gpi1.bi,Gpi1.Wf,Gpi1.Rf,Gpi1.pf,Gpi1.bf,Gpi1.Wo,Gpi1.Ro,Gpi1.po,Gpi1.bo,Gpo.U,Gpo.bu,X,Y,f,nl,sl,cfn,Gpi1.po,argno);
    argno = argno + 1; [gbon]  = compute_NumericalGrad(Gpi1.Wz,Gpi1.Rz,Gpi1.bz,Gpi1.Wi,Gpi1.Ri,Gpi1.pi,Gpi1.bi,Gpi1.Wf,Gpi1.Rf,Gpi1.pf,Gpi1.bf,Gpi1.Wo,Gpi1.Ro,Gpi1.po,Gpi1.bo,Gpo.U,Gpo.bu,X,Y,f,nl,sl,cfn,Gpi1.bo,argno);
    
    argno = argno + 1; [gUn]  = compute_NumericalGrad(Gpi1.Wz,Gpi1.Rz,Gpi1.bz,Gpi1.Wi,Gpi1.Ri,Gpi1.pi,Gpi1.bi,Gpi1.Wf,Gpi1.Rf,Gpi1.pf,Gpi1.bf,Gpi1.Wo,Gpi1.Ro,Gpi1.po,Gpi1.bo,Gpo.U,Gpo.bu,X,Y,f,nl,sl,cfn,Gpo.U,argno);
    argno = argno + 1; [gbun]  = compute_NumericalGrad(Gpi1.Wz,Gpi1.Rz,Gpi1.bz,Gpi1.Wi,Gpi1.Ri,Gpi1.pi,Gpi1.bi,Gpi1.Wf,Gpi1.Rf,Gpi1.pf,Gpi1.bf,Gpi1.Wo,Gpi1.Ro,Gpi1.po,Gpi1.bo,Gpo.U,Gpo.bu,X,Y,f,nl,sl,cfn,Gpo.bu,argno);
    
    % Compute the difference between numerical and back-prop gradients
    [dgWzn] = compute_gradDiff_fn(gWzn,Gpi1.gWz,'gWz');
    [dgWin] = compute_gradDiff_fn(gWin,Gpi1.gWi,'gWi');
    [dgWfn] = compute_gradDiff_fn(gWfn,Gpi1.gWf,'gWf');
    [dgWon] = compute_gradDiff_fn(gWon,Gpi1.gWo,'gWo');
    
    [dgRzn] = compute_gradDiff_fn(gRzn,Gpi1.gRz,'gRz');
    [dgRin] = compute_gradDiff_fn(gRin,Gpi1.gRi,'gRi');
    [dgRfn] = compute_gradDiff_fn(gRfn,Gpi1.gRf,'gRf');
    [dgRon] = compute_gradDiff_fn(gRon,Gpi1.gRo,'gRo');
    
    [dgbzn] = compute_gradDiff_fn(gbzn,Gpi1.gbz,'gbz');
    [dgbin] = compute_gradDiff_fn(gbin,Gpi1.gbi,'gbi');
    [dgbfn] = compute_gradDiff_fn(gbfn,Gpi1.gbf,'gbf');
    [dgbon] = compute_gradDiff_fn(gbon,Gpi1.gbo,'gbo');
    
    [dgpin] = compute_gradDiff_fn(gpin,Gpi1.gpi,'gpi');
    [dgpfn] = compute_gradDiff_fn(gpfn,Gpi1.gpf,'gpf');
    [dgpon] = compute_gradDiff_fn(gpon,Gpi1.gpo,'gpo');
    
    [dgUn] = compute_gradDiff_fn(gUn,Gpo.gU,'gU');
    [dgbun] = compute_gradDiff_fn(gbun,Gpo.gbu,'gbu');
    
    pause
    
end