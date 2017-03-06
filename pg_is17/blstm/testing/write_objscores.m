function [] = write_objscores(resdir,wtfile_name,numbats,objscores,testfiles)

fid = fopen(strcat(resdir,'objscores','_',wtfile_name,'.txt'),'w');
for i = 1:numbats
    [str,tok] = strtok(testfiles(i).name,'.');
    fprintf(fid,'%s %f %f %f %f \n',str,objscores(i,:));
end
fprintf(fid,'%s %f %f %f %f \n','mean',mean(objscores(1:numbats,:)));
fclose(fid);