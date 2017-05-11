function [gWn] = compute_NumericalGrad(Wi,Wfr,bh,U,bu,X,Y,f,nl,sl,cfn,W_toCheck,argno,gpu_flag)

W1 = Wi;
W2 = Wfr;
W3 = bh;
W4 = U;
W5 = bu;

% perturbation magnitude at x
h = 1e-6;

% Compute the numerical gradient
[nr,nc]  = size(W_toCheck);

if gpu_flag
    gWn      = gpuArray(zeros(nr,nc));
else
    gWn      = (zeros(nr,nc));
end

for cc = 1:nc
    for cr = 1:nr
        
        switch argno
            case 1
                W1 = W_toCheck; W1(cr,cc) = W1(cr,cc) + h;
            case 2
                W2 = W_toCheck; W2(cr,cc) = W2(cr,cc) + h;        
            case 3
                W3 = W_toCheck; W3(cr,cc) = W3(cr,cc) + h;
            case 4
                W4 = W_toCheck; W4(cr,cc) = W4(cr,cc) + h;        
            case 5
                W5 = W_toCheck; W5(cr,cc) = W5(cr,cc) + h;
                
        end
        
        p1.Wi = W1;
        p1.Wfr = W2;
        p1.bh = W3;
        p2.U = W4;
        p2.bu = W5;
        
        [f_xph] = compute_Fofx(X,Y,p1,p2,f,nl,sl,cfn);
        
        switch argno
            case 1
                W1 = W_toCheck; W1(cr,cc) = W1(cr,cc) - h;
            case 2
                W2 = W_toCheck; W2(cr,cc) = W2(cr,cc) - h;        
            case 3
                W3 = W_toCheck; W3(cr,cc) = W3(cr,cc) - h;
            case 4
                W4 = W_toCheck; W4(cr,cc) = W4(cr,cc) - h;        
            case 5
                W5 = W_toCheck; W5(cr,cc) = W5(cr,cc) - h;
                
        end
        
        p1.Wi = W1;
        p1.Wfr = W2;
        p1.bh = W3;
        p2.U = W4;
        p2.bu = W5;
        
        [f_xnh] = compute_Fofx(X,Y,p1,p2,f,nl,sl,cfn);
        
        gWn(cr,cc) = (f_xph-f_xnh)/(2*h);
    end
end


end