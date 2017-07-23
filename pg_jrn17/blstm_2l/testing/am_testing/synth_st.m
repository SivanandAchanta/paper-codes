function [sy_stght] = synth_st(f01,M1_mlpg,ap1,fs,prm,spssynthdir,str,sufstr)

[sy_stght,prmS] = exstraightsynth(f01',M1_mlpg,ap1,fs,prm);
sy_stght=sy_stght./(1.01*max(abs(sy_stght)));
%soundsc(diff(sy_stght),fs)
audiowrite(strcat(spssynthdir,str,sufstr),sy_stght,fs);

end
