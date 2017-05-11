function [J] = compute_Fofx(X,Y,Gpi1,Gpo,f,nl,sl,cfn)

% Forward Pass
hcm = fp_cpu_rl(X,Gpi1,f,nl,sl);
ol_mat = fp_cpu_ll(hcm,Gpo,f(end));


% Cost Funtion
switch cfn
    case 'ls'
        J   = 0.5*mean(sum(power((Y - ol_mat),2),2));
    case  'nll'
        J   = mean(sum((-Y.*log(ol_mat)),2));
        
end


end