function [] = write_objscores(resdir,wtfile_name,numbats,objscores,testfiles)

fid = fopen(strcat(resdir,'objscores','_',wtfile_name,'.txt'),'w');
for i = 1:numbats
    [str,tok] = strtok(testfiles(i).name,'.');
    fprintf(fid,'%s %f %f %f %f \n',str,objscores(i,:));
end
fprintf(fid,'%s & %0.2f & %0.2f & %0.2f & %0.2f \n','mean',mean(objscores(1:numbats,1)),mean(objscores(1:numbats,3)),mean(objscores(1:numbats,4)),mean(objscores(1:numbats,2)));
fclose(fid);
