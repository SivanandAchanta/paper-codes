% Purpose : To implement backward pass of LSTMs
% Ref : LSTM : A Search Space Odyssey (Greff et.al arxiv. 2014)

% Vanilla LSTM

% backward pass

function [dcm,dzm,dfm] = bp_lstm(E,Rz,Rf,Rc,fm,zm,cm,hm,nl,sl)

a_tanh = 1.7159;
b_tanh = 2/3;
bby2a = (b_tanh/(2*a_tanh));

dfm = zeros(sl,nl(2));
dzm = zeros(sl,nl(2));
dcm = zeros(sl,nl(2));
dhm = zeros(sl,nl(2));

delnc = zeros(nl(2),1);
delnz = zeros(nl(2),1);
delnf = zeros(nl(2),1);
delnh = zeros(nl(2),1);

Rf = Rf';
Rz = Rz';
Rct = Rc';

zm = zm';
znm = [zm(:,2:end) zeros(nl(2),1)];
fm = fm';
fpm = [zeros(nl(2),1) fm(:,1:end-1)];
fnm = [fm(:,2:end) zeros(nl(2),1)];
cm = cm';
hm = hm';
hpm = [zeros(nl(2),1) hm(:,1:end-1)];
hnm = [hm(:,2:end) zeros(nl(2),1)];

dercm = 2*bby2a*((a_tanh - cm).*(a_tanh + cm));
derzm = zm.*(1-zm);
derfm = fm.*(1-fm);


for i = sl:-1:1
    
    delht = E(:,i) + Rz*delnz + Rf*delnf + (Rct*(fnm(:,i).*delnc)) + znm(:,i).*delnh;
    delct = delht.*(1 - zm(:,i)).*dercm(:,i);
    delzt = delht.*(hpm(:,i) - cm(:,i)).*derzm(:,i);
    delft = delct.*derfm(:,i).*(Rc*hpm(:,i));
    
    % update the next error signals
    delnz = delzt;
    delnf = delft;
    delnc = delct;
    delnh = delht;
    
    % store the error signlas
    dhm(i,:) = delht';
    dcm(i,:) = delct';
    dfm(i,:) = delft';
    dzm(i,:) = delzt';
end


end



