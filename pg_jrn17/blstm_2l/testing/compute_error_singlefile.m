function [me,ym,Y] = compute_error_singlefile(data,targets,clv,numbats,li,p_f_1,p_lf_1,p_lb_1,p_lf_2,p_lb_2,p_f_2,f,nl,cfn,switch_spk_flag,switch_lan_flag,switch_gen_flag,spix,lanix)

gpu_flag = 0;

[X,Y,sl] = get_XY_seqver(data, targets, clv, (1:numbats), li, gpu_flag);


% if switch_spk_flag && switch_lan_flag
%     spix
%
%     spk_vec = zeros(size(X,1),24);
%     lan_vec = zeros(size(X,1),12);
%     gen_vec = zeros(size(X,1),2);
%
%     spk_vec(:,spix) = 1;
%     lan_vec(:,lanix) = 1;
%
%     if mod(spix,2) == 0
%         gen_vec(:,2) = 1;
%     else
%         gen_vec(:,1) = 1;
%     end
%
%     X = [X(:,1:end-38) spk_vec lan_vec gen_vec];
%
% elseif switch_spk_flag
%     spix
%
%     spk_vec = zeros(size(X,1),24);
%     gen_vec = zeros(size(X,1),2);
%
%     spk_vec(:,spix) = 1;
%
%     if mod(spix,2) == 0
%         gen_vec(:,2) = 1;
%     else
%         gen_vec(:,1) = 1;
%     end
%
%     X = [X(:,1:end-38) spk_vec X(:,end-13:end-2) gen_vec];
% end
%
% if switch_gen_flag
%     gen_vec = zeros(size(X,1),2);
%     ix = find(X(1,end-1:end));
%
%     if ix == 2
%         gen_vec(:,1) = 1;
%     else
%         gen_vec(:,2) = 1;
%     end
%
%     X = [X(:,1:end-2) gen_vec];
%
%
% end

fp_model

% modify X
%lang_vec_1 = zeros(sl,12); lang_vec_1(:,4) = 1;
%lang_vec_2 = zeros(sl,12); lang_vec_2(:,5) = 1;
%lang_vec_3 = zeros(sl,12); lang_vec_3(:,6) = 1;
%lang_vec_4 = zeros(sl,12); lang_vec_4(:,11) = 1;
%lang_vec_5 = zeros(sl,12); lang_vec_5(:,12) = 1;

%lang_vec = [lang_vec_1; lang_vec_2;lang_vec_3;lang_vec_4;lang_vec_5];
%X = [repmat(X(:,1:529+24),5,1) lang_vec repmat(X(:,end-1:end),5,1)];

%sl = 5*sl;
%save_mat_name = 'lang_5_utt';

%fp_model_save_outputs_each_layer


% Cost Funtion
switch cfn
    case 'nll'
        me = compute_zerooneloss(ym,Y);
    case 'ls'
        me = compute_nmlMSE(ym,Y);
end

