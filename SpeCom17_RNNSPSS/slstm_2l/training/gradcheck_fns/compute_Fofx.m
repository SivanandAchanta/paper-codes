function [J] = compute_Fofx(X,Y,p1,p2,nl,sl,f,cfn)


% Forward Pass
[~,~,~,hm] = fp_lstm(X,p1,nl(2),sl,f(1));
[ym] = fp_cpu_ll(hm,p2,f(end));

% Cost Funtion
switch cfn
    case 'ls'
        J   = 0.5*mean(sum(power((Y - ym),2),2));
    case  'nll'
        J   = mean(sum((-Y.*log(ym)),2));
        
end


end