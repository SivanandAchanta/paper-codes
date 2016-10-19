clear all; close all; clc;

audio_featspath = '../../feats/acoustic_feats/feats_48k/cmp/';
files = dir(audio_featspath);
f0_path = '../../feats/acoustic_feats/feats_48k/f0_feats/';

mgcdim = 50;
bapdim = 26;
cmpdim = 3*(mgcdim + 1 + bapdim);

w1 = [0.5 0 -0.5];  % have to reverse than the regular HTS format becaus of the use of filter fuction for computing deltas
w2 = [1 -2 1]; % symmetric fn and hence reverse is the same as original for double deltas

f0_feats = [];

for i = 3:length(files)
    
    [str,tok] = strtok(files(i).name,'.');
    fprintf('processing utt %s for traning data \n',str);
    
    
    fid1 = fopen(strcat(audio_featspath,str,'.cmp'),'r','ieee-le');
    cmp = fread(fid1,'float');
    nfr_cmp = length(cmp(4:end))/cmpdim;
    A = reshape(cmp(4:end),cmpdim,nfr_cmp);
    A = A';
    lf0 = A(:,3*mgcdim+1:3*mgcdim + 3);
    lf0(lf0==-1e10) = -10;
    A(:,3*mgcdim+1:3*mgcdim + 3) = lf0;
    fclose(fid1);
    
    %     figure; ax(1) = subplot(411); plot(lf0);axis tight;  title('lf0 with deltas');
    
    f0 = exp(lf0(:,1));
    f0(f0<10) = 0;
    
    vuv = zeros(size(lf0(:,1)));
    vuv(lf0(:,1)~=-10) = 1;
    vuv = single(vuv);
    
    
    %         ax(2) = subplot(312); plot((1:length(f0)),f0,'b-',(1:length(f0)),vuv*max(f0),'r-');axis tight;
    
    % Linear Interpolation
    dvuv = diff(vuv);
    
    linear_f0 = f0;
    
    pzc = find(dvuv==1);
    nzc = find(dvuv==-1);
    
    if pzc(end) > nzc(end)
        nzc = [1;nzc];
    else        
        pzc = [pzc;length(f0)-1];
        nzc = [1;nzc];            
    end
    
    
        
    for j = 1:length(pzc)
        f0_temp = interp1([nzc(j) pzc(j)+1],[f0(nzc(j)) f0(pzc(j)+1)],[nzc(j):pzc(j)+1]);
        linear_f0(nzc(j):pzc(j)+1) = f0_temp;
    end
    
    %     ax(3) = subplot(313); plot(linear_f0); axis tight;
    %
    %     linkaxes([ax(2),ax(3)]);
    %
    %     pause
    
    d = deltas_hts_dellis(f0', w1);
    dd = deltas_hts_dellis(f0', w2);
    df0 = [f0 d' dd'];
    %     ax(1) = subplot(413); plot(df0);axis tight;  title('f0 with deltas');
    
    d = deltas_hts_dellis(linear_f0', w1);
    dd = deltas_hts_dellis(linear_f0', w2);
    dif0 = [linear_f0 d' dd'];
    %     ax(1) = subplot(414); plot(dif0);axis tight;  title('linearly interpolated lf0 with deltas');
    
    loglinear_f0 = linear_f0;
    loglinear_f0(loglinear_f0~=0) = log(loglinear_f0(loglinear_f0~=0));
    loglinear_f0(loglinear_f0==0) = min(loglinear_f0(loglinear_f0~=0));
    
    d = deltas_hts_dellis(loglinear_f0', w1);
    dd = deltas_hts_dellis(loglinear_f0', w2);
    dlif0 = [loglinear_f0 d' dd'];
    %     ax(1) = subplot(412); plot(dlif0);axis tight; title('log of linearly interpolated lf0 with deltas');
    
%     pause
    
    % Make f0 stream (lf0,dlf0,ddlf0,f0,df0,ddf0,if0,dif0,ddif0,lif0,dlif0,ddlif0)
    T = [lf0 df0 dif0 dlif0 vuv];
%     f0_feats = [f0_feats;T];
    dlmwrite(strcat(f0_path,str,'.f0'),T,'delimiter',' ');
    
end




