% Purpose : To implement forward pass of LSTMs
% Ref : LSTM : A Search Space Odyssey (Greff et.al arxiv. 2014)

% Vanilla LSTM

% forward pass
function [zm,im,fm,cm,om,hcm,hm] = fp_lstm(X,p,nout,sl,dir_flag)

Wz = p.Wz;
Rz = p.Rz;
bz = p.bz;
Wi = p.Wi;
Ri = p.Ri;
pi = p.pi;
bi = p.bi;
Wf = p.Wf;
Rf = p.Rf;
pf = p.pf;
bf = p.bf;
Wo = p.Wo;
Ro = p.Ro;
po = p.po;
bo = p.bo;

X =  X';

Wzx = bsxfun(@plus,Wz*X,bz);
Wix = bsxfun(@plus,Wi*X,bi);
Wfx = bsxfun(@plus,Wf*X,bf);
Wox = bsxfun(@plus,Wo*X,bo);


hp = zeros(nout,1);
cp = zeros(nout,1);

zm = zeros(sl,nout);
im = zeros(sl,nout);
fm = zeros(sl,nout);
cm = zeros(sl,nout);
om = zeros(sl,nout);
hcm = zeros(sl,nout);
hm = zeros(sl,nout);

if strcmp(dir_flag,'frnn')
    ix_vec = 1:sl;
else
    ix_vec = sl:-1:1;
end

for i = ix_vec
    
    ac_zt = Wzx(:,i) + Rz*hp ;
    zt = get_actf('N',ac_zt);
    
    ac_it = Wix(:,i) + Ri*hp + pi.*cp;
    it = get_actf('sigm',ac_it);
    
    ac_ft = Wfx(:,i) + Rf*hp + pf.*cp;
    ft = get_actf('sigm',ac_ft);
    
    ct = zt.*it + cp.*ft;
    
    ac_ot = Wox(:,i) + Ro*hp + po.*ct;
    ot = get_actf('sigm',ac_ot);
    
    hct = get_actf('N',ct);
    ht = hct.*ot;
    
    hp = ht;
    cp = ct;
    
    % store all the outputs
    zm(i,:) = zt';
    im(i,:) = it';
    fm(i,:) = ft';
    cm(i,:) = ct';
    om(i,:) = ot';
    hcm(i,:) = hct';
    hm(i,:) = ht';
    
end




