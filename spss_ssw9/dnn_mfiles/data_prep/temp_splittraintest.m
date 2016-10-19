% Purpose : Split data into training and testing using festival train test method
wavpath         = '../../wav/';
files = dir(wavpath);
ivecv = [11:20:length(files)];
ivect = [11:40:length(files)];

% Setpaths for acoustic and text feature extraction
afeatpath       = '../../feats/acoustic_feats/feats_48k/';
datapath        = '../../data/';
matpath         = '../../matfiles/';
aext            = '.cmp';
text            = '.lab';
compdir         = strcat(afeatpath,'cmp/');
audio_traindir  = strcat(datapath,'train/comp_feats/');
audio_valdir    = strcat(datapath,'val/comp_feats/');
audio_testdir   = strcat(datapath,'test/comp_feats/');

htslabpath      = '../../htslab/';
uniqphnslist    = '../../etc/uniqphns.txt';
vowlist         = '../../etc/vowlist.txt';
poslist         = '../../etc/poslist.txt';
tfeatpath       = '../../feats/text_feats/';
tfeatsdir       = htslabpath;
text_traindir   = strcat(datapath,'train/htslab/');
text_valdir     = strcat(datapath,'val/htslab/');
text_testdir    = strcat(datapath,'test/htslab/');

mkdir(text_traindir);
mkdir(text_valdir);
mkdir(text_testdir);

for i = 3:length(files)
    
    [fname,tok] = strtok(files(i).name,'.');
    fprintf('processing utt %s for splitting data into train/test/val \n',fname);
    
    if isempty(find(ivecv == i, 1))
        if ( exist(strcat(compdir,fname,aext), 'file') && exist(strcat(tfeatsdir,fname,text), 'file') )
%             command = ['cp', ' ',strcat(compdir,fname,aext), ' ', strcat(audio_traindir,fname,aext)];
%             system(command);
            command = ['cp', ' ',strcat(tfeatsdir,fname,text), ' ', strcat(text_traindir,fname,text)];
            system(command);
        end
    else if isempty(find(ivect == i, 1))
            if ( exist(strcat(compdir,fname,aext), 'file') && exist(strcat(tfeatsdir,fname,text), 'file') )
%                 command = ['cp', ' ',strcat(compdir,fname,aext), ' ', strcat(audio_valdir,fname,aext)];
%                 system(command);
                command = ['cp', ' ',strcat(tfeatsdir,fname,text), ' ', strcat(text_valdir,fname,text)];
                system(command);
            end
        else
            if ( exist(strcat(compdir,fname,aext), 'file') && exist(strcat(tfeatsdir,fname,text), 'file') )
%                 command = ['cp', ' ',strcat(compdir,fname,aext), ' ', strcat(audio_testdir,fname,aext)];
%                 system(command);
                command = ['cp', ' ',strcat(tfeatsdir,fname,text), ' ', strcat(text_testdir,fname,text)];
                system(command);
            end
        end
    end
    
end
