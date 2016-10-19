% Purpose: To make textual features given the UTF-8 input (Front-end Processing)

lang_name = 'Telugu';
phonesetfile = strcat('CPS_Phonesets/',lang_name,'.txt');
utf8file = 'train.done.data';
cpsfile = 'train.done.data.cps';
festvox_voicedir = 'festvox/';
voice_name = 'iiit_tel_hari';
clunits_filename = strcat(voice_name,'_clunits.scm');

%% Step 1 : UTF8 to CPS
command = ['perl', ' ', 'UTF8toIT3.pl', ' ', phonesetfile, ' ', utf8file, ' ', cpsfile, ' ', lang_name];
system(command);

%% Step 2 : CPS to Festival UTT file
clunits_fullfilename = strcat(festvox_voicedir,clunits_filename);

fid = fopen(cpsfile,'r');
line = fgetl(fid);
[str,tok] = strtok(line,'"');
uttname = str(3:end-1);
prompt = tok(3:end-4);
fclose(fid);

% create prompt2utt.scm
cmd1 = ['(set!', ' ', voice_name, '::clunits_prompting_stage', ' ', 't)'];
cmd2 = ['(voice_',voice_name,'_clunits)'];
cmd3 = ['(Parameter.set', ' ', '''Synth_Method', ' ', '''None)'];
cmd4 = ['(set!', ' ', 'utt1',' ', '(utt.synth', ' ', '(eval', ' ' '(list', ' ', '''Utterance',' ', '''Text', ' ','" ',prompt,' "','))))'];
cmd5 = ['(utt.save', ' ', 'utt1', ' ', '(format', ' ', 'nil', ' ', '"utts/',uttname,'.utt"','))'];

fid = fopen('prompt2utt.scm','w');
fprintf(fid, '%s\n',cmd1);
fprintf(fid, '%s\n',cmd2);
fprintf(fid, '%s\n',cmd3);
fprintf(fid, '%s\n',cmd4);
fprintf(fid, '%s',cmd5);
fclose(fid);

command = ['festival',' ', '-b',' ', clunits_fullfilename, ' ', 'prompt2utt.scm'];
system(command);

%% Step 3 : Festival UTT file to HTS Full Context Label file (HTS-FCL)
command = ['sh', ' ', 'make_htsfcl.sh', ' ', uttname];
system(command);





