% Purpose : To implement backward pass of LSTMs
% Ref : LSTM : A Search Space Odyssey (Greff et.al arxiv. 2014)

% Vanilla LSTM

% backward pass

function [dhm,dom,dcm,dfm,dim,dzm,Eb] = bp_lstm(E,zm,im,fm,cm,om,hcm,p,nout,sl)

Rz = p.Rz;
Ri = p.Ri;
pi = p.pi;
Rf = p.Rf;
pf = p.pf;
Ro = p.Ro;
po = p.po;
Wz = p.Wz;
Wi = p.Wi;
Wf = p.Wf;
Wo = p.Wo;

dzm = zeros(sl,nout);
dim = zeros(sl,nout);
dfm = zeros(sl,nout);
dcm = zeros(sl,nout);
dom = zeros(sl,nout);
dhm = zeros(sl,nout);

delnz = zeros(nout,1);
delni = zeros(nout,1);
delnf = zeros(nout,1);
delno = zeros(nout,1);
delnc = zeros(nout,1);

Rz = Rz';
Ri = Ri';
Rf = Rf';
Ro = Ro';

zm = zm';
im = im';
fm = fm';
fnm = [fm(:,2:end) zeros(nout,1)];
cm = cm';
cpm = [zeros(nout,1) cm(:,1:end-1)];
om = om';
hcm = hcm';

derhcm = get_derf(nout,'N',hcm,sl);
derzm = get_derf(nout,'N',zm,sl);
derom = om.*(1-om);
derfm = fm.*(1-fm);
derim = im.*(1-im);


for i = sl:-1:1
    
   delht = E(:,i) + Rz*delnz + Ri*delni + Rf*delnf + Ro*delno;
   delot = delht.*hcm(:,i).*derom(:,i);
   delct = delht.*om(:,i).*derhcm(:,i) + po.*delot + pi.*delni + pf.*delnf + delnc.*fnm(:,i);
   
   delft = delct.*cpm(:,i).*derfm(:,i);
   delit = delct.*zm(:,i).*derim(:,i);
   delzt = delct.*im(:,i).*derzm(:,i);
   
   % update the next error signals
   delnz = delzt;
   delni = delit;
   delnf = delft;
   delno = delot;
   delnc = delct;
   
   % store the error signlas
   dhm(i,:) = delht';
   dom(i,:) = delot';
   dcm(i,:) = delct';
   dfm(i,:) = delft';
   dim(i,:) = delit';
   dzm(i,:) = delzt';
end

Eb = dzm*Wz + dim*Wi + dfm*Wf + dom*Wo;

end



