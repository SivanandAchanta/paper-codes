% Purpose : To implement forward pass of LSTMs
% Ref : INVESTIGATING GATED RECURRENT NETWORKS FOR SPEECH SYNTHESIS -
% ZhiZheng Wu and Simon King

% Vanilla LSTM

% forward pass
function [fm,zm,cm,hm] = fp_lstm(X,p,nout,sl,ff)


Wz = p.Wz;
Rz = p.Rz;
bz = p.bz;
Wf = p.Wf;
Rf = p.Rf;
bf = p.bf;
Wc = p.Wc;
Rc = p.Rc;
bc = p.bc;

X =  X';

Wfx = bsxfun(@plus,Wf*X,bf);
Wzx = bsxfun(@plus,Wz*X,bz);
Wcx = bsxfun(@plus,Wc*X,bc);

hp = zeros(nout,1);

fm = zeros(sl,nout);
zm = zeros(sl,nout);
cm = zeros(sl,nout);
hm = zeros(sl,nout);

for i = 1:sl
    
    ac_ft = Wfx(:,i) + Rf*hp;
    ft = get_actf('sigm',ac_ft);
    
    ac_zt = Wzx(:,i) + Rz*hp ;
    zt = get_actf('sigm',ac_zt);
    
    ac_hut = Wcx(:,i) + ft.*(Rc*hp);
    hut = get_actf('N',ac_hut);
    
    ht = zt.*hp + (1-zt).*hut;
    
    hp = ht;
    
    % store all the outputs
    fm(i,:) = ft';
    zm(i,:) = zt';
    cm(i,:) = hut';
    hm(i,:) = ht';
    
end


