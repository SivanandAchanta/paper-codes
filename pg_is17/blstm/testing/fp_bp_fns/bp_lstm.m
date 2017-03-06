% Purpose : To implement backward pass of LSTMs
% Ref : LSTM : A Search Space Odyssey (Greff et.al arxiv. 2014)

% Vanilla LSTM

% backward pass

function [dhm,dom,dcm,dfm,dim,dzm] = bp_lstm(E,Rz,Ri,pi,Rf,pf,Ro,po,zm,im,fm,cm,om,hcm,nl,sl,dir_flag)

a_tanh = 1.7159;
b_tanh = 2/3;
bby2a = (b_tanh/(2*a_tanh));
        
dzm = zeros(sl,nl(2));
dim = zeros(sl,nl(2));
dfm = zeros(sl,nl(2));
dcm = zeros(sl,nl(2));
dom = zeros(sl,nl(2));
dhm = zeros(sl,nl(2));

delnz = zeros(nl(2),1);
delni = zeros(nl(2),1);
delnf = zeros(nl(2),1);
delno = zeros(nl(2),1);
delnc = zeros(nl(2),1);

Rz = Rz';
Ri = Ri';
Rf = Rf';
Ro = Ro';

zm = zm';
im = im';
fm = fm';
cm = cm';
om = om';
hcm = hcm';

derhcm = 2*bby2a*((a_tanh - hcm).*(a_tanh + hcm));
derzm = 2*bby2a*((a_tanh - zm).*(a_tanh + zm));
derom = om.*(1-om);
derfm = fm.*(1-fm);
derim = im.*(1-im);

if strcmp(dir_flag,'frnn')
   fnm = [fm(:,2:end) zeros(nl(2),1)];
   cpm = [zeros(nl(2),1) cm(:,1:end-1)];
   ix_vec = sl:-1:1;
else
   fnm = [zeros(nl(2),1) fm(:,1:end-1)];
   cpm = [cm(:,2:end) zeros(nl(2),1)];
   ix_vec = 1:sl;  
end


for i = ix_vec
    
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


end



