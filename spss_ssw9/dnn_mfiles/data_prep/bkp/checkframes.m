function [diffvec] = checkframes(tftpath,aftpath)
% check frames in text and audio feats

%foldname = 'arctic_rms';
%tftpath = strcat('../../../../feats/text_feats/categ_dur/',foldname,'_categ_dur','/');
%aftpath = strcat('../../../../feats/acoustic_feats/logmsasb/',foldname,'_logmsasb','/');

files = dir(tftpath);
cnt = 1;
for i = 3:length(files)
    
    [str,tok] = strtok(files(i).name,'.');
    
    tf = dlmread(strcat(tftpath,str,'.feats'),' ');
    [tfN,tfd] = size(tf);
    
    cmp = dlmread(strcat(aftpath,str,'.txt'),' ');
    [afN,afd] = size(cmp);

    if (afN - tfN) > 10
        (afN - tfN)
        cnt = cnt + 1;
        fprintf('frame diff grt than 10 for %s\n',str);
    end
    
    diffvec = afN-tfN;
end

fprintf('no of files where frame diff is grt than 10 is : %d ; out of total : %d',cnt,length(files)-2)
