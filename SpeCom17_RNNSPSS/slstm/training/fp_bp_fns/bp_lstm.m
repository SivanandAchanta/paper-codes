% Purpose : To implement backward pass of LSTMs
% Ref : LSTM : A Search Space Odyssey (Greff et.al arxiv. 2014)

% Vanilla LSTM

% backward pass

function [dhm,dcm,dfm,dzm] = bp_lstm(E,Rz,Rf,zm,fm,cm,hm,nl,sl)

a_tanh = 1.7159;
b_tanh = 2/3;
bby2a = (b_tanh/(2*a_tanh));

dzm = zeros(sl,nl(2));
dfm = zeros(sl,nl(2));
dcm = zeros(sl,nl(2));
dhm = zeros(sl,nl(2));

delnz = zeros(nl(2),1);
delnf = zeros(nl(2),1);
delnc = zeros(nl(2),1);

Rz = Rz';
Rf = Rf';

zm = zm';
fm = fm';
fnm = [fm(:,2:end) zeros(nl(2),1)];
cm = cm';
cpm = [zeros(nl(2),1) cm(:,1:end-1)];
hm = hm';

derhm = 2*bby2a*((a_tanh - hm).*(a_tanh + hm));
derzm = 2*bby2a*((a_tanh - zm).*(a_tanh + zm));
derfm = fm.*(1-fm);


for i = sl:-1:1
    
    delht = E(:,i) + Rz*delnz + Rf*delnf ;
    delct = delht.*derhm(:,i) + delnc.*fnm(:,i);
    
    delft = delct.*(cpm(:,i) - zm(:,i)).*derfm(:,i);
    delzt = delct.*(1 - fm(:,i)).*derzm(:,i);
    
    % update the next error signals
    delnz = delzt;
    delnf = delft;
    delnc = delct;
    
    % store the error signlas
    dhm(i,:) = delht';
    dcm(i,:) = delct';
    dfm(i,:) = delft';
    dzm(i,:) = delzt';
end


end



