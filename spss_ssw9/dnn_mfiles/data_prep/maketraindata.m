% Purpose : make train data

files = dir(text_traindir);
num_bats = ceil((length(files)-2)/numfiles_batch);
fprintf('total number of training batches %d \n',num_bats);
cmpdim = 3*(mgcdim + 1 + bapdim);

for nb = 1:num_bats
    
    fprintf('processing batch %d ...\n',nb);
    
    data = [];
    targets = [];
    clv = [];
    
    efno = (numfiles_batch*(nb)+2);
    if efno > length(files)
        efno = length(files);
    end
    
    for i = (numfiles_batch*(nb-1)+1+2):efno
        
        [str,tok] = strtok(files(i).name,'.');
        fprintf('processing utt %s for traning data \n',str);
        
        T = dlmread(strcat(text_traindir,files(i).name));
        A = dlmread(strcat(audio_traindir,str,aext));
        
%         fid1 = fopen(strcat(audio_traindir,str,'.cmp'),'r','ieee-le');
%         cmp = fread(fid1,'float');
%         nfr_cmp = length(cmp(4:end))/cmpdim;
%         A = reshape(cmp(4:end),cmpdim,nfr_cmp);
%         A = A'; 
%         lf0 = A(:,3*mgcdim+1:3*mgcdim + 3);
%         lf0(lf0==-1e10) = -10;
%         A(:,3*mgcdim+1:3*mgcdim + 3) = lf0;
%         fclose(fid1);
        
        [tN,td] = size(T);
        [aN1,ad1] = size(A);
        
        nframes = min([tN aN1]);
        
        T = T(1:nframes,:);
        A = A(1:nframes,:);
        
        
        if sum(sum(isnan(T)))
            fprintf('File %s has NaN elements in Text Feats\n',str)
        end
        
        if sum(sum(isnan(A)))
            fprintf('File %s has NaN elements in Spec Feats\n',str)
        end
        
        
        %             % find if the central frame is silence phone
        %             ixall = zeros(nframes,1);
        %             for k = 1:nframes
        %                 ixall(k) = find(T(k,cpidx));
        %             end
        %             ixint = find(ixall == silid);
        
        %             % drop 80% of the silence frames
        %             berv =  binornd(1,0.2,[size(ixint)]);
        %             ixint_80 = ixint(berv==0);
        %
        %             T(ixint_80,:) = [];
        %             A(ixint_80,:) = [];
        
        % cat data
        data = single([data;T]);
        targets = single([targets;A]);
        clv = [clv size(T,1)];
    end
    
    if sum(sum(isnan(data)))
        fprintf('There are NaN elements in data Feats\n')
        pause
        
    end
    
    if sum(sum(isnan(targets)))
        fprintf('There are NaN elements in target Feats\n')
        pause
        
    end
    
    save(strcat(matpath,'train',num2str(nb),'.mat'),'data','targets','clv','-v7.3');
end

