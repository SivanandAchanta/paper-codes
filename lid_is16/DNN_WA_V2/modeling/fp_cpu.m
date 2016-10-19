function [hcm,hcmba1,hcmba2,ah,alpha,c,sm,ym] = fp_cpu(X,Wi,bi,Wba1,bba1,Wba2,bba2,Wa,ba,Wh,bh,Wo,bo,f)

% set params of nonlinearity
a_tanh = 1.7159;
b_tanh = 2/3;
bby2a = (b_tanh/(2*a_tanh));

% generate 1st layer hidden output
ac = bsxfun(@plus,Wi*X',bi);

switch f(1)
    case 'N'
        olm = a_tanh*tanh(b_tanh*ac);
    case 'S'
        olm = 1./(1+(a_tanh*exp(-(b_tanh*ac))));
    case 'R' % ReLU components
        olm = max(0,ac);
    case 'E' % ELU components
        olm = max(0,ac);
        olm(ac<=0) = exp(ac(ac<=0))-1;
    case 'M' % Softmax layer
        intout = exp(ac);
        olm = bsxfun(@rdivide,intout,sum(intout,2));
    case 'L'
        olm = ac;
    otherwise
        disp('error: please enter a valid output function name (N/S/R/M/L)');
        return;
        
end

hcm = olm;

ac = bsxfun(@plus,Wba1*hcm,bba1);
switch f(2)
    case 'N'
        olm = a_tanh*tanh(b_tanh*ac);
    case 'S'
        olm = 1./(1+(a_tanh*exp(-(b_tanh*ac))));
    case 'R' % ReLU components
        olm = max(0,ac);
    case 'E' % ELU components
        olm = max(0,ac);
        olm(ac<=0) = exp(ac(ac<=0))-1;
    case 'M' % Softmax layer
        intout = exp(ac);
        olm = bsxfun(@rdivide,intout,sum(intout,2));
    case 'L'
        olm = ac;
    otherwise
        disp('error: please enter a valid output function name (N/S/R/M/L)');
        return;
        
end
hcmba1 = olm;

ac = bsxfun(@plus,Wba2*hcmba1,bba2);
switch f(3)
    case 'N'
        olm = a_tanh*tanh(b_tanh*ac);
    case 'S'
        olm = 1./(1+(a_tanh*exp(-(b_tanh*ac))));
    case 'R' % ReLU components
        olm = max(0,ac);
    case 'E' % ELU components
        olm = max(0,ac);
        olm(ac<=0) = exp(ac(ac<=0))-1;
    case 'M' % Softmax layer
        intout = exp(ac);
        olm = bsxfun(@rdivide,intout,sum(intout,2));
    case 'L'
        olm = ac;
    otherwise
        disp('error: please enter a valid output function name (N/S/R/M/L)');
        return;
        
end
hcmba2 = olm;


% generate context
ac = bsxfun(@plus,Wa*hcmba2,ba);
ah = a_tanh*tanh(b_tanh*ac);

alpha = exp(ah)/sum(exp(ah));
c = hcmba2*alpha';

%generate 2nd layer hidden output using the context
ac = bsxfun(@plus,Wh*c,bh);
switch f(4)
    case 'N'
        olm = a_tanh*tanh(b_tanh*ac);
    case 'S'
        olm = 1./(1+(a_tanh*exp(-(b_tanh*ac))));
    case 'R' % ReLU components
        olm = max(0,ac);
    case 'E' % ELU components
        olm = max(0,ac);
        olm(ac<=0) = exp(ac(ac<=0))-1;
    case 'M' % Softmax layer
        intout = exp(ac);
        olm = bsxfun(@rdivide,intout,sum(intout,2));
    case 'L'
        olm = ac;
    otherwise
        disp('error: please enter a valid output function name (N/S/R/M/L)');
        return;
        
end
sm = olm;

% generate the final output using the 2nd layer output
ac = bsxfun(@plus,Wo*sm,bo);
ac = ac';
switch f(5)
    case 'N'
        olm = a_tanh*tanh(b_tanh*ac);
    case 'S'
        olm = 1./(1+(a_tanh*exp(-(b_tanh*ac))));
    case 'R' % ReLU components
        olm = max(0,ac);
    case 'E' % ELU components
        olm = max(0,ac);
        olm(ac<=0) = exp(ac(ac<=0))-1;
    case 'M' % Softmax layer
        intout = exp(ac);
        olm = bsxfun(@rdivide,intout,sum(intout,2));
    case 'L'
        olm = ac;
    otherwise
        disp('error: please enter a valid output function name (N/S/R/M/L)');
        return;
        
end
ym = olm;
% ym
end
