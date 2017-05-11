% Purpose : To implement forward pass of LSTMs
% Ref : INVESTIGATING GATED RECURRENT NETWORKS FOR SPEECH SYNTHESIS -
% ZhiZheng Wu and Simon King

% Vanilla LSTM

% forward pass
function [fm,zm,cm,hm,ym] = fp_lstm(X,Wz,Rz,bz,Wf,Rf,bf,Wc,Rc,bc,nl,sl,ff,U,bu)

a_tanh = 1.7159;
b_tanh = 2/3;

is_o = bu;
X =  X';

Wfx = bsxfun(@plus,Wf*X,bf);
Wzx = bsxfun(@plus,Wz*X,bz);
Wcx = bsxfun(@plus,Wc*X,bc);

hp = zeros(nl(2),1);

fm = zeros(sl,nl(2));
zm = zeros(sl,nl(2));
cm = zeros(sl,nl(2));
hm = zeros(sl,nl(2));

for i = 1:sl
    
    ac_ft = Wfx(:,i) + Rf*hp;
    ft = get_actf('sigm',ac_ft,a_tanh,b_tanh);
    
    ac_zt = Wzx(:,i) + Rz*hp ;
    zt = get_actf('sigm',ac_zt,a_tanh,b_tanh);
    
    ac_hut = Wcx(:,i) + ft.*(Rc*hp);
    hut = get_actf('N',ac_hut,a_tanh,b_tanh);
    
    ht = zt.*hp + (1-zt).*hut;
    
    hp = ht;
    
    % store all the outputs
    fm(i,:) = ft';
    zm(i,:) = zt';
    cm(i,:) = hut';
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


