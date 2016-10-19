% Purpose : To determine the best VUV threshold using training data

read_traindata

%% NN param initialization
a_tanh = 1.7159;
b_tanh = 2/3;
bby2a = (b_tanh/(2*a_tanh));


objscores = zeros(train_numbats,1);
vuvth_utt = zeros(train_numbats,1);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
vuvth_vec       = [0.2:0.01:0.9];
vuvth_vec_orig  = [0.2:0.01:0.9];
err_vuv_mat     = zeros(train_numbats,length(vuvth_vec));
trainerr_f0vuv  = 0;

% compute error on test set
for li = 1:train_numbats
    li
    % Step 1 : Predict parameters form the network
    X = []; mt_f0vuv = [];
    sl = train_clv(li+1) - train_clv(li);
    X = double(train_batchdata(train_clv(li):train_clv(li+1)-1,:));
    Y = double(train_batchtargets(train_clv(li):train_clv(li+1)-1,:));
    
    %% fp
    X1 = [];
    bs = sl;
    [hcm,ym_rnn] = fp_rnn((X(:,101:end)),Wi,Wfr,U,bh,bo,f_rnn,nl_rnn,a_tanh,b_tanh,bs);
    % mean variance normalization of hcm
    if hmvnf ; hcm = bsxfun(@minus,hcm,mh);         hcm = bsxfun(@rdivide,hcm,vh); end;
    X1 = [X hcm];
    
    % fp
    [ol] = fpav_cpu(X1,W_f0,b_f0,nl_f0,f_f0,nh_f0,a_tanh,b_tanh,wtl_f0,btl_f0,sl);
    
    % % test set variables
    ottl = [1 sl*(nl_f0(nlv_f0+1))];
    ottl = cumsum(ottl);
    
    ym_f0vuv = reshape(ol(1,ottl(end-1):ottl(end)-1),sl,nl_f0(end));
    clear ol;
    mt_f0vuv = Y(:,outvec_f0);
    
    
    %% compute error
    me = mean(sum((mt_f0vuv - ym_f0vuv).^2,2)./(sum(mt_f0vuv.^2,2)));
    trainerr_f0vuv = trainerr_f0vuv + me/(train_numbats);
    
    pf0vuv_deltas = denormalize(ym_f0vuv,mo,vo,maxv,minv,outvec_f0,outtmvnf,outtmmnf);
    gf0vuv_deltas = denormalize(mt_f0vuv,mo,vo,maxv,minv,outvec_f0,outtmvnf,outtmmnf);
    
    % Compute VUV (% error)
    pvuv = pf0vuv_deltas(:,1); % for error computation
    gvuv = gf0vuv_deltas(:,1);
    gvuv(gvuv<0.2) = 0;
    gvuv(gvuv>=0.2) = 1;
    
    len_gf0 = length(gvuv);
    len_pf0 = length(pvuv);
    
    if len_gf0 > len_pf0
        gvuv = gvuv(1:len_pf0);
    else
        pvuv = pvuv(1:len_gf0);
    end
    
    err_vuv = zeros(length(vuvth_vec),1);
    for j = 1:length(vuvth_vec)
        vuvth = vuvth_vec(j);
        pvuv_final = zeros(size(pvuv));
        pvuv_final(pvuv > vuvth) = 1;
        err_vuv(j) = ((sum(abs(pvuv_final - gvuv))/length(gvuv))*100);
        err_vuv_mat(li,j) = ((sum(abs(pvuv_final - gvuv))/length(gvuv))*100);
    end
    
    [minval,minix] = min(err_vuv);
    err_vuv_min = minval;
    
    % store the objective scores and thresholds
    objscores(li,1) = err_vuv_min;
    vuvth_utt(li) = vuvth_vec(minix);
    
    
end

if f0vuvp_flag
    trainerr_f0vuv
end

err_vuv_mean = mean(err_vuv_mat);
[minval,minix] = min(err_vuv_mean);
vuvth_final = vuvth_vec_orig(minix)

clear train_batchdata train_batchtargets
