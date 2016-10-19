function[] = unique_syls(labpath,syllist_file)

% Purpose : Generte a list of unique syllables given label files
% Input : 1) labpath - label files path
%         2) syllist_file - file into which unique syllables have to be written


% clear all; close all; clc;

% read the label files directory
files = dir(labpath);

% open the unique syllbles file for writing
op1 = fopen(syllist_file,'w');



for i = 3:length(files)
    files(i).name
    % read label file for an utterance
    fid = fopen(strcat(labpath,files(i).name));
    fgetl(fid); % remove the first line from the label file which is usually hash
    M = textscan(fid,'%f %d %s'); % [end time stamp, id, syllable];
    fclose(fid);
    if i == 3
        syls = unique(M{3});
    else
        temp_syls = [syls;M{3}];
        syls = unique(temp_syls);
    end
    
end

for i = 1:length(syls)
    fprintf(op1,'%s \n',syls{i});
end

fclose(op1);




