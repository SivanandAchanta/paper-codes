% Purpose : Split data into training and testing using festival train test method

files = dir(wavpath);
ivecv = [11:20:length(files)];
ivect = [11:40:length(files)];

for i = 3:length(files)
    
    [fname,tok] = strtok(files(i).name,'.');
    fprintf('processing utt %s for splitting data into train/test/val \n',fname);
    
    if isempty(find(ivecv == i, 1))
        if ( exist(strcat(compdir,fname,aext), 'file') && exist(strcat(tfeatsdir,fname,text), 'file') )
            command = ['cp', ' ',strcat(compdir,fname,aext), ' ', strcat(audio_traindir,fname,aext)];
            system(command);
            command = ['cp', ' ',strcat(tfeatsdir,fname,text), ' ', strcat(text_traindir,fname,text)];
            system(command);
        end
    else if isempty(find(ivect == i, 1))
            if ( exist(strcat(compdir,fname,aext), 'file') && exist(strcat(tfeatsdir,fname,text), 'file') )
                command = ['cp', ' ',strcat(compdir,fname,aext), ' ', strcat(audio_valdir,fname,aext)];
                system(command);
                command = ['cp', ' ',strcat(tfeatsdir,fname,text), ' ', strcat(text_valdir,fname,text)];
                system(command);
            end
        else
            if ( exist(strcat(compdir,fname,aext), 'file') && exist(strcat(tfeatsdir,fname,text), 'file') )
                command = ['cp', ' ',strcat(compdir,fname,aext), ' ', strcat(audio_testdir,fname,aext)];
                system(command);
                command = ['cp', ' ',strcat(tfeatsdir,fname,text), ' ', strcat(text_testdir,fname,text)];
                system(command);
            end
        end
    end
    
end
