if gradCheckFlag
    
    % Compute numerical gradient
    argno = 1; [gWin] = compute_NumericalGrad(Gpi1.Wi,Gpi1.Wfr,Gpi1.bh,Gpo.U,Gpo.bu,X,Y,f,nl,sl,cfn,Gpi1.Wi,argno,gpu_flag);
    argno = argno + 1; [gWfrn]  = compute_NumericalGrad(Gpi1.Wi,Gpi1.Wfr,Gpi1.bh,Gpo.U,Gpo.bu,X,Y,f,nl,sl,cfn,Gpi1.Wfr,argno,gpu_flag);
    argno = argno + 1; [gbhn]  = compute_NumericalGrad(Gpi1.Wi,Gpi1.Wfr,Gpi1.bh,Gpo.U,Gpo.bu,X,Y,f,nl,sl,cfn,Gpi1.bh,argno,gpu_flag);
    argno = argno + 1; [gUn]  = compute_NumericalGrad(Gpi1.Wi,Gpi1.Wfr,Gpi1.bh,Gpo.U,Gpo.bu,X,Y,f,nl,sl,cfn,Gpo.U,argno,gpu_flag);
    argno = argno + 1; [gbun]  = compute_NumericalGrad(Gpi1.Wi,Gpi1.Wfr,Gpi1.bh,Gpo.U,Gpo.bu,X,Y,f,nl,sl,cfn,Gpo.bu,argno,gpu_flag);
    
    % Compute the difference between numerical and back-prop gradients
    [dgWin] = compute_gradDiff_fn(gWin,Gpi1.gWi,'gWi');
    [dgWfrn] = compute_gradDiff_fn(gWfrn,Gpi1.gWfr,'gWfr');
    [dgbhn] = compute_gradDiff_fn(gbhn,Gpi1.gbh,'gbh');
    [dgUn] = compute_gradDiff_fn(gUn,Gpo.gU,'gU');
    [dgbun] = compute_gradDiff_fn(gbun,Gpo.gbu,'gbu');
    
    pause
    
end