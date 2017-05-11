function [gU,gbo,Eb] = bp_cpu_ll(nout,f,Y,ol_mat,hcm,U,sl,cfn)

% bacward prop
% Compute deltas of output layer weights and biases

[der_f] = get_derf(nout,f,ol_mat,sl);

switch cfn
    case 'ls'
        costder = -(Y - ol_mat)/sl;
        delo = costder.*der_f;
    case  'nll'
        %         costder = -(Out./ol_m);
        delo  = -(Y - ol_mat)/sl;
end

gU = (delo'*hcm);
gbo = sum(delo,1)';

Eb = delo*U;
end