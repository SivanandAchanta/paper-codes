function [] = write_objscores(resdir,wtfile_name,numbats,objscores,testfiles)

fid = fopen(strcat(resdir,'objscores','_',wtfile_name,'.txt'),'w');
for i = 1:numbats
    [str,tok] = strtok(testfiles(i).name,'.');
    fprintf(fid,'%s %f %f %f %f \n',str,objscores(i,:));
end

mobj = mean(objscores(1:numbats,:));
mmcd = mobj(1);
mbap = mobj(2);
mf0 = mobj(3);
mvuv = mobj(4);
fprintf(fid,'%s %s %0.2f %s %0.2f %s %0.2f %s %0.2f \n','mean','&',mmcd,'&',mf0,'&',mvuv,'&',mbap);
fclose(fid);
