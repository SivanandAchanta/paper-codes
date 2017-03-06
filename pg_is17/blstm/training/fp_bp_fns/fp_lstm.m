% Purpose : To implement forward pass of LSTMs
% Ref : LSTM : A Search Space Odyssey (Greff et.al arxiv. 2014)

% Vanilla LSTM

% forward pass
function [zm,im,fm,cm,om,hcm,hm] = fp_lstm(X,Wz,Rz,bz,Wi,Ri,pi,bi,Wf,Rf,pf,bf,Wo,Ro,po,bo,nl,sl,dir_flag)

a_tanh = 1.7159;
b_tanh = 2/3;


X =  X';

Wzx = bsxfun(@plus,Wz*X,bz);
Wix = bsxfun(@plus,Wi*X,bi);
Wfx = bsxfun(@plus,Wf*X,bf);
Wox = bsxfun(@plus,Wo*X,bo);

hp = zeros(nl(2),1);
cp = zeros(nl(2),1);

zm = zeros(sl,nl(2));
im = zeros(sl,nl(2));
fm = zeros(sl,nl(2));
cm = zeros(sl,nl(2));
om = zeros(sl,nl(2));
hcm = zeros(sl,nl(2));
hm = zeros(sl,nl(2));

if strcmp(dir_flag,'frnn')
   ix_vec = 1:sl;
else
   ix_vec = sl:-1:1;
end

for i = ix_vec
    
    ac_zt = Wzx(:,i) + Rz*hp ;
    zt = get_actf('N',ac_zt,a_tanh,b_tanh);
    
    ac_it = Wix(:,i) + Ri*hp + pi.*cp;
    it = get_actf('sigm',ac_it,a_tanh,b_tanh);
    
    ac_ft = Wfx(:,i) + Rf*hp + pf.*cp;
    ft = get_actf('sigm',ac_ft,a_tanh,b_tanh);
    
    ct = zt.*it + cp.*ft;
    
    ac_ot = Wox(:,i) + Ro*hp + po.*ct;
    ot = get_actf('sigm',ac_ot,a_tanh,b_tanh);
    
    hct = get_actf('N',ct,a_tanh,b_tanh);
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




