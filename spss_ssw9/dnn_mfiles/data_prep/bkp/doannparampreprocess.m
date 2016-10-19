function [] = doannparampreprocess(sf)
sf = str2num(sf);

ippath = '../data/unitwise/tfeats/';
oppath = '../data/unitwise/lmax/';
files = dir(ippath);

nepochs='60';
mf='0.3';
l1='2';
l2='1';
l4='512N';
l5='L';
tmvnf='1';
issflag='1';
ossflag='1';
hflag='1';
nump = 8;
%sched = findResource();
%sched.NumWorkers = nump;
%set(job, 'MaximumNumberOfWokers', nump);
%set (findResource(), 'ClusterSize', nump)
matlabpool(nump)

parfor i = (3+(sf-1)*nump):(2+sf*nump)
	disp(files(i).name)
	[filename,ext] = strtok(files(i).name,'.');
	ipfile=strcat(ippath,files(i).name);
	opfile=strcat(oppath,filename,'.lmax');
	dirname=strcat('nets/',filename,'/');
	annparam_preprocessing(l1,l2,l4,l5,ipfile,opfile,dirname,nepochs,mf,tmvnf,issflag,ossflag,hflag);
end

matlabpool close


