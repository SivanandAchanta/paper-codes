function[] = syls_durs_v2(htslabpath,syllist_file,durpath)

% Purpose : Generte a duration file for each syllable
% Input : 1) labpath      - label files path
%         2) syllist_file - list of unique syllables
%         3) durpath      - path of duration files of each syllable

% clear all; close all; clc;

% matlabpool open

% read the label files directory
% labpath = '/home/siva/Blizzard_Telugu/syl_cps/';
files = dir(htslabpath);

% open the unique syllbles file for reading the list
% syllist_file = '/home/siva/Blizzard_Telugu/syllist_cps.txt';
op1 = fopen(syllist_file,'r');
syls = textscan(op1,'%s');
fclose(op1);
syls = syls{1};

% path for writing the durations of each syllable
% durpath = '/home/siva/Blizzard_Telugu/dur/';
mkdir(durpath);

% initializations
frShift = 0.005; % 5ms

for i = 1:length(syls)
    
    syls{i}
    
    if ~strcmp(syls{i},'ssil')
        
        cnt = 0;
        
        % open the syllable duration file
        op2 = fopen(strcat(durpath,syls{i},'.dur'),'w');
        
        for j = 3:length(files)
            
            [fname,ext] = strtok(files(j).name,'.');
            %         fname
            
            % read the context label file
            fid = fopen(strcat(htslabpath,fname,'.lab'),'r');
            htscnt = 1;
            cdlab = [];
            et = [];
            st = [];
            currphn = [];
            while feof(fid) ~=1
                
                lin = fgetl(fid);
                str = lin(23:end);
                % pfeats
                [str,tok] = strtok(str,'/');
                [p1,tok] = strtok(str,'^');
                [p2,tok] = strtok(tok,'-');
                [p3,tok] = strtok(tok,'+');
                [p4,tok] = strtok(tok,'=');
                [p5,tok] = strtok(tok,'@');
                %             p1;
                %             p2 = p2(2:end);
                %             p3 = p3(2:end);
                %             p4 = p4(2:end);
                %             p5 = p5(2:end);
                
                %             p1
                %             p2
                %             p3
                %             p4
                %             p5
                % %             pause
                
                selected_outputs = regexp(lin(1:21),' ','split');
                [sti,eti] = selected_outputs{~strcmp(selected_outputs,'')};
                sti = str2double(sti);eti = str2double(eti);
                sti = sti/10^7; eti = eti/10^7;
                st(htscnt) = sti;
                et(htscnt) = eti;
                
                currphn{htscnt} = p3(2:end);
                cdlab{htscnt} = strcat(p1,p2,p3,p4,p5);
                htscnt = htscnt + 1;
                
                
            end
            fclose(fid);
            
            
            % find if the syllable is present in this utterance
            ix = find(strcmp(currphn, syls{i}));  % search for the syllable in the list
            d = []; cdphns = [];
            if ~isempty(ix)
                et = round(et(ix)/frShift);
                st = round(st(ix)/frShift);
                d = et - st;
                for k = 1:length(ix)
                    cnt = cnt + 1;
                    fprintf(op2,'%s %s %s %d %d %d \n',char(cdlab(ix(k))),files(j).name,strcat('example_',num2str(cnt)),st(k),et(k),d(k));
                end
            end
        end
        
        fclose(op2);
    end
end


% matlabpool close
end


