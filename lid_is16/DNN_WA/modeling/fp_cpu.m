function [hcm,ah,alpha,c,sm,ym] = fp_cpu(X,Wi,bi,Wa,ba,Wh,bh,Wo,bo,f)

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

% generate context
ac = bsxfun(@plus,Wa*hcm,ba);
ah = a_tanh*tanh(b_tanh*ac);

alpha = exp(ah)/sum(exp(ah));
c = hcm*alpha';

%generate 2nd layer hidden output using the context
ac = bsxfun(@plus,Wh*c,bh);
switch f(2)
    case 'N'
        olm = a_tanh*tanh(b_tanh*ac);
    case 'S'
        olm = 1./(1+(a_tanh*exp(-(b_tanh*ac))));
    case 'R' % ReLU components
        olm = max(0,ac);
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
switch f(3)
    case 'N'
        olm = a_tanh*tanh(b_tanh*ac);
    case 'S'
        olm = 1./(1+(a_tanh*exp(-(b_tanh*ac))));
    case 'R' % ReLU components
        olm = max(0,ac);
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

end