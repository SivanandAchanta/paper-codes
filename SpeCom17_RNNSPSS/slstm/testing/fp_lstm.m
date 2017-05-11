% Purpose : To implement forward pass of LSTMs
% Ref : INVESTIGATING GATED RECURRENT NETWORKS FOR SPEECH SYNTHESIS -
% ZhiZheng Wu and Simon King

% Vanilla LSTM

% forward pass
function [zm,fm,cm,hm,ym] = fp_lstm(X,Wz,Rz,bz,Wf,Rf,bf,nl,sl,ff,U,bu)

a_tanh = 1.7159;
b_tanh = 2/3;

is_o = bu;

X =  X';

Wzx = bsxfun(@plus,Wz*X,bz);
Wfx = bsxfun(@plus,Wf*X,bf);

hp = zeros(nl(2),1);
cp = zeros(nl(2),1);

zm = zeros(sl,nl(2));
fm = zeros(sl,nl(2));
cm = zeros(sl,nl(2));
hm = zeros(sl,nl(2));

for i = 1:sl
    
    ac_zt = Wzx(:,i) + Rz*hp ;
    zt = get_actf('N',ac_zt,a_tanh,b_tanh);
    
    ac_ft = Wfx(:,i) + Rf*hp;
    ft = get_actf('sigm',ac_ft,a_tanh,b_tanh);
    
    ct = zt.*(1-ft) + cp.*ft;
    
    ht = get_actf('N',ct,a_tanh,b_tanh);
    
    hp = ht;
    cp = ct;
    
    % store all the outputs
    zm(i,:) = zt';
    fm(i,:) = ft';
    cm(i,:) = ct';
    hm(i,:) = ht';
    
end

switch ff(2)
    case 'L'
        ac = bsxfun(@plus,U*hm',is_o)';
        ym = ac;
    case 'M'
        ac = bsxfun(@plus,U*hm',is_o)';
        ym = get_actf('M',ac,a_tanh,b_tanh);
        
end


