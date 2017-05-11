% Purpose : To implement forward pass of LSTMs
% Ref : INVESTIGATING GATED RECURRENT NETWORKS FOR SPEECH SYNTHESIS -
% ZhiZheng Wu and Simon King

% Vanilla LSTM

% forward pass
function [zm,fm,cm,hm] = fp_lstm(X,p,nout,sl,ff)

Wz = p.Wz;
Rz = p.Rz;
bz = p.bz;
Wf = p.Wf;
Rf = p.Rf;
bf = p.bf;


X =  X';

Wzx = bsxfun(@plus,Wz*X,bz);
Wfx = bsxfun(@plus,Wf*X,bf);

hp = zeros(nout,1);
cp = zeros(nout,1);

zm = zeros(sl,nout);
fm = zeros(sl,nout);
cm = zeros(sl,nout);
hm = zeros(sl,nout);

for i = 1:sl
    
    ac_zt = Wzx(:,i) + Rz*hp ;
    zt = get_actf('N',ac_zt);
    
    ac_ft = Wfx(:,i) + Rf*hp;
    ft = get_actf('sigm',ac_ft);
    
    ct = zt.*(1-ft) + cp.*ft;
    
    ht = get_actf('N',ct);
    
    hp = ht;
    cp = ct;
    
    % store all the outputs
    zm(i,:) = zt';
    fm(i,:) = ft';
    cm(i,:) = ct';
    hm(i,:) = ht';
    
end


