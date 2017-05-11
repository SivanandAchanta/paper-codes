function [gWi,gWfr,gbh,Eb] = bp_cpu_rl(nout,f,iemat,hcm,X,p,sl)

Wfr = p.Wfr;
Wi = p.Wi;

% Compute gradients of recurrent weights and biases
delnt = (zeros(nout,1));
delm = (zeros(sl,nout));

Wfr = Wfr';
[der_f] = get_derf(nout,f,hcm,sl);
der_f = der_f';

for k = sl:-1:1
    ie = der_f(:,k).*(Wfr*delnt+iemat(:,k));
    delnt = ie;
    delm(k,:) = delnt;
end

h_0 = zeros(nout,1);
hpm = [h_0';hcm(1:end-1,:)];
gWfr = (delm'*hpm);
gbh = sum(delm,1)';

% Compute gradients of inpu-hidden layer weights
gWi = (delm'*X);

Eb = delm*Wi;

end