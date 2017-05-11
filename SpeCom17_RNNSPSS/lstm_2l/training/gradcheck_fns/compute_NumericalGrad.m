function [gW] = compute_NumericalGrad(Wz,Rz,bz,Wi,Ri,pi,bi,Wf,Rf,pf,bf,Wo,Ro,po,bo,U,bu,...
    X,Y,f,nl,sl,cfn,W_toCheck,argno)

W1 = Wz;
W2 = Rz;
W3 = bz;
W4 = Wi;
W5 = Ri;
W6 = pi;
W7 = bi;
W8 = Wf;
W9 = Rf;
W10 = pf;
W11 = bf;
W12 = Wo;
W13 = Ro;
W14 = po;
W15 = bo;
W16 = U;
W17 = bu;

% perturbation magnitude at x
h = 1e-5;

% Compute the numerical gradient
[nr,nc]  = size(W_toCheck);
gW       = zeros(nr,nc);

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
            case 6
                W6 = W_toCheck; W6(cr,cc) = W6(cr,cc) + h;
            case 7
                W7 = W_toCheck; W7(cr,cc) = W7(cr,cc) + h;
            case 8
                W8 = W_toCheck; W8(cr,cc) = W8(cr,cc) + h;
            case 9
                W9 = W_toCheck; W9(cr,cc) = W9(cr,cc) + h;
            case 10
                W10 = W_toCheck; W10(cr,cc) = W10(cr,cc) + h;
            case 11
                W11 = W_toCheck; W11(cr,cc) = W11(cr,cc) + h;
            case 12
                W12 = W_toCheck; W12(cr,cc) = W12(cr,cc) + h;
            case 13
                W13 = W_toCheck; W13(cr,cc) = W13(cr,cc) + h;
            case 14
                W14 = W_toCheck; W14(cr,cc) = W14(cr,cc) + h;
            case 15
                W15 = W_toCheck; W15(cr,cc) = W15(cr,cc) + h;
            case 16
                W16 = W_toCheck; W16(cr,cc) = W16(cr,cc) + h;
            case 17
                W17 = W_toCheck; W17(cr,cc) = W17(cr,cc) + h;
                
        end
        
        p1.Wz = W1;
        p1.Rz = W2;
        p1.bz = W3;
        p1.Wi = W4;
        p1.Ri = W5;
        p1.pi = W6;        
        p1.bi = W7;
        p1.Wf = W8;
        p1.Rf = W9;
        p1.pf = W10;
        p1.bf = W11;
        p1.Wo = W12;                
        p1.Ro = W13;
        p1.po = W14;
        p1.bo = W15;
        
        p2.U = W16;
        p2.bu = W17;
        
        [f_xph] = compute_Fofx(X,Y,p1,p2,nl,sl,f,cfn);
        
        switch argno
            case 1
                W1 = W_toCheck; W1(cr,cc) = W1(cr,cc)- h;
            case 2
                W2 = W_toCheck; W2(cr,cc) = W2(cr,cc)- h;
            case 3
                W3 = W_toCheck; W3(cr,cc) = W3(cr,cc)- h;
            case 4
                W4 = W_toCheck; W4(cr,cc) = W4(cr,cc)- h;
            case 5
                W5 = W_toCheck; W5(cr,cc) = W5(cr,cc)- h;
            case 6
                W6 = W_toCheck; W6(cr,cc) = W6(cr,cc)- h;
            case 7
                W7 = W_toCheck; W7(cr,cc) = W7(cr,cc)- h;
            case 8
                W8 = W_toCheck; W8(cr,cc) = W8(cr,cc)- h;
            case 9
                W9 = W_toCheck; W9(cr,cc) = W9(cr,cc)- h;
            case 10
                W10 = W_toCheck; W10(cr,cc) = W10(cr,cc)- h;
            case 11
                W11 = W_toCheck; W11(cr,cc) = W11(cr,cc)- h;
            case 12
                W12 = W_toCheck; W12(cr,cc) = W12(cr,cc)- h;
            case 13
                W13 = W_toCheck; W13(cr,cc) = W13(cr,cc)- h;
            case 14
                W14 = W_toCheck; W14(cr,cc) = W14(cr,cc)- h;
            case 15
                W15 = W_toCheck; W15(cr,cc) = W15(cr,cc)- h;
            case 16
                W16 = W_toCheck; W16(cr,cc) = W16(cr,cc)- h;
            case 17
                W17 = W_toCheck; W17(cr,cc) = W17(cr,cc)- h;
                
        end
        
        
        p1.Wz = W1;
        p1.Rz = W2;
        p1.bz = W3;
        p1.Wi = W4;
        p1.Ri = W5;
        p1.pi = W6;        
        p1.bi = W7;
        p1.Wf = W8;
        p1.Rf = W9;
        p1.pf = W10;
        p1.bf = W11;
        p1.Wo = W12;                
        p1.Ro = W13;
        p1.po = W14;
        p1.bo = W15;
        
        p2.U = W16;
        p2.bu = W17;
        
        [f_xnh] = compute_Fofx(X,Y,p1,p2,nl,sl,f,cfn);
        
        gW(cr,cc) = (f_xph-f_xnh)/(2*h);
    end
end


end