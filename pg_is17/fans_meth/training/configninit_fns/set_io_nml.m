
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