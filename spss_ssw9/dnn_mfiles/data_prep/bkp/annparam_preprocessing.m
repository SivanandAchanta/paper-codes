function [] = annparam_preprocessing(l1,l2,l4,l5,ipfile,opfile,dirname,nepochs,mf,tmvnf,issflag,ossflag,hflag)

% Purpose : (1) Make nn param file; (2) Add headers to data / preprocessed data (3) Set the weight file name  
tmvnf = str2num(tmvnf); disp(tmvnf);
issflag = str2num(issflag)
ossflag = str2num(ossflag)
hflag = str2num(hflag)
mkdir(dirname);

nnparamfile='nnparams.txt';
I = dlmread(ipfile);
O = dlmread(opfile);

% Input file preprocessing 
if tmvnf 
m = mean(I(:,298:303));
v = std(I(:,298:303));
I1 = bsxfun(@minus,I(:,298:303),m);
I1 = bsxfun(@rdivide,I1,v+1e-5);
I = [I(:,1:297) I1 I(:,304:306)];
save(strcat(dirname,'mvn.mat'),'m','v');
end


[~,din] = size(I);
iss = ones(1,din);
seld = [222:297 304:306];
iss(seld) = 0;
if issflag 
I = I(:,(iss~=0));
end



[~,dout] = size(O);
oss = [1:dout];
% Ouput file preprocessing
if ossflag
O = O(:,oss);
end

if tmvnf || issflag || ossflag
modipfile = strcat(dirname,'modipfile.txt');
modopfile = strcat(dirname,'modopfile.txt');
dlmwrite(modipfile,I,'delimiter',' ');
dlmwrite(modopfile,O,'delimiter',' ');
else
modipfile = ipfile;
modopfile = opfile;
end

if hflag
[Nin,din] = size(I);
[Nout,dout] = size(O);
hedfile = 'h.txt';
command = ['echo',' ',num2str(Nin),' ',num2str(din),' ','>',' ',strcat(dirname,hedfile)]; system(command);
command = ['cat',' ',strcat(dirname,hedfile), ' ',modipfile, ' ', '>',' ',strcat(dirname,'modipfileh.txt')]; system(command);
command = ['echo',' ',num2str(Nout),' ',num2str(dout),' ','>',' ',strcat(dirname,hedfile)]; system(command);
command = ['cat',' ',strcat(dirname,hedfile),' ',modopfile,' ','>',' ',strcat(dirname,'modopfileh.txt')]; system(command);
command = ['rm',' ',modipfile,' ',modopfile]; system(command);
end

if Nin ~= Nout
Nin
Nout
disp('No of ex in input output mismatch');
else
disp('No of examples for training are');
Nin
end

% write input file and output file with header


%gdin = str2num(l3);
%if gdin ~= din
%gdin 
%din
%disp(' Input dimension mismatch between architecture and data');
%else
%din
%end

% make nn param file
posN = strfind(l4,'N');
posL = strfind(l4,'L');
posS = strfind(l4,'S');

posfull = sort([posN,posL,posS]);
posfull = [0 posfull];
units = '';
for i = 1:length(posfull)-1
units = strcat(units,strcat({l4(posfull(i)+1:posfull(i+1)-1)},{' '},{l4(posfull(i+1))},{' '})); 
end

command = ['echo',' ',l1,' ','>',' ',strcat(dirname,nnparamfile)]; system(command);
command = ['echo',' ',l2,' ','>>',' ',strcat(dirname,nnparamfile)]; system(command);
command = ['echo',' ',num2str(din),' ','>>',' ',strcat(dirname,nnparamfile)]; system(command);
command = ['echo',' ',units{1},' ',num2str(dout),' ',l5,' ', '>>',' ',strcat(dirname,nnparamfile)]; system(command);
command = ['echo',' ',num2str(0.01),' ','>>',' ',strcat(dirname,nnparamfile)]; system(command);

% wt file name
wtfile = strcat('wt_',num2str(din),'L',l4,num2str(dout),l5,'.txt')

% train ann
cd(dirname)
command = ['../../bin/train', ' ',nnparamfile, ' ','modipfileh.txt',' ','modopfileh.txt',' ',wtfile,' ',nepochs,' ',num2str(0),' ',mf];
system(command);

end


