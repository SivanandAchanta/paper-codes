function [gW] = compute_NumericalGrad(Wzf,Rzf,bzf,Wif,Rif,pif,bif,Wff,Rff,pff,bff,Wof,Rof,pof,bof,Uf,...
    Wz,Rz,bz,Wi,Ri,pi,bi,Wf,Rf,pf,bf,Wo,Ro,po,bo,U,...
    bu,X,Y,f,nl,sl,cfn,W_toCheck,argno)

W1 = Wzf;
W2 = Rzf;
W3 = bzf;
W4 = Wif;
W5 = Rif;
W6 = pif;
W7 = bif;
W8 = Wff;
W9 = Rff;
W10 = pff;
W11 = bff;
W12 = Wof;
W13 = Rof;
W14 = pof;
W15 = bof;
W16 = Uf;

W17 = Wz;
W18 = Rz;
W19 = bz;
W20 = Wi;
W21 = Ri;
W22 = pi;
W23 = bi;
W24 = Wf;
W25 = Rf;
W26 = pf;
W27 = bf;
W28 = Wo;
W29 = Ro;
W30 = po;
W31 = bo;
W32 = U;

W33 = bu;

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
            case 18
                W18 = W_toCheck; W18(cr,cc) = W18(cr,cc) + h;
            case 19
                W19 = W_toCheck; W19(cr,cc) = W19(cr,cc) + h;
            case 20
                W20 = W_toCheck; W20(cr,cc) = W20(cr,cc) + h;
            case 21
                W21 = W_toCheck; W21(cr,cc) = W21(cr,cc) + h;
            case 22
                W22 = W_toCheck; W22(cr,cc) = W22(cr,cc) + h;
            case 23
                W23 = W_toCheck; W23(cr,cc) = W23(cr,cc) + h;
            case 24
                W24 = W_toCheck; W24(cr,cc) = W24(cr,cc) + h;
            case 25
                W25 = W_toCheck; W25(cr,cc) = W25(cr,cc) + h;
            case 26
                W26 = W_toCheck; W26(cr,cc) = W26(cr,cc) + h;
            case 27
                W27 = W_toCheck; W27(cr,cc) = W27(cr,cc) + h;
            case 28
                W28 = W_toCheck; W28(cr,cc) = W28(cr,cc) + h;
            case 29
                W29 = W_toCheck; W29(cr,cc) = W29(cr,cc) + h;
            case 30
                W30 = W_toCheck; W30(cr,cc) = W30(cr,cc) + h;
            case 31
                W31 = W_toCheck; W31(cr,cc) = W31(cr,cc) + h;
            case 32
                W32 = W_toCheck; W32(cr,cc) = W32(cr,cc) + h;
            case 33
                W33 = W_toCheck; W33(cr,cc) = W33(cr,cc) + h;
                
        end
        
        
        [f_xph] = compute_Fofx(X,Y,W1,W2,W3,W4,W5,W6,W7,W8,W9,W10,W11,W12,W13,W14,W15,W16,...
            W17,W18,W19,W20,W21,W22,W23,W24,W25,W26,W27,W28,W29,W30,W31,W32,...
        W33,nl,sl,f,cfn);
        
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
            case 6
                W6 = W_toCheck; W6(cr,cc) = W6(cr,cc) - h;
            case 7
                W7 = W_toCheck; W7(cr,cc) = W7(cr,cc) - h;
            case 8
                W8 = W_toCheck; W8(cr,cc) = W8(cr,cc) - h;
            case 9
                W9 = W_toCheck; W9(cr,cc) = W9(cr,cc) - h;
            case 10
                W10 = W_toCheck; W10(cr,cc) = W10(cr,cc) - h;
            case 11
                W11 = W_toCheck; W11(cr,cc) = W11(cr,cc) - h;
            case 12
                W12 = W_toCheck; W12(cr,cc) = W12(cr,cc) - h;
            case 13
                W13 = W_toCheck; W13(cr,cc) = W13(cr,cc) - h;
            case 14
                W14 = W_toCheck; W14(cr,cc) = W14(cr,cc) - h;
            case 15
                W15 = W_toCheck; W15(cr,cc) = W15(cr,cc) - h;
            case 16
                W16 = W_toCheck; W16(cr,cc) = W16(cr,cc) - h;
            case 17
                W17 = W_toCheck; W17(cr,cc) = W17(cr,cc) - h;
            case 18
                W18 = W_toCheck; W18(cr,cc) = W18(cr,cc) - h;
            case 19
                W19 = W_toCheck; W19(cr,cc) = W19(cr,cc) - h;
            case 20
                W20 = W_toCheck; W20(cr,cc) = W20(cr,cc) - h;
            case 21
                W21 = W_toCheck; W21(cr,cc) = W21(cr,cc) - h;
            case 22
                W22 = W_toCheck; W22(cr,cc) = W22(cr,cc) - h;
            case 23
                W23 = W_toCheck; W23(cr,cc) = W23(cr,cc) - h;
            case 24
                W24 = W_toCheck; W24(cr,cc) = W24(cr,cc) - h;
            case 25
                W25 = W_toCheck; W25(cr,cc) = W25(cr,cc) - h;
            case 26
                W26 = W_toCheck; W26(cr,cc) = W26(cr,cc) - h;
            case 27
                W27 = W_toCheck; W27(cr,cc) = W27(cr,cc) - h;
            case 28
                W28 = W_toCheck; W28(cr,cc) = W28(cr,cc) - h;
            case 29
                W29 = W_toCheck; W29(cr,cc) = W29(cr,cc) - h;
            case 30
                W30 = W_toCheck; W30(cr,cc) = W30(cr,cc) - h;
            case 31
                W31 = W_toCheck; W31(cr,cc) = W31(cr,cc) - h;
            case 32
                W32 = W_toCheck; W32(cr,cc) = W32(cr,cc) - h;
            case 33
                W33 = W_toCheck; W33(cr,cc) = W33(cr,cc) - h;
                
        end
        
        [f_xnh] = compute_Fofx(X,Y,W1,W2,W3,W4,W5,W6,W7,W8,W9,W10,W11,W12,W13,W14,W15,W16,...
            W17,W18,W19,W20,W21,W22,W23,W24,W25,W26,W27,W28,W29,W30,W31,W32,...
        W33,nl,sl,f,cfn);
        
        gW(cr,cc) = (f_xph-f_xnh)/(2*h);
    end
end


end