% Purpose : To implement backward pass of LSTMs
% Ref : LSTM : A Search Space Odyssey (Greff et.al arxiv. 2014)

% Vanilla LSTM

% backward pass

function [dcm,dzm,dfm,Eb] = bp_lstm(E,fm,zm,cm,hm,p,nout,sl)

Wz = p.Wz;
Rz = p.Rz;
Wf = p.Wf;
Rf = p.Rf;
Wc = p.Wc;
Rc = p.Rc;

dfm = zeros(sl,nout);
dzm = zeros(sl,nout);
dcm = zeros(sl,nout);
dhm = zeros(sl,nout);

delnc = zeros(nout,1);
delnz = zeros(nout,1);
delnf = zeros(nout,1);
delnh = zeros(nout,1);

Rf = Rf';
Rz = Rz';
Rct = Rc';

zm = zm';
znm = [zm(:,2:end) zeros(nout,1)];
fm = fm';
% fpm = [zeros(nout,1) fm(:,1:end-1)];
fnm = [fm(:,2:end) zeros(nout,1)];
cm = cm';
hm = hm';
hpm = [zeros(nout,1) hm(:,1:end-1)];
% hnm = [hm(:,2:end) zeros(nout,1)];

dercm = get_derf(nout,'N',cm,sl);
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

Eb = dzm*Wz + dfm*Wf + dcm*Wc;

end



