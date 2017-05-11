
% Set the input output dimensions and the normalization flags
if strcmp(feat_name,'mgc')
   outvec = [1:150];
elseif strcmp(feat_name,'f0')
   outvec = [232:235];
elseif strcmp(feat_name,'bap')
   outvec = [151:228];
elseif strcmp(feat_name,'cmp')
   outvec = [1:235];
end

switch lang_name
case 'tel'
invec = [1:347];
mvnivec = [303:339 343:347];
case 'tam'
invec = [1:277];
mvnivec = [233:269 273:277];
case 'hin'
invec = [1:364];
mvnivec = [320:356 360:364];
end

if strcmp(in_nml_meth,'mvni')
    intmvnf = 1;
    intmmnf = 0;
elseif strcmp(in_nml_meth,'mmni')
    intmvnf = 0;
    intmmnf = 1;
else
    intmvnf = 0;
    intmmnf = 0;
end

if strcmp(out_nml_meth,'mvno')
    outtmvnf = 1;
    outtmmnf = 0;
elseif strcmp(out_nml_meth,'mmno')
    outtmvnf = 0;
    outtmmnf = 1;
else
    outtmvnf = 0;
    outtmmnf = 0;
end
