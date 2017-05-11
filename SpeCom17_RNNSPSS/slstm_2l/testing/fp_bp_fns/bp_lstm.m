% Purpose : To implement backward pass of LSTMs
% Ref : LSTM : A Search Space Odyssey (Greff et.al arxiv. 2014)

% Vanilla LSTM

% backward pass

function [dhm,dcm,dfm,dzm,Eb] = bp_lstm(E,zm,fm,cm,hm,p,nout,sl)

Wz = p.Wz;
Rz = p.Rz;
Wf = p.Wf;
Rf = p.Rf;

dzm = zeros(sl,nout);
dfm = zeros(sl,nout);
dcm = zeros(sl,nout);
dhm = zeros(sl,nout);

delnz = zeros(nout,1);
delnf = zeros(nout,1);
delnc = zeros(nout,1);

Rz = Rz';
Rf = Rf';

zm = zm';
fm = fm';
fnm = [fm(:,2:end) zeros(nout,1)];
cm = cm';
cpm = [zeros(nout,1) cm(:,1:end-1)];
hm = hm';

derhm = get_derf(nout,'N',hm,sl);
derzm = get_derf(nout,'N',zm,sl);
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

Eb = dzm*Wz + dfm*Wf;
end



