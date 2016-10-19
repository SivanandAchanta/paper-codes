path(path,'/media/newHDD/hts_voices/STRAIGHTV40');
prm.F0frameUpdateInterval=5;
prm.F0searchUpperBound=580;
prm.F0searchLowerBound=60;
prm.spectralUpdateInterval=5;

fprintf(1,'Processing wav/tel_0001.wav\n');
[x,fs]=wavread('wav/tel_0001.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0001.f0' f0 -ascii;
save 'ap/tel_0001.ap' ap -ascii;
save 'sp/tel_0001.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0002.wav\n');
[x,fs]=wavread('wav/tel_0002.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0002.f0' f0 -ascii;
save 'ap/tel_0002.ap' ap -ascii;
save 'sp/tel_0002.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0003.wav\n');
[x,fs]=wavread('wav/tel_0003.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0003.f0' f0 -ascii;
save 'ap/tel_0003.ap' ap -ascii;
save 'sp/tel_0003.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0004.wav\n');
[x,fs]=wavread('wav/tel_0004.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0004.f0' f0 -ascii;
save 'ap/tel_0004.ap' ap -ascii;
save 'sp/tel_0004.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0005.wav\n');
[x,fs]=wavread('wav/tel_0005.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0005.f0' f0 -ascii;
save 'ap/tel_0005.ap' ap -ascii;
save 'sp/tel_0005.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0006.wav\n');
[x,fs]=wavread('wav/tel_0006.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0006.f0' f0 -ascii;
save 'ap/tel_0006.ap' ap -ascii;
save 'sp/tel_0006.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0007.wav\n');
[x,fs]=wavread('wav/tel_0007.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0007.f0' f0 -ascii;
save 'ap/tel_0007.ap' ap -ascii;
save 'sp/tel_0007.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0008.wav\n');
[x,fs]=wavread('wav/tel_0008.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0008.f0' f0 -ascii;
save 'ap/tel_0008.ap' ap -ascii;
save 'sp/tel_0008.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0009.wav\n');
[x,fs]=wavread('wav/tel_0009.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0009.f0' f0 -ascii;
save 'ap/tel_0009.ap' ap -ascii;
save 'sp/tel_0009.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0010.wav\n');
[x,fs]=wavread('wav/tel_0010.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0010.f0' f0 -ascii;
save 'ap/tel_0010.ap' ap -ascii;
save 'sp/tel_0010.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0011.wav\n');
[x,fs]=wavread('wav/tel_0011.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0011.f0' f0 -ascii;
save 'ap/tel_0011.ap' ap -ascii;
save 'sp/tel_0011.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0012.wav\n');
[x,fs]=wavread('wav/tel_0012.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0012.f0' f0 -ascii;
save 'ap/tel_0012.ap' ap -ascii;
save 'sp/tel_0012.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0013.wav\n');
[x,fs]=wavread('wav/tel_0013.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0013.f0' f0 -ascii;
save 'ap/tel_0013.ap' ap -ascii;
save 'sp/tel_0013.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0014.wav\n');
[x,fs]=wavread('wav/tel_0014.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0014.f0' f0 -ascii;
save 'ap/tel_0014.ap' ap -ascii;
save 'sp/tel_0014.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0015.wav\n');
[x,fs]=wavread('wav/tel_0015.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0015.f0' f0 -ascii;
save 'ap/tel_0015.ap' ap -ascii;
save 'sp/tel_0015.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0016.wav\n');
[x,fs]=wavread('wav/tel_0016.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0016.f0' f0 -ascii;
save 'ap/tel_0016.ap' ap -ascii;
save 'sp/tel_0016.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0017.wav\n');
[x,fs]=wavread('wav/tel_0017.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0017.f0' f0 -ascii;
save 'ap/tel_0017.ap' ap -ascii;
save 'sp/tel_0017.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0018.wav\n');
[x,fs]=wavread('wav/tel_0018.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0018.f0' f0 -ascii;
save 'ap/tel_0018.ap' ap -ascii;
save 'sp/tel_0018.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0019.wav\n');
[x,fs]=wavread('wav/tel_0019.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0019.f0' f0 -ascii;
save 'ap/tel_0019.ap' ap -ascii;
save 'sp/tel_0019.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0020.wav\n');
[x,fs]=wavread('wav/tel_0020.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0020.f0' f0 -ascii;
save 'ap/tel_0020.ap' ap -ascii;
save 'sp/tel_0020.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0021.wav\n');
[x,fs]=wavread('wav/tel_0021.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0021.f0' f0 -ascii;
save 'ap/tel_0021.ap' ap -ascii;
save 'sp/tel_0021.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0022.wav\n');
[x,fs]=wavread('wav/tel_0022.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0022.f0' f0 -ascii;
save 'ap/tel_0022.ap' ap -ascii;
save 'sp/tel_0022.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0023.wav\n');
[x,fs]=wavread('wav/tel_0023.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0023.f0' f0 -ascii;
save 'ap/tel_0023.ap' ap -ascii;
save 'sp/tel_0023.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0024.wav\n');
[x,fs]=wavread('wav/tel_0024.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0024.f0' f0 -ascii;
save 'ap/tel_0024.ap' ap -ascii;
save 'sp/tel_0024.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0025.wav\n');
[x,fs]=wavread('wav/tel_0025.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0025.f0' f0 -ascii;
save 'ap/tel_0025.ap' ap -ascii;
save 'sp/tel_0025.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0026.wav\n');
[x,fs]=wavread('wav/tel_0026.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0026.f0' f0 -ascii;
save 'ap/tel_0026.ap' ap -ascii;
save 'sp/tel_0026.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0027.wav\n');
[x,fs]=wavread('wav/tel_0027.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0027.f0' f0 -ascii;
save 'ap/tel_0027.ap' ap -ascii;
save 'sp/tel_0027.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0028.wav\n');
[x,fs]=wavread('wav/tel_0028.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0028.f0' f0 -ascii;
save 'ap/tel_0028.ap' ap -ascii;
save 'sp/tel_0028.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0029.wav\n');
[x,fs]=wavread('wav/tel_0029.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0029.f0' f0 -ascii;
save 'ap/tel_0029.ap' ap -ascii;
save 'sp/tel_0029.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0030.wav\n');
[x,fs]=wavread('wav/tel_0030.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0030.f0' f0 -ascii;
save 'ap/tel_0030.ap' ap -ascii;
save 'sp/tel_0030.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0031.wav\n');
[x,fs]=wavread('wav/tel_0031.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0031.f0' f0 -ascii;
save 'ap/tel_0031.ap' ap -ascii;
save 'sp/tel_0031.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0032.wav\n');
[x,fs]=wavread('wav/tel_0032.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0032.f0' f0 -ascii;
save 'ap/tel_0032.ap' ap -ascii;
save 'sp/tel_0032.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0033.wav\n');
[x,fs]=wavread('wav/tel_0033.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0033.f0' f0 -ascii;
save 'ap/tel_0033.ap' ap -ascii;
save 'sp/tel_0033.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0034.wav\n');
[x,fs]=wavread('wav/tel_0034.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0034.f0' f0 -ascii;
save 'ap/tel_0034.ap' ap -ascii;
save 'sp/tel_0034.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0035.wav\n');
[x,fs]=wavread('wav/tel_0035.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0035.f0' f0 -ascii;
save 'ap/tel_0035.ap' ap -ascii;
save 'sp/tel_0035.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0036.wav\n');
[x,fs]=wavread('wav/tel_0036.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0036.f0' f0 -ascii;
save 'ap/tel_0036.ap' ap -ascii;
save 'sp/tel_0036.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0037.wav\n');
[x,fs]=wavread('wav/tel_0037.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0037.f0' f0 -ascii;
save 'ap/tel_0037.ap' ap -ascii;
save 'sp/tel_0037.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0038.wav\n');
[x,fs]=wavread('wav/tel_0038.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0038.f0' f0 -ascii;
save 'ap/tel_0038.ap' ap -ascii;
save 'sp/tel_0038.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0039.wav\n');
[x,fs]=wavread('wav/tel_0039.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0039.f0' f0 -ascii;
save 'ap/tel_0039.ap' ap -ascii;
save 'sp/tel_0039.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0040.wav\n');
[x,fs]=wavread('wav/tel_0040.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0040.f0' f0 -ascii;
save 'ap/tel_0040.ap' ap -ascii;
save 'sp/tel_0040.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0041.wav\n');
[x,fs]=wavread('wav/tel_0041.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0041.f0' f0 -ascii;
save 'ap/tel_0041.ap' ap -ascii;
save 'sp/tel_0041.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0042.wav\n');
[x,fs]=wavread('wav/tel_0042.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0042.f0' f0 -ascii;
save 'ap/tel_0042.ap' ap -ascii;
save 'sp/tel_0042.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0043.wav\n');
[x,fs]=wavread('wav/tel_0043.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0043.f0' f0 -ascii;
save 'ap/tel_0043.ap' ap -ascii;
save 'sp/tel_0043.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0044.wav\n');
[x,fs]=wavread('wav/tel_0044.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0044.f0' f0 -ascii;
save 'ap/tel_0044.ap' ap -ascii;
save 'sp/tel_0044.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0045.wav\n');
[x,fs]=wavread('wav/tel_0045.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0045.f0' f0 -ascii;
save 'ap/tel_0045.ap' ap -ascii;
save 'sp/tel_0045.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0046.wav\n');
[x,fs]=wavread('wav/tel_0046.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0046.f0' f0 -ascii;
save 'ap/tel_0046.ap' ap -ascii;
save 'sp/tel_0046.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0047.wav\n');
[x,fs]=wavread('wav/tel_0047.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0047.f0' f0 -ascii;
save 'ap/tel_0047.ap' ap -ascii;
save 'sp/tel_0047.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0048.wav\n');
[x,fs]=wavread('wav/tel_0048.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0048.f0' f0 -ascii;
save 'ap/tel_0048.ap' ap -ascii;
save 'sp/tel_0048.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0049.wav\n');
[x,fs]=wavread('wav/tel_0049.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0049.f0' f0 -ascii;
save 'ap/tel_0049.ap' ap -ascii;
save 'sp/tel_0049.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0050.wav\n');
[x,fs]=wavread('wav/tel_0050.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0050.f0' f0 -ascii;
save 'ap/tel_0050.ap' ap -ascii;
save 'sp/tel_0050.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0051.wav\n');
[x,fs]=wavread('wav/tel_0051.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0051.f0' f0 -ascii;
save 'ap/tel_0051.ap' ap -ascii;
save 'sp/tel_0051.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0052.wav\n');
[x,fs]=wavread('wav/tel_0052.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0052.f0' f0 -ascii;
save 'ap/tel_0052.ap' ap -ascii;
save 'sp/tel_0052.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0053.wav\n');
[x,fs]=wavread('wav/tel_0053.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0053.f0' f0 -ascii;
save 'ap/tel_0053.ap' ap -ascii;
save 'sp/tel_0053.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0054.wav\n');
[x,fs]=wavread('wav/tel_0054.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0054.f0' f0 -ascii;
save 'ap/tel_0054.ap' ap -ascii;
save 'sp/tel_0054.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0055.wav\n');
[x,fs]=wavread('wav/tel_0055.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0055.f0' f0 -ascii;
save 'ap/tel_0055.ap' ap -ascii;
save 'sp/tel_0055.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0056.wav\n');
[x,fs]=wavread('wav/tel_0056.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0056.f0' f0 -ascii;
save 'ap/tel_0056.ap' ap -ascii;
save 'sp/tel_0056.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0057.wav\n');
[x,fs]=wavread('wav/tel_0057.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0057.f0' f0 -ascii;
save 'ap/tel_0057.ap' ap -ascii;
save 'sp/tel_0057.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0058.wav\n');
[x,fs]=wavread('wav/tel_0058.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0058.f0' f0 -ascii;
save 'ap/tel_0058.ap' ap -ascii;
save 'sp/tel_0058.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0059.wav\n');
[x,fs]=wavread('wav/tel_0059.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0059.f0' f0 -ascii;
save 'ap/tel_0059.ap' ap -ascii;
save 'sp/tel_0059.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0060.wav\n');
[x,fs]=wavread('wav/tel_0060.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0060.f0' f0 -ascii;
save 'ap/tel_0060.ap' ap -ascii;
save 'sp/tel_0060.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0061.wav\n');
[x,fs]=wavread('wav/tel_0061.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0061.f0' f0 -ascii;
save 'ap/tel_0061.ap' ap -ascii;
save 'sp/tel_0061.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0062.wav\n');
[x,fs]=wavread('wav/tel_0062.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0062.f0' f0 -ascii;
save 'ap/tel_0062.ap' ap -ascii;
save 'sp/tel_0062.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0063.wav\n');
[x,fs]=wavread('wav/tel_0063.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0063.f0' f0 -ascii;
save 'ap/tel_0063.ap' ap -ascii;
save 'sp/tel_0063.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0064.wav\n');
[x,fs]=wavread('wav/tel_0064.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0064.f0' f0 -ascii;
save 'ap/tel_0064.ap' ap -ascii;
save 'sp/tel_0064.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0065.wav\n');
[x,fs]=wavread('wav/tel_0065.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0065.f0' f0 -ascii;
save 'ap/tel_0065.ap' ap -ascii;
save 'sp/tel_0065.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0066.wav\n');
[x,fs]=wavread('wav/tel_0066.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0066.f0' f0 -ascii;
save 'ap/tel_0066.ap' ap -ascii;
save 'sp/tel_0066.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0067.wav\n');
[x,fs]=wavread('wav/tel_0067.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0067.f0' f0 -ascii;
save 'ap/tel_0067.ap' ap -ascii;
save 'sp/tel_0067.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0068.wav\n');
[x,fs]=wavread('wav/tel_0068.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0068.f0' f0 -ascii;
save 'ap/tel_0068.ap' ap -ascii;
save 'sp/tel_0068.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0069.wav\n');
[x,fs]=wavread('wav/tel_0069.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0069.f0' f0 -ascii;
save 'ap/tel_0069.ap' ap -ascii;
save 'sp/tel_0069.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0070.wav\n');
[x,fs]=wavread('wav/tel_0070.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0070.f0' f0 -ascii;
save 'ap/tel_0070.ap' ap -ascii;
save 'sp/tel_0070.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0071.wav\n');
[x,fs]=wavread('wav/tel_0071.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0071.f0' f0 -ascii;
save 'ap/tel_0071.ap' ap -ascii;
save 'sp/tel_0071.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0072.wav\n');
[x,fs]=wavread('wav/tel_0072.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0072.f0' f0 -ascii;
save 'ap/tel_0072.ap' ap -ascii;
save 'sp/tel_0072.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0073.wav\n');
[x,fs]=wavread('wav/tel_0073.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0073.f0' f0 -ascii;
save 'ap/tel_0073.ap' ap -ascii;
save 'sp/tel_0073.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0074.wav\n');
[x,fs]=wavread('wav/tel_0074.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0074.f0' f0 -ascii;
save 'ap/tel_0074.ap' ap -ascii;
save 'sp/tel_0074.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0075.wav\n');
[x,fs]=wavread('wav/tel_0075.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0075.f0' f0 -ascii;
save 'ap/tel_0075.ap' ap -ascii;
save 'sp/tel_0075.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0076.wav\n');
[x,fs]=wavread('wav/tel_0076.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0076.f0' f0 -ascii;
save 'ap/tel_0076.ap' ap -ascii;
save 'sp/tel_0076.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0077.wav\n');
[x,fs]=wavread('wav/tel_0077.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0077.f0' f0 -ascii;
save 'ap/tel_0077.ap' ap -ascii;
save 'sp/tel_0077.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0078.wav\n');
[x,fs]=wavread('wav/tel_0078.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0078.f0' f0 -ascii;
save 'ap/tel_0078.ap' ap -ascii;
save 'sp/tel_0078.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0079.wav\n');
[x,fs]=wavread('wav/tel_0079.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0079.f0' f0 -ascii;
save 'ap/tel_0079.ap' ap -ascii;
save 'sp/tel_0079.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0080.wav\n');
[x,fs]=wavread('wav/tel_0080.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0080.f0' f0 -ascii;
save 'ap/tel_0080.ap' ap -ascii;
save 'sp/tel_0080.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0081.wav\n');
[x,fs]=wavread('wav/tel_0081.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0081.f0' f0 -ascii;
save 'ap/tel_0081.ap' ap -ascii;
save 'sp/tel_0081.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0082.wav\n');
[x,fs]=wavread('wav/tel_0082.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0082.f0' f0 -ascii;
save 'ap/tel_0082.ap' ap -ascii;
save 'sp/tel_0082.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0083.wav\n');
[x,fs]=wavread('wav/tel_0083.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0083.f0' f0 -ascii;
save 'ap/tel_0083.ap' ap -ascii;
save 'sp/tel_0083.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0084.wav\n');
[x,fs]=wavread('wav/tel_0084.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0084.f0' f0 -ascii;
save 'ap/tel_0084.ap' ap -ascii;
save 'sp/tel_0084.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0085.wav\n');
[x,fs]=wavread('wav/tel_0085.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0085.f0' f0 -ascii;
save 'ap/tel_0085.ap' ap -ascii;
save 'sp/tel_0085.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0086.wav\n');
[x,fs]=wavread('wav/tel_0086.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0086.f0' f0 -ascii;
save 'ap/tel_0086.ap' ap -ascii;
save 'sp/tel_0086.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0087.wav\n');
[x,fs]=wavread('wav/tel_0087.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0087.f0' f0 -ascii;
save 'ap/tel_0087.ap' ap -ascii;
save 'sp/tel_0087.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0088.wav\n');
[x,fs]=wavread('wav/tel_0088.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0088.f0' f0 -ascii;
save 'ap/tel_0088.ap' ap -ascii;
save 'sp/tel_0088.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0089.wav\n');
[x,fs]=wavread('wav/tel_0089.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0089.f0' f0 -ascii;
save 'ap/tel_0089.ap' ap -ascii;
save 'sp/tel_0089.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0090.wav\n');
[x,fs]=wavread('wav/tel_0090.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0090.f0' f0 -ascii;
save 'ap/tel_0090.ap' ap -ascii;
save 'sp/tel_0090.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0091.wav\n');
[x,fs]=wavread('wav/tel_0091.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0091.f0' f0 -ascii;
save 'ap/tel_0091.ap' ap -ascii;
save 'sp/tel_0091.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0092.wav\n');
[x,fs]=wavread('wav/tel_0092.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0092.f0' f0 -ascii;
save 'ap/tel_0092.ap' ap -ascii;
save 'sp/tel_0092.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0093.wav\n');
[x,fs]=wavread('wav/tel_0093.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0093.f0' f0 -ascii;
save 'ap/tel_0093.ap' ap -ascii;
save 'sp/tel_0093.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0094.wav\n');
[x,fs]=wavread('wav/tel_0094.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0094.f0' f0 -ascii;
save 'ap/tel_0094.ap' ap -ascii;
save 'sp/tel_0094.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0095.wav\n');
[x,fs]=wavread('wav/tel_0095.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0095.f0' f0 -ascii;
save 'ap/tel_0095.ap' ap -ascii;
save 'sp/tel_0095.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0096.wav\n');
[x,fs]=wavread('wav/tel_0096.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0096.f0' f0 -ascii;
save 'ap/tel_0096.ap' ap -ascii;
save 'sp/tel_0096.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0097.wav\n');
[x,fs]=wavread('wav/tel_0097.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0097.f0' f0 -ascii;
save 'ap/tel_0097.ap' ap -ascii;
save 'sp/tel_0097.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0098.wav\n');
[x,fs]=wavread('wav/tel_0098.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0098.f0' f0 -ascii;
save 'ap/tel_0098.ap' ap -ascii;
save 'sp/tel_0098.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0099.wav\n');
[x,fs]=wavread('wav/tel_0099.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0099.f0' f0 -ascii;
save 'ap/tel_0099.ap' ap -ascii;
save 'sp/tel_0099.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0100.wav\n');
[x,fs]=wavread('wav/tel_0100.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0100.f0' f0 -ascii;
save 'ap/tel_0100.ap' ap -ascii;
save 'sp/tel_0100.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0101.wav\n');
[x,fs]=wavread('wav/tel_0101.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0101.f0' f0 -ascii;
save 'ap/tel_0101.ap' ap -ascii;
save 'sp/tel_0101.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0102.wav\n');
[x,fs]=wavread('wav/tel_0102.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0102.f0' f0 -ascii;
save 'ap/tel_0102.ap' ap -ascii;
save 'sp/tel_0102.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0103.wav\n');
[x,fs]=wavread('wav/tel_0103.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0103.f0' f0 -ascii;
save 'ap/tel_0103.ap' ap -ascii;
save 'sp/tel_0103.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0104.wav\n');
[x,fs]=wavread('wav/tel_0104.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0104.f0' f0 -ascii;
save 'ap/tel_0104.ap' ap -ascii;
save 'sp/tel_0104.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0105.wav\n');
[x,fs]=wavread('wav/tel_0105.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0105.f0' f0 -ascii;
save 'ap/tel_0105.ap' ap -ascii;
save 'sp/tel_0105.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0106.wav\n');
[x,fs]=wavread('wav/tel_0106.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0106.f0' f0 -ascii;
save 'ap/tel_0106.ap' ap -ascii;
save 'sp/tel_0106.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0107.wav\n');
[x,fs]=wavread('wav/tel_0107.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0107.f0' f0 -ascii;
save 'ap/tel_0107.ap' ap -ascii;
save 'sp/tel_0107.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0108.wav\n');
[x,fs]=wavread('wav/tel_0108.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0108.f0' f0 -ascii;
save 'ap/tel_0108.ap' ap -ascii;
save 'sp/tel_0108.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0109.wav\n');
[x,fs]=wavread('wav/tel_0109.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0109.f0' f0 -ascii;
save 'ap/tel_0109.ap' ap -ascii;
save 'sp/tel_0109.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0110.wav\n');
[x,fs]=wavread('wav/tel_0110.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0110.f0' f0 -ascii;
save 'ap/tel_0110.ap' ap -ascii;
save 'sp/tel_0110.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0111.wav\n');
[x,fs]=wavread('wav/tel_0111.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0111.f0' f0 -ascii;
save 'ap/tel_0111.ap' ap -ascii;
save 'sp/tel_0111.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0112.wav\n');
[x,fs]=wavread('wav/tel_0112.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0112.f0' f0 -ascii;
save 'ap/tel_0112.ap' ap -ascii;
save 'sp/tel_0112.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0113.wav\n');
[x,fs]=wavread('wav/tel_0113.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0113.f0' f0 -ascii;
save 'ap/tel_0113.ap' ap -ascii;
save 'sp/tel_0113.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0114.wav\n');
[x,fs]=wavread('wav/tel_0114.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0114.f0' f0 -ascii;
save 'ap/tel_0114.ap' ap -ascii;
save 'sp/tel_0114.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0115.wav\n');
[x,fs]=wavread('wav/tel_0115.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0115.f0' f0 -ascii;
save 'ap/tel_0115.ap' ap -ascii;
save 'sp/tel_0115.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0116.wav\n');
[x,fs]=wavread('wav/tel_0116.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0116.f0' f0 -ascii;
save 'ap/tel_0116.ap' ap -ascii;
save 'sp/tel_0116.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0117.wav\n');
[x,fs]=wavread('wav/tel_0117.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0117.f0' f0 -ascii;
save 'ap/tel_0117.ap' ap -ascii;
save 'sp/tel_0117.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0118.wav\n');
[x,fs]=wavread('wav/tel_0118.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0118.f0' f0 -ascii;
save 'ap/tel_0118.ap' ap -ascii;
save 'sp/tel_0118.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0119.wav\n');
[x,fs]=wavread('wav/tel_0119.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0119.f0' f0 -ascii;
save 'ap/tel_0119.ap' ap -ascii;
save 'sp/tel_0119.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0120.wav\n');
[x,fs]=wavread('wav/tel_0120.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0120.f0' f0 -ascii;
save 'ap/tel_0120.ap' ap -ascii;
save 'sp/tel_0120.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0121.wav\n');
[x,fs]=wavread('wav/tel_0121.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0121.f0' f0 -ascii;
save 'ap/tel_0121.ap' ap -ascii;
save 'sp/tel_0121.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0122.wav\n');
[x,fs]=wavread('wav/tel_0122.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0122.f0' f0 -ascii;
save 'ap/tel_0122.ap' ap -ascii;
save 'sp/tel_0122.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0123.wav\n');
[x,fs]=wavread('wav/tel_0123.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0123.f0' f0 -ascii;
save 'ap/tel_0123.ap' ap -ascii;
save 'sp/tel_0123.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0124.wav\n');
[x,fs]=wavread('wav/tel_0124.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0124.f0' f0 -ascii;
save 'ap/tel_0124.ap' ap -ascii;
save 'sp/tel_0124.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0125.wav\n');
[x,fs]=wavread('wav/tel_0125.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0125.f0' f0 -ascii;
save 'ap/tel_0125.ap' ap -ascii;
save 'sp/tel_0125.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0126.wav\n');
[x,fs]=wavread('wav/tel_0126.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0126.f0' f0 -ascii;
save 'ap/tel_0126.ap' ap -ascii;
save 'sp/tel_0126.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0127.wav\n');
[x,fs]=wavread('wav/tel_0127.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0127.f0' f0 -ascii;
save 'ap/tel_0127.ap' ap -ascii;
save 'sp/tel_0127.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0128.wav\n');
[x,fs]=wavread('wav/tel_0128.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0128.f0' f0 -ascii;
save 'ap/tel_0128.ap' ap -ascii;
save 'sp/tel_0128.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0129.wav\n');
[x,fs]=wavread('wav/tel_0129.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0129.f0' f0 -ascii;
save 'ap/tel_0129.ap' ap -ascii;
save 'sp/tel_0129.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0130.wav\n');
[x,fs]=wavread('wav/tel_0130.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0130.f0' f0 -ascii;
save 'ap/tel_0130.ap' ap -ascii;
save 'sp/tel_0130.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0131.wav\n');
[x,fs]=wavread('wav/tel_0131.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0131.f0' f0 -ascii;
save 'ap/tel_0131.ap' ap -ascii;
save 'sp/tel_0131.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0132.wav\n');
[x,fs]=wavread('wav/tel_0132.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0132.f0' f0 -ascii;
save 'ap/tel_0132.ap' ap -ascii;
save 'sp/tel_0132.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0133.wav\n');
[x,fs]=wavread('wav/tel_0133.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0133.f0' f0 -ascii;
save 'ap/tel_0133.ap' ap -ascii;
save 'sp/tel_0133.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0134.wav\n');
[x,fs]=wavread('wav/tel_0134.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0134.f0' f0 -ascii;
save 'ap/tel_0134.ap' ap -ascii;
save 'sp/tel_0134.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0135.wav\n');
[x,fs]=wavread('wav/tel_0135.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0135.f0' f0 -ascii;
save 'ap/tel_0135.ap' ap -ascii;
save 'sp/tel_0135.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0136.wav\n');
[x,fs]=wavread('wav/tel_0136.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0136.f0' f0 -ascii;
save 'ap/tel_0136.ap' ap -ascii;
save 'sp/tel_0136.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0137.wav\n');
[x,fs]=wavread('wav/tel_0137.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0137.f0' f0 -ascii;
save 'ap/tel_0137.ap' ap -ascii;
save 'sp/tel_0137.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0138.wav\n');
[x,fs]=wavread('wav/tel_0138.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0138.f0' f0 -ascii;
save 'ap/tel_0138.ap' ap -ascii;
save 'sp/tel_0138.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0139.wav\n');
[x,fs]=wavread('wav/tel_0139.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0139.f0' f0 -ascii;
save 'ap/tel_0139.ap' ap -ascii;
save 'sp/tel_0139.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0140.wav\n');
[x,fs]=wavread('wav/tel_0140.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0140.f0' f0 -ascii;
save 'ap/tel_0140.ap' ap -ascii;
save 'sp/tel_0140.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0141.wav\n');
[x,fs]=wavread('wav/tel_0141.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0141.f0' f0 -ascii;
save 'ap/tel_0141.ap' ap -ascii;
save 'sp/tel_0141.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0142.wav\n');
[x,fs]=wavread('wav/tel_0142.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0142.f0' f0 -ascii;
save 'ap/tel_0142.ap' ap -ascii;
save 'sp/tel_0142.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0143.wav\n');
[x,fs]=wavread('wav/tel_0143.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0143.f0' f0 -ascii;
save 'ap/tel_0143.ap' ap -ascii;
save 'sp/tel_0143.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0144.wav\n');
[x,fs]=wavread('wav/tel_0144.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0144.f0' f0 -ascii;
save 'ap/tel_0144.ap' ap -ascii;
save 'sp/tel_0144.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0145.wav\n');
[x,fs]=wavread('wav/tel_0145.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0145.f0' f0 -ascii;
save 'ap/tel_0145.ap' ap -ascii;
save 'sp/tel_0145.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0146.wav\n');
[x,fs]=wavread('wav/tel_0146.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0146.f0' f0 -ascii;
save 'ap/tel_0146.ap' ap -ascii;
save 'sp/tel_0146.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0147.wav\n');
[x,fs]=wavread('wav/tel_0147.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0147.f0' f0 -ascii;
save 'ap/tel_0147.ap' ap -ascii;
save 'sp/tel_0147.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0148.wav\n');
[x,fs]=wavread('wav/tel_0148.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0148.f0' f0 -ascii;
save 'ap/tel_0148.ap' ap -ascii;
save 'sp/tel_0148.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0150.wav\n');
[x,fs]=wavread('wav/tel_0150.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0150.f0' f0 -ascii;
save 'ap/tel_0150.ap' ap -ascii;
save 'sp/tel_0150.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0151.wav\n');
[x,fs]=wavread('wav/tel_0151.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0151.f0' f0 -ascii;
save 'ap/tel_0151.ap' ap -ascii;
save 'sp/tel_0151.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0152.wav\n');
[x,fs]=wavread('wav/tel_0152.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0152.f0' f0 -ascii;
save 'ap/tel_0152.ap' ap -ascii;
save 'sp/tel_0152.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0153.wav\n');
[x,fs]=wavread('wav/tel_0153.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0153.f0' f0 -ascii;
save 'ap/tel_0153.ap' ap -ascii;
save 'sp/tel_0153.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0154.wav\n');
[x,fs]=wavread('wav/tel_0154.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0154.f0' f0 -ascii;
save 'ap/tel_0154.ap' ap -ascii;
save 'sp/tel_0154.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0155.wav\n');
[x,fs]=wavread('wav/tel_0155.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0155.f0' f0 -ascii;
save 'ap/tel_0155.ap' ap -ascii;
save 'sp/tel_0155.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0156.wav\n');
[x,fs]=wavread('wav/tel_0156.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0156.f0' f0 -ascii;
save 'ap/tel_0156.ap' ap -ascii;
save 'sp/tel_0156.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0157.wav\n');
[x,fs]=wavread('wav/tel_0157.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0157.f0' f0 -ascii;
save 'ap/tel_0157.ap' ap -ascii;
save 'sp/tel_0157.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0158.wav\n');
[x,fs]=wavread('wav/tel_0158.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0158.f0' f0 -ascii;
save 'ap/tel_0158.ap' ap -ascii;
save 'sp/tel_0158.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0159.wav\n');
[x,fs]=wavread('wav/tel_0159.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0159.f0' f0 -ascii;
save 'ap/tel_0159.ap' ap -ascii;
save 'sp/tel_0159.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0160.wav\n');
[x,fs]=wavread('wav/tel_0160.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0160.f0' f0 -ascii;
save 'ap/tel_0160.ap' ap -ascii;
save 'sp/tel_0160.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0161.wav\n');
[x,fs]=wavread('wav/tel_0161.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0161.f0' f0 -ascii;
save 'ap/tel_0161.ap' ap -ascii;
save 'sp/tel_0161.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0162.wav\n');
[x,fs]=wavread('wav/tel_0162.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0162.f0' f0 -ascii;
save 'ap/tel_0162.ap' ap -ascii;
save 'sp/tel_0162.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0163.wav\n');
[x,fs]=wavread('wav/tel_0163.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0163.f0' f0 -ascii;
save 'ap/tel_0163.ap' ap -ascii;
save 'sp/tel_0163.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0164.wav\n');
[x,fs]=wavread('wav/tel_0164.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0164.f0' f0 -ascii;
save 'ap/tel_0164.ap' ap -ascii;
save 'sp/tel_0164.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0165.wav\n');
[x,fs]=wavread('wav/tel_0165.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0165.f0' f0 -ascii;
save 'ap/tel_0165.ap' ap -ascii;
save 'sp/tel_0165.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0166.wav\n');
[x,fs]=wavread('wav/tel_0166.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0166.f0' f0 -ascii;
save 'ap/tel_0166.ap' ap -ascii;
save 'sp/tel_0166.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0167.wav\n');
[x,fs]=wavread('wav/tel_0167.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0167.f0' f0 -ascii;
save 'ap/tel_0167.ap' ap -ascii;
save 'sp/tel_0167.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0168.wav\n');
[x,fs]=wavread('wav/tel_0168.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0168.f0' f0 -ascii;
save 'ap/tel_0168.ap' ap -ascii;
save 'sp/tel_0168.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0169.wav\n');
[x,fs]=wavread('wav/tel_0169.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0169.f0' f0 -ascii;
save 'ap/tel_0169.ap' ap -ascii;
save 'sp/tel_0169.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0170.wav\n');
[x,fs]=wavread('wav/tel_0170.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0170.f0' f0 -ascii;
save 'ap/tel_0170.ap' ap -ascii;
save 'sp/tel_0170.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0171.wav\n');
[x,fs]=wavread('wav/tel_0171.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0171.f0' f0 -ascii;
save 'ap/tel_0171.ap' ap -ascii;
save 'sp/tel_0171.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0172.wav\n');
[x,fs]=wavread('wav/tel_0172.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0172.f0' f0 -ascii;
save 'ap/tel_0172.ap' ap -ascii;
save 'sp/tel_0172.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0173.wav\n');
[x,fs]=wavread('wav/tel_0173.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0173.f0' f0 -ascii;
save 'ap/tel_0173.ap' ap -ascii;
save 'sp/tel_0173.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0174.wav\n');
[x,fs]=wavread('wav/tel_0174.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0174.f0' f0 -ascii;
save 'ap/tel_0174.ap' ap -ascii;
save 'sp/tel_0174.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0175.wav\n');
[x,fs]=wavread('wav/tel_0175.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0175.f0' f0 -ascii;
save 'ap/tel_0175.ap' ap -ascii;
save 'sp/tel_0175.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0176.wav\n');
[x,fs]=wavread('wav/tel_0176.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0176.f0' f0 -ascii;
save 'ap/tel_0176.ap' ap -ascii;
save 'sp/tel_0176.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0177.wav\n');
[x,fs]=wavread('wav/tel_0177.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0177.f0' f0 -ascii;
save 'ap/tel_0177.ap' ap -ascii;
save 'sp/tel_0177.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0178.wav\n');
[x,fs]=wavread('wav/tel_0178.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0178.f0' f0 -ascii;
save 'ap/tel_0178.ap' ap -ascii;
save 'sp/tel_0178.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0179.wav\n');
[x,fs]=wavread('wav/tel_0179.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0179.f0' f0 -ascii;
save 'ap/tel_0179.ap' ap -ascii;
save 'sp/tel_0179.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0180.wav\n');
[x,fs]=wavread('wav/tel_0180.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0180.f0' f0 -ascii;
save 'ap/tel_0180.ap' ap -ascii;
save 'sp/tel_0180.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0181.wav\n');
[x,fs]=wavread('wav/tel_0181.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0181.f0' f0 -ascii;
save 'ap/tel_0181.ap' ap -ascii;
save 'sp/tel_0181.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0182.wav\n');
[x,fs]=wavread('wav/tel_0182.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0182.f0' f0 -ascii;
save 'ap/tel_0182.ap' ap -ascii;
save 'sp/tel_0182.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0183.wav\n');
[x,fs]=wavread('wav/tel_0183.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0183.f0' f0 -ascii;
save 'ap/tel_0183.ap' ap -ascii;
save 'sp/tel_0183.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0184.wav\n');
[x,fs]=wavread('wav/tel_0184.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0184.f0' f0 -ascii;
save 'ap/tel_0184.ap' ap -ascii;
save 'sp/tel_0184.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0185.wav\n');
[x,fs]=wavread('wav/tel_0185.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0185.f0' f0 -ascii;
save 'ap/tel_0185.ap' ap -ascii;
save 'sp/tel_0185.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0186.wav\n');
[x,fs]=wavread('wav/tel_0186.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0186.f0' f0 -ascii;
save 'ap/tel_0186.ap' ap -ascii;
save 'sp/tel_0186.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0187.wav\n');
[x,fs]=wavread('wav/tel_0187.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0187.f0' f0 -ascii;
save 'ap/tel_0187.ap' ap -ascii;
save 'sp/tel_0187.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0188.wav\n');
[x,fs]=wavread('wav/tel_0188.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0188.f0' f0 -ascii;
save 'ap/tel_0188.ap' ap -ascii;
save 'sp/tel_0188.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0189.wav\n');
[x,fs]=wavread('wav/tel_0189.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0189.f0' f0 -ascii;
save 'ap/tel_0189.ap' ap -ascii;
save 'sp/tel_0189.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0190.wav\n');
[x,fs]=wavread('wav/tel_0190.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0190.f0' f0 -ascii;
save 'ap/tel_0190.ap' ap -ascii;
save 'sp/tel_0190.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0191.wav\n');
[x,fs]=wavread('wav/tel_0191.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0191.f0' f0 -ascii;
save 'ap/tel_0191.ap' ap -ascii;
save 'sp/tel_0191.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0192.wav\n');
[x,fs]=wavread('wav/tel_0192.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0192.f0' f0 -ascii;
save 'ap/tel_0192.ap' ap -ascii;
save 'sp/tel_0192.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0193.wav\n');
[x,fs]=wavread('wav/tel_0193.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0193.f0' f0 -ascii;
save 'ap/tel_0193.ap' ap -ascii;
save 'sp/tel_0193.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0194.wav\n');
[x,fs]=wavread('wav/tel_0194.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0194.f0' f0 -ascii;
save 'ap/tel_0194.ap' ap -ascii;
save 'sp/tel_0194.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0195.wav\n');
[x,fs]=wavread('wav/tel_0195.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0195.f0' f0 -ascii;
save 'ap/tel_0195.ap' ap -ascii;
save 'sp/tel_0195.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0197.wav\n');
[x,fs]=wavread('wav/tel_0197.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0197.f0' f0 -ascii;
save 'ap/tel_0197.ap' ap -ascii;
save 'sp/tel_0197.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0198.wav\n');
[x,fs]=wavread('wav/tel_0198.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0198.f0' f0 -ascii;
save 'ap/tel_0198.ap' ap -ascii;
save 'sp/tel_0198.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0199.wav\n');
[x,fs]=wavread('wav/tel_0199.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0199.f0' f0 -ascii;
save 'ap/tel_0199.ap' ap -ascii;
save 'sp/tel_0199.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0200.wav\n');
[x,fs]=wavread('wav/tel_0200.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0200.f0' f0 -ascii;
save 'ap/tel_0200.ap' ap -ascii;
save 'sp/tel_0200.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0201.wav\n');
[x,fs]=wavread('wav/tel_0201.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0201.f0' f0 -ascii;
save 'ap/tel_0201.ap' ap -ascii;
save 'sp/tel_0201.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0202.wav\n');
[x,fs]=wavread('wav/tel_0202.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0202.f0' f0 -ascii;
save 'ap/tel_0202.ap' ap -ascii;
save 'sp/tel_0202.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0203.wav\n');
[x,fs]=wavread('wav/tel_0203.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0203.f0' f0 -ascii;
save 'ap/tel_0203.ap' ap -ascii;
save 'sp/tel_0203.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0204.wav\n');
[x,fs]=wavread('wav/tel_0204.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0204.f0' f0 -ascii;
save 'ap/tel_0204.ap' ap -ascii;
save 'sp/tel_0204.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0205.wav\n');
[x,fs]=wavread('wav/tel_0205.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0205.f0' f0 -ascii;
save 'ap/tel_0205.ap' ap -ascii;
save 'sp/tel_0205.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0206.wav\n');
[x,fs]=wavread('wav/tel_0206.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0206.f0' f0 -ascii;
save 'ap/tel_0206.ap' ap -ascii;
save 'sp/tel_0206.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0207.wav\n');
[x,fs]=wavread('wav/tel_0207.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0207.f0' f0 -ascii;
save 'ap/tel_0207.ap' ap -ascii;
save 'sp/tel_0207.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0208.wav\n');
[x,fs]=wavread('wav/tel_0208.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0208.f0' f0 -ascii;
save 'ap/tel_0208.ap' ap -ascii;
save 'sp/tel_0208.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0209.wav\n');
[x,fs]=wavread('wav/tel_0209.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0209.f0' f0 -ascii;
save 'ap/tel_0209.ap' ap -ascii;
save 'sp/tel_0209.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0210.wav\n');
[x,fs]=wavread('wav/tel_0210.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0210.f0' f0 -ascii;
save 'ap/tel_0210.ap' ap -ascii;
save 'sp/tel_0210.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0211.wav\n');
[x,fs]=wavread('wav/tel_0211.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0211.f0' f0 -ascii;
save 'ap/tel_0211.ap' ap -ascii;
save 'sp/tel_0211.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0212.wav\n');
[x,fs]=wavread('wav/tel_0212.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0212.f0' f0 -ascii;
save 'ap/tel_0212.ap' ap -ascii;
save 'sp/tel_0212.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0213.wav\n');
[x,fs]=wavread('wav/tel_0213.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0213.f0' f0 -ascii;
save 'ap/tel_0213.ap' ap -ascii;
save 'sp/tel_0213.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0214.wav\n');
[x,fs]=wavread('wav/tel_0214.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0214.f0' f0 -ascii;
save 'ap/tel_0214.ap' ap -ascii;
save 'sp/tel_0214.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0215.wav\n');
[x,fs]=wavread('wav/tel_0215.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0215.f0' f0 -ascii;
save 'ap/tel_0215.ap' ap -ascii;
save 'sp/tel_0215.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0216.wav\n');
[x,fs]=wavread('wav/tel_0216.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0216.f0' f0 -ascii;
save 'ap/tel_0216.ap' ap -ascii;
save 'sp/tel_0216.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0217.wav\n');
[x,fs]=wavread('wav/tel_0217.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0217.f0' f0 -ascii;
save 'ap/tel_0217.ap' ap -ascii;
save 'sp/tel_0217.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0218.wav\n');
[x,fs]=wavread('wav/tel_0218.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0218.f0' f0 -ascii;
save 'ap/tel_0218.ap' ap -ascii;
save 'sp/tel_0218.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0219.wav\n');
[x,fs]=wavread('wav/tel_0219.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0219.f0' f0 -ascii;
save 'ap/tel_0219.ap' ap -ascii;
save 'sp/tel_0219.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0220.wav\n');
[x,fs]=wavread('wav/tel_0220.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0220.f0' f0 -ascii;
save 'ap/tel_0220.ap' ap -ascii;
save 'sp/tel_0220.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0221.wav\n');
[x,fs]=wavread('wav/tel_0221.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0221.f0' f0 -ascii;
save 'ap/tel_0221.ap' ap -ascii;
save 'sp/tel_0221.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0222.wav\n');
[x,fs]=wavread('wav/tel_0222.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0222.f0' f0 -ascii;
save 'ap/tel_0222.ap' ap -ascii;
save 'sp/tel_0222.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0223.wav\n');
[x,fs]=wavread('wav/tel_0223.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0223.f0' f0 -ascii;
save 'ap/tel_0223.ap' ap -ascii;
save 'sp/tel_0223.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0224.wav\n');
[x,fs]=wavread('wav/tel_0224.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0224.f0' f0 -ascii;
save 'ap/tel_0224.ap' ap -ascii;
save 'sp/tel_0224.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0225.wav\n');
[x,fs]=wavread('wav/tel_0225.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0225.f0' f0 -ascii;
save 'ap/tel_0225.ap' ap -ascii;
save 'sp/tel_0225.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0226.wav\n');
[x,fs]=wavread('wav/tel_0226.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0226.f0' f0 -ascii;
save 'ap/tel_0226.ap' ap -ascii;
save 'sp/tel_0226.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0227.wav\n');
[x,fs]=wavread('wav/tel_0227.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0227.f0' f0 -ascii;
save 'ap/tel_0227.ap' ap -ascii;
save 'sp/tel_0227.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0228.wav\n');
[x,fs]=wavread('wav/tel_0228.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0228.f0' f0 -ascii;
save 'ap/tel_0228.ap' ap -ascii;
save 'sp/tel_0228.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0229.wav\n');
[x,fs]=wavread('wav/tel_0229.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0229.f0' f0 -ascii;
save 'ap/tel_0229.ap' ap -ascii;
save 'sp/tel_0229.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0230.wav\n');
[x,fs]=wavread('wav/tel_0230.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0230.f0' f0 -ascii;
save 'ap/tel_0230.ap' ap -ascii;
save 'sp/tel_0230.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0231.wav\n');
[x,fs]=wavread('wav/tel_0231.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0231.f0' f0 -ascii;
save 'ap/tel_0231.ap' ap -ascii;
save 'sp/tel_0231.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0232.wav\n');
[x,fs]=wavread('wav/tel_0232.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0232.f0' f0 -ascii;
save 'ap/tel_0232.ap' ap -ascii;
save 'sp/tel_0232.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0233.wav\n');
[x,fs]=wavread('wav/tel_0233.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0233.f0' f0 -ascii;
save 'ap/tel_0233.ap' ap -ascii;
save 'sp/tel_0233.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0234.wav\n');
[x,fs]=wavread('wav/tel_0234.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0234.f0' f0 -ascii;
save 'ap/tel_0234.ap' ap -ascii;
save 'sp/tel_0234.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0235.wav\n');
[x,fs]=wavread('wav/tel_0235.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0235.f0' f0 -ascii;
save 'ap/tel_0235.ap' ap -ascii;
save 'sp/tel_0235.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0236.wav\n');
[x,fs]=wavread('wav/tel_0236.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0236.f0' f0 -ascii;
save 'ap/tel_0236.ap' ap -ascii;
save 'sp/tel_0236.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0237.wav\n');
[x,fs]=wavread('wav/tel_0237.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0237.f0' f0 -ascii;
save 'ap/tel_0237.ap' ap -ascii;
save 'sp/tel_0237.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0238.wav\n');
[x,fs]=wavread('wav/tel_0238.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0238.f0' f0 -ascii;
save 'ap/tel_0238.ap' ap -ascii;
save 'sp/tel_0238.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0239.wav\n');
[x,fs]=wavread('wav/tel_0239.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0239.f0' f0 -ascii;
save 'ap/tel_0239.ap' ap -ascii;
save 'sp/tel_0239.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0240.wav\n');
[x,fs]=wavread('wav/tel_0240.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0240.f0' f0 -ascii;
save 'ap/tel_0240.ap' ap -ascii;
save 'sp/tel_0240.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0241.wav\n');
[x,fs]=wavread('wav/tel_0241.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0241.f0' f0 -ascii;
save 'ap/tel_0241.ap' ap -ascii;
save 'sp/tel_0241.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0242.wav\n');
[x,fs]=wavread('wav/tel_0242.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0242.f0' f0 -ascii;
save 'ap/tel_0242.ap' ap -ascii;
save 'sp/tel_0242.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0243.wav\n');
[x,fs]=wavread('wav/tel_0243.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0243.f0' f0 -ascii;
save 'ap/tel_0243.ap' ap -ascii;
save 'sp/tel_0243.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0244.wav\n');
[x,fs]=wavread('wav/tel_0244.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0244.f0' f0 -ascii;
save 'ap/tel_0244.ap' ap -ascii;
save 'sp/tel_0244.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0245.wav\n');
[x,fs]=wavread('wav/tel_0245.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0245.f0' f0 -ascii;
save 'ap/tel_0245.ap' ap -ascii;
save 'sp/tel_0245.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0246.wav\n');
[x,fs]=wavread('wav/tel_0246.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0246.f0' f0 -ascii;
save 'ap/tel_0246.ap' ap -ascii;
save 'sp/tel_0246.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0247.wav\n');
[x,fs]=wavread('wav/tel_0247.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0247.f0' f0 -ascii;
save 'ap/tel_0247.ap' ap -ascii;
save 'sp/tel_0247.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0248.wav\n');
[x,fs]=wavread('wav/tel_0248.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0248.f0' f0 -ascii;
save 'ap/tel_0248.ap' ap -ascii;
save 'sp/tel_0248.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0249.wav\n');
[x,fs]=wavread('wav/tel_0249.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0249.f0' f0 -ascii;
save 'ap/tel_0249.ap' ap -ascii;
save 'sp/tel_0249.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0250.wav\n');
[x,fs]=wavread('wav/tel_0250.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0250.f0' f0 -ascii;
save 'ap/tel_0250.ap' ap -ascii;
save 'sp/tel_0250.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0251.wav\n');
[x,fs]=wavread('wav/tel_0251.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0251.f0' f0 -ascii;
save 'ap/tel_0251.ap' ap -ascii;
save 'sp/tel_0251.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0252.wav\n');
[x,fs]=wavread('wav/tel_0252.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0252.f0' f0 -ascii;
save 'ap/tel_0252.ap' ap -ascii;
save 'sp/tel_0252.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0253.wav\n');
[x,fs]=wavread('wav/tel_0253.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0253.f0' f0 -ascii;
save 'ap/tel_0253.ap' ap -ascii;
save 'sp/tel_0253.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0254.wav\n');
[x,fs]=wavread('wav/tel_0254.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0254.f0' f0 -ascii;
save 'ap/tel_0254.ap' ap -ascii;
save 'sp/tel_0254.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0255.wav\n');
[x,fs]=wavread('wav/tel_0255.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0255.f0' f0 -ascii;
save 'ap/tel_0255.ap' ap -ascii;
save 'sp/tel_0255.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0256.wav\n');
[x,fs]=wavread('wav/tel_0256.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0256.f0' f0 -ascii;
save 'ap/tel_0256.ap' ap -ascii;
save 'sp/tel_0256.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0257.wav\n');
[x,fs]=wavread('wav/tel_0257.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0257.f0' f0 -ascii;
save 'ap/tel_0257.ap' ap -ascii;
save 'sp/tel_0257.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0258.wav\n');
[x,fs]=wavread('wav/tel_0258.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0258.f0' f0 -ascii;
save 'ap/tel_0258.ap' ap -ascii;
save 'sp/tel_0258.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0259.wav\n');
[x,fs]=wavread('wav/tel_0259.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0259.f0' f0 -ascii;
save 'ap/tel_0259.ap' ap -ascii;
save 'sp/tel_0259.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0260.wav\n');
[x,fs]=wavread('wav/tel_0260.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0260.f0' f0 -ascii;
save 'ap/tel_0260.ap' ap -ascii;
save 'sp/tel_0260.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0261.wav\n');
[x,fs]=wavread('wav/tel_0261.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0261.f0' f0 -ascii;
save 'ap/tel_0261.ap' ap -ascii;
save 'sp/tel_0261.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0262.wav\n');
[x,fs]=wavread('wav/tel_0262.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0262.f0' f0 -ascii;
save 'ap/tel_0262.ap' ap -ascii;
save 'sp/tel_0262.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0263.wav\n');
[x,fs]=wavread('wav/tel_0263.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0263.f0' f0 -ascii;
save 'ap/tel_0263.ap' ap -ascii;
save 'sp/tel_0263.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0264.wav\n');
[x,fs]=wavread('wav/tel_0264.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0264.f0' f0 -ascii;
save 'ap/tel_0264.ap' ap -ascii;
save 'sp/tel_0264.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0265.wav\n');
[x,fs]=wavread('wav/tel_0265.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0265.f0' f0 -ascii;
save 'ap/tel_0265.ap' ap -ascii;
save 'sp/tel_0265.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0266.wav\n');
[x,fs]=wavread('wav/tel_0266.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0266.f0' f0 -ascii;
save 'ap/tel_0266.ap' ap -ascii;
save 'sp/tel_0266.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0267.wav\n');
[x,fs]=wavread('wav/tel_0267.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0267.f0' f0 -ascii;
save 'ap/tel_0267.ap' ap -ascii;
save 'sp/tel_0267.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0268.wav\n');
[x,fs]=wavread('wav/tel_0268.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0268.f0' f0 -ascii;
save 'ap/tel_0268.ap' ap -ascii;
save 'sp/tel_0268.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0269.wav\n');
[x,fs]=wavread('wav/tel_0269.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0269.f0' f0 -ascii;
save 'ap/tel_0269.ap' ap -ascii;
save 'sp/tel_0269.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0270.wav\n');
[x,fs]=wavread('wav/tel_0270.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0270.f0' f0 -ascii;
save 'ap/tel_0270.ap' ap -ascii;
save 'sp/tel_0270.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0271.wav\n');
[x,fs]=wavread('wav/tel_0271.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0271.f0' f0 -ascii;
save 'ap/tel_0271.ap' ap -ascii;
save 'sp/tel_0271.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0272.wav\n');
[x,fs]=wavread('wav/tel_0272.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0272.f0' f0 -ascii;
save 'ap/tel_0272.ap' ap -ascii;
save 'sp/tel_0272.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0273.wav\n');
[x,fs]=wavread('wav/tel_0273.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0273.f0' f0 -ascii;
save 'ap/tel_0273.ap' ap -ascii;
save 'sp/tel_0273.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0274.wav\n');
[x,fs]=wavread('wav/tel_0274.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0274.f0' f0 -ascii;
save 'ap/tel_0274.ap' ap -ascii;
save 'sp/tel_0274.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0275.wav\n');
[x,fs]=wavread('wav/tel_0275.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0275.f0' f0 -ascii;
save 'ap/tel_0275.ap' ap -ascii;
save 'sp/tel_0275.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0276.wav\n');
[x,fs]=wavread('wav/tel_0276.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0276.f0' f0 -ascii;
save 'ap/tel_0276.ap' ap -ascii;
save 'sp/tel_0276.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0277.wav\n');
[x,fs]=wavread('wav/tel_0277.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0277.f0' f0 -ascii;
save 'ap/tel_0277.ap' ap -ascii;
save 'sp/tel_0277.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0278.wav\n');
[x,fs]=wavread('wav/tel_0278.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0278.f0' f0 -ascii;
save 'ap/tel_0278.ap' ap -ascii;
save 'sp/tel_0278.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0279.wav\n');
[x,fs]=wavread('wav/tel_0279.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0279.f0' f0 -ascii;
save 'ap/tel_0279.ap' ap -ascii;
save 'sp/tel_0279.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0280.wav\n');
[x,fs]=wavread('wav/tel_0280.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0280.f0' f0 -ascii;
save 'ap/tel_0280.ap' ap -ascii;
save 'sp/tel_0280.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0281.wav\n');
[x,fs]=wavread('wav/tel_0281.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0281.f0' f0 -ascii;
save 'ap/tel_0281.ap' ap -ascii;
save 'sp/tel_0281.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0282.wav\n');
[x,fs]=wavread('wav/tel_0282.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0282.f0' f0 -ascii;
save 'ap/tel_0282.ap' ap -ascii;
save 'sp/tel_0282.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0283.wav\n');
[x,fs]=wavread('wav/tel_0283.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0283.f0' f0 -ascii;
save 'ap/tel_0283.ap' ap -ascii;
save 'sp/tel_0283.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0284.wav\n');
[x,fs]=wavread('wav/tel_0284.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0284.f0' f0 -ascii;
save 'ap/tel_0284.ap' ap -ascii;
save 'sp/tel_0284.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0285.wav\n');
[x,fs]=wavread('wav/tel_0285.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0285.f0' f0 -ascii;
save 'ap/tel_0285.ap' ap -ascii;
save 'sp/tel_0285.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0286.wav\n');
[x,fs]=wavread('wav/tel_0286.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0286.f0' f0 -ascii;
save 'ap/tel_0286.ap' ap -ascii;
save 'sp/tel_0286.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0287.wav\n');
[x,fs]=wavread('wav/tel_0287.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0287.f0' f0 -ascii;
save 'ap/tel_0287.ap' ap -ascii;
save 'sp/tel_0287.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0288.wav\n');
[x,fs]=wavread('wav/tel_0288.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0288.f0' f0 -ascii;
save 'ap/tel_0288.ap' ap -ascii;
save 'sp/tel_0288.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0289.wav\n');
[x,fs]=wavread('wav/tel_0289.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0289.f0' f0 -ascii;
save 'ap/tel_0289.ap' ap -ascii;
save 'sp/tel_0289.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0290.wav\n');
[x,fs]=wavread('wav/tel_0290.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0290.f0' f0 -ascii;
save 'ap/tel_0290.ap' ap -ascii;
save 'sp/tel_0290.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0291.wav\n');
[x,fs]=wavread('wav/tel_0291.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0291.f0' f0 -ascii;
save 'ap/tel_0291.ap' ap -ascii;
save 'sp/tel_0291.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0292.wav\n');
[x,fs]=wavread('wav/tel_0292.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0292.f0' f0 -ascii;
save 'ap/tel_0292.ap' ap -ascii;
save 'sp/tel_0292.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0293.wav\n');
[x,fs]=wavread('wav/tel_0293.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0293.f0' f0 -ascii;
save 'ap/tel_0293.ap' ap -ascii;
save 'sp/tel_0293.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0294.wav\n');
[x,fs]=wavread('wav/tel_0294.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0294.f0' f0 -ascii;
save 'ap/tel_0294.ap' ap -ascii;
save 'sp/tel_0294.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0295.wav\n');
[x,fs]=wavread('wav/tel_0295.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0295.f0' f0 -ascii;
save 'ap/tel_0295.ap' ap -ascii;
save 'sp/tel_0295.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0296.wav\n');
[x,fs]=wavread('wav/tel_0296.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0296.f0' f0 -ascii;
save 'ap/tel_0296.ap' ap -ascii;
save 'sp/tel_0296.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0297.wav\n');
[x,fs]=wavread('wav/tel_0297.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0297.f0' f0 -ascii;
save 'ap/tel_0297.ap' ap -ascii;
save 'sp/tel_0297.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0298.wav\n');
[x,fs]=wavread('wav/tel_0298.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0298.f0' f0 -ascii;
save 'ap/tel_0298.ap' ap -ascii;
save 'sp/tel_0298.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0299.wav\n');
[x,fs]=wavread('wav/tel_0299.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0299.f0' f0 -ascii;
save 'ap/tel_0299.ap' ap -ascii;
save 'sp/tel_0299.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0300.wav\n');
[x,fs]=wavread('wav/tel_0300.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0300.f0' f0 -ascii;
save 'ap/tel_0300.ap' ap -ascii;
save 'sp/tel_0300.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0301.wav\n');
[x,fs]=wavread('wav/tel_0301.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0301.f0' f0 -ascii;
save 'ap/tel_0301.ap' ap -ascii;
save 'sp/tel_0301.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0302.wav\n');
[x,fs]=wavread('wav/tel_0302.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0302.f0' f0 -ascii;
save 'ap/tel_0302.ap' ap -ascii;
save 'sp/tel_0302.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0303.wav\n');
[x,fs]=wavread('wav/tel_0303.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0303.f0' f0 -ascii;
save 'ap/tel_0303.ap' ap -ascii;
save 'sp/tel_0303.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0304.wav\n');
[x,fs]=wavread('wav/tel_0304.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0304.f0' f0 -ascii;
save 'ap/tel_0304.ap' ap -ascii;
save 'sp/tel_0304.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0305.wav\n');
[x,fs]=wavread('wav/tel_0305.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0305.f0' f0 -ascii;
save 'ap/tel_0305.ap' ap -ascii;
save 'sp/tel_0305.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0306.wav\n');
[x,fs]=wavread('wav/tel_0306.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0306.f0' f0 -ascii;
save 'ap/tel_0306.ap' ap -ascii;
save 'sp/tel_0306.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0307.wav\n');
[x,fs]=wavread('wav/tel_0307.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0307.f0' f0 -ascii;
save 'ap/tel_0307.ap' ap -ascii;
save 'sp/tel_0307.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0308.wav\n');
[x,fs]=wavread('wav/tel_0308.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0308.f0' f0 -ascii;
save 'ap/tel_0308.ap' ap -ascii;
save 'sp/tel_0308.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0309.wav\n');
[x,fs]=wavread('wav/tel_0309.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0309.f0' f0 -ascii;
save 'ap/tel_0309.ap' ap -ascii;
save 'sp/tel_0309.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0310.wav\n');
[x,fs]=wavread('wav/tel_0310.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0310.f0' f0 -ascii;
save 'ap/tel_0310.ap' ap -ascii;
save 'sp/tel_0310.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0311.wav\n');
[x,fs]=wavread('wav/tel_0311.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0311.f0' f0 -ascii;
save 'ap/tel_0311.ap' ap -ascii;
save 'sp/tel_0311.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0312.wav\n');
[x,fs]=wavread('wav/tel_0312.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0312.f0' f0 -ascii;
save 'ap/tel_0312.ap' ap -ascii;
save 'sp/tel_0312.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0313.wav\n');
[x,fs]=wavread('wav/tel_0313.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0313.f0' f0 -ascii;
save 'ap/tel_0313.ap' ap -ascii;
save 'sp/tel_0313.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0314.wav\n');
[x,fs]=wavread('wav/tel_0314.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0314.f0' f0 -ascii;
save 'ap/tel_0314.ap' ap -ascii;
save 'sp/tel_0314.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0315.wav\n');
[x,fs]=wavread('wav/tel_0315.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0315.f0' f0 -ascii;
save 'ap/tel_0315.ap' ap -ascii;
save 'sp/tel_0315.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0316.wav\n');
[x,fs]=wavread('wav/tel_0316.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0316.f0' f0 -ascii;
save 'ap/tel_0316.ap' ap -ascii;
save 'sp/tel_0316.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0317.wav\n');
[x,fs]=wavread('wav/tel_0317.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0317.f0' f0 -ascii;
save 'ap/tel_0317.ap' ap -ascii;
save 'sp/tel_0317.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0318.wav\n');
[x,fs]=wavread('wav/tel_0318.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0318.f0' f0 -ascii;
save 'ap/tel_0318.ap' ap -ascii;
save 'sp/tel_0318.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0319.wav\n');
[x,fs]=wavread('wav/tel_0319.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0319.f0' f0 -ascii;
save 'ap/tel_0319.ap' ap -ascii;
save 'sp/tel_0319.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0320.wav\n');
[x,fs]=wavread('wav/tel_0320.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0320.f0' f0 -ascii;
save 'ap/tel_0320.ap' ap -ascii;
save 'sp/tel_0320.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0321.wav\n');
[x,fs]=wavread('wav/tel_0321.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0321.f0' f0 -ascii;
save 'ap/tel_0321.ap' ap -ascii;
save 'sp/tel_0321.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0322.wav\n');
[x,fs]=wavread('wav/tel_0322.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0322.f0' f0 -ascii;
save 'ap/tel_0322.ap' ap -ascii;
save 'sp/tel_0322.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0323.wav\n');
[x,fs]=wavread('wav/tel_0323.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0323.f0' f0 -ascii;
save 'ap/tel_0323.ap' ap -ascii;
save 'sp/tel_0323.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0324.wav\n');
[x,fs]=wavread('wav/tel_0324.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0324.f0' f0 -ascii;
save 'ap/tel_0324.ap' ap -ascii;
save 'sp/tel_0324.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0325.wav\n');
[x,fs]=wavread('wav/tel_0325.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0325.f0' f0 -ascii;
save 'ap/tel_0325.ap' ap -ascii;
save 'sp/tel_0325.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0326.wav\n');
[x,fs]=wavread('wav/tel_0326.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0326.f0' f0 -ascii;
save 'ap/tel_0326.ap' ap -ascii;
save 'sp/tel_0326.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0327.wav\n');
[x,fs]=wavread('wav/tel_0327.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0327.f0' f0 -ascii;
save 'ap/tel_0327.ap' ap -ascii;
save 'sp/tel_0327.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0328.wav\n');
[x,fs]=wavread('wav/tel_0328.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0328.f0' f0 -ascii;
save 'ap/tel_0328.ap' ap -ascii;
save 'sp/tel_0328.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0329.wav\n');
[x,fs]=wavread('wav/tel_0329.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0329.f0' f0 -ascii;
save 'ap/tel_0329.ap' ap -ascii;
save 'sp/tel_0329.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0330.wav\n');
[x,fs]=wavread('wav/tel_0330.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0330.f0' f0 -ascii;
save 'ap/tel_0330.ap' ap -ascii;
save 'sp/tel_0330.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0331.wav\n');
[x,fs]=wavread('wav/tel_0331.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0331.f0' f0 -ascii;
save 'ap/tel_0331.ap' ap -ascii;
save 'sp/tel_0331.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0332.wav\n');
[x,fs]=wavread('wav/tel_0332.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0332.f0' f0 -ascii;
save 'ap/tel_0332.ap' ap -ascii;
save 'sp/tel_0332.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0333.wav\n');
[x,fs]=wavread('wav/tel_0333.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0333.f0' f0 -ascii;
save 'ap/tel_0333.ap' ap -ascii;
save 'sp/tel_0333.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0334.wav\n');
[x,fs]=wavread('wav/tel_0334.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0334.f0' f0 -ascii;
save 'ap/tel_0334.ap' ap -ascii;
save 'sp/tel_0334.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0335.wav\n');
[x,fs]=wavread('wav/tel_0335.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0335.f0' f0 -ascii;
save 'ap/tel_0335.ap' ap -ascii;
save 'sp/tel_0335.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0336.wav\n');
[x,fs]=wavread('wav/tel_0336.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0336.f0' f0 -ascii;
save 'ap/tel_0336.ap' ap -ascii;
save 'sp/tel_0336.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0337.wav\n');
[x,fs]=wavread('wav/tel_0337.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0337.f0' f0 -ascii;
save 'ap/tel_0337.ap' ap -ascii;
save 'sp/tel_0337.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0338.wav\n');
[x,fs]=wavread('wav/tel_0338.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0338.f0' f0 -ascii;
save 'ap/tel_0338.ap' ap -ascii;
save 'sp/tel_0338.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0339.wav\n');
[x,fs]=wavread('wav/tel_0339.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0339.f0' f0 -ascii;
save 'ap/tel_0339.ap' ap -ascii;
save 'sp/tel_0339.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0340.wav\n');
[x,fs]=wavread('wav/tel_0340.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0340.f0' f0 -ascii;
save 'ap/tel_0340.ap' ap -ascii;
save 'sp/tel_0340.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0341.wav\n');
[x,fs]=wavread('wav/tel_0341.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0341.f0' f0 -ascii;
save 'ap/tel_0341.ap' ap -ascii;
save 'sp/tel_0341.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0342.wav\n');
[x,fs]=wavread('wav/tel_0342.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0342.f0' f0 -ascii;
save 'ap/tel_0342.ap' ap -ascii;
save 'sp/tel_0342.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0343.wav\n');
[x,fs]=wavread('wav/tel_0343.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0343.f0' f0 -ascii;
save 'ap/tel_0343.ap' ap -ascii;
save 'sp/tel_0343.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0344.wav\n');
[x,fs]=wavread('wav/tel_0344.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0344.f0' f0 -ascii;
save 'ap/tel_0344.ap' ap -ascii;
save 'sp/tel_0344.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0345.wav\n');
[x,fs]=wavread('wav/tel_0345.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0345.f0' f0 -ascii;
save 'ap/tel_0345.ap' ap -ascii;
save 'sp/tel_0345.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0346.wav\n');
[x,fs]=wavread('wav/tel_0346.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0346.f0' f0 -ascii;
save 'ap/tel_0346.ap' ap -ascii;
save 'sp/tel_0346.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0347.wav\n');
[x,fs]=wavread('wav/tel_0347.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0347.f0' f0 -ascii;
save 'ap/tel_0347.ap' ap -ascii;
save 'sp/tel_0347.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0348.wav\n');
[x,fs]=wavread('wav/tel_0348.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0348.f0' f0 -ascii;
save 'ap/tel_0348.ap' ap -ascii;
save 'sp/tel_0348.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0349.wav\n');
[x,fs]=wavread('wav/tel_0349.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0349.f0' f0 -ascii;
save 'ap/tel_0349.ap' ap -ascii;
save 'sp/tel_0349.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0350.wav\n');
[x,fs]=wavread('wav/tel_0350.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0350.f0' f0 -ascii;
save 'ap/tel_0350.ap' ap -ascii;
save 'sp/tel_0350.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0351.wav\n');
[x,fs]=wavread('wav/tel_0351.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0351.f0' f0 -ascii;
save 'ap/tel_0351.ap' ap -ascii;
save 'sp/tel_0351.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0352.wav\n');
[x,fs]=wavread('wav/tel_0352.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0352.f0' f0 -ascii;
save 'ap/tel_0352.ap' ap -ascii;
save 'sp/tel_0352.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0353.wav\n');
[x,fs]=wavread('wav/tel_0353.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0353.f0' f0 -ascii;
save 'ap/tel_0353.ap' ap -ascii;
save 'sp/tel_0353.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0354.wav\n');
[x,fs]=wavread('wav/tel_0354.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0354.f0' f0 -ascii;
save 'ap/tel_0354.ap' ap -ascii;
save 'sp/tel_0354.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0355.wav\n');
[x,fs]=wavread('wav/tel_0355.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0355.f0' f0 -ascii;
save 'ap/tel_0355.ap' ap -ascii;
save 'sp/tel_0355.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0356.wav\n');
[x,fs]=wavread('wav/tel_0356.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0356.f0' f0 -ascii;
save 'ap/tel_0356.ap' ap -ascii;
save 'sp/tel_0356.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0357.wav\n');
[x,fs]=wavread('wav/tel_0357.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0357.f0' f0 -ascii;
save 'ap/tel_0357.ap' ap -ascii;
save 'sp/tel_0357.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0358.wav\n');
[x,fs]=wavread('wav/tel_0358.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0358.f0' f0 -ascii;
save 'ap/tel_0358.ap' ap -ascii;
save 'sp/tel_0358.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0359.wav\n');
[x,fs]=wavread('wav/tel_0359.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0359.f0' f0 -ascii;
save 'ap/tel_0359.ap' ap -ascii;
save 'sp/tel_0359.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0360.wav\n');
[x,fs]=wavread('wav/tel_0360.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0360.f0' f0 -ascii;
save 'ap/tel_0360.ap' ap -ascii;
save 'sp/tel_0360.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0361.wav\n');
[x,fs]=wavread('wav/tel_0361.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0361.f0' f0 -ascii;
save 'ap/tel_0361.ap' ap -ascii;
save 'sp/tel_0361.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0362.wav\n');
[x,fs]=wavread('wav/tel_0362.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0362.f0' f0 -ascii;
save 'ap/tel_0362.ap' ap -ascii;
save 'sp/tel_0362.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0363.wav\n');
[x,fs]=wavread('wav/tel_0363.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0363.f0' f0 -ascii;
save 'ap/tel_0363.ap' ap -ascii;
save 'sp/tel_0363.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0364.wav\n');
[x,fs]=wavread('wav/tel_0364.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0364.f0' f0 -ascii;
save 'ap/tel_0364.ap' ap -ascii;
save 'sp/tel_0364.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0365.wav\n');
[x,fs]=wavread('wav/tel_0365.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0365.f0' f0 -ascii;
save 'ap/tel_0365.ap' ap -ascii;
save 'sp/tel_0365.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0366.wav\n');
[x,fs]=wavread('wav/tel_0366.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0366.f0' f0 -ascii;
save 'ap/tel_0366.ap' ap -ascii;
save 'sp/tel_0366.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0367.wav\n');
[x,fs]=wavread('wav/tel_0367.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0367.f0' f0 -ascii;
save 'ap/tel_0367.ap' ap -ascii;
save 'sp/tel_0367.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0368.wav\n');
[x,fs]=wavread('wav/tel_0368.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0368.f0' f0 -ascii;
save 'ap/tel_0368.ap' ap -ascii;
save 'sp/tel_0368.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0369.wav\n');
[x,fs]=wavread('wav/tel_0369.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0369.f0' f0 -ascii;
save 'ap/tel_0369.ap' ap -ascii;
save 'sp/tel_0369.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0370.wav\n');
[x,fs]=wavread('wav/tel_0370.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0370.f0' f0 -ascii;
save 'ap/tel_0370.ap' ap -ascii;
save 'sp/tel_0370.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0371.wav\n');
[x,fs]=wavread('wav/tel_0371.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0371.f0' f0 -ascii;
save 'ap/tel_0371.ap' ap -ascii;
save 'sp/tel_0371.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0372.wav\n');
[x,fs]=wavread('wav/tel_0372.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0372.f0' f0 -ascii;
save 'ap/tel_0372.ap' ap -ascii;
save 'sp/tel_0372.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0373.wav\n');
[x,fs]=wavread('wav/tel_0373.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0373.f0' f0 -ascii;
save 'ap/tel_0373.ap' ap -ascii;
save 'sp/tel_0373.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0374.wav\n');
[x,fs]=wavread('wav/tel_0374.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0374.f0' f0 -ascii;
save 'ap/tel_0374.ap' ap -ascii;
save 'sp/tel_0374.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0375.wav\n');
[x,fs]=wavread('wav/tel_0375.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0375.f0' f0 -ascii;
save 'ap/tel_0375.ap' ap -ascii;
save 'sp/tel_0375.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0376.wav\n');
[x,fs]=wavread('wav/tel_0376.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0376.f0' f0 -ascii;
save 'ap/tel_0376.ap' ap -ascii;
save 'sp/tel_0376.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0377.wav\n');
[x,fs]=wavread('wav/tel_0377.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0377.f0' f0 -ascii;
save 'ap/tel_0377.ap' ap -ascii;
save 'sp/tel_0377.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0378.wav\n');
[x,fs]=wavread('wav/tel_0378.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0378.f0' f0 -ascii;
save 'ap/tel_0378.ap' ap -ascii;
save 'sp/tel_0378.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0379.wav\n');
[x,fs]=wavread('wav/tel_0379.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0379.f0' f0 -ascii;
save 'ap/tel_0379.ap' ap -ascii;
save 'sp/tel_0379.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0380.wav\n');
[x,fs]=wavread('wav/tel_0380.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0380.f0' f0 -ascii;
save 'ap/tel_0380.ap' ap -ascii;
save 'sp/tel_0380.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0381.wav\n');
[x,fs]=wavread('wav/tel_0381.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0381.f0' f0 -ascii;
save 'ap/tel_0381.ap' ap -ascii;
save 'sp/tel_0381.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0382.wav\n');
[x,fs]=wavread('wav/tel_0382.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0382.f0' f0 -ascii;
save 'ap/tel_0382.ap' ap -ascii;
save 'sp/tel_0382.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0383.wav\n');
[x,fs]=wavread('wav/tel_0383.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0383.f0' f0 -ascii;
save 'ap/tel_0383.ap' ap -ascii;
save 'sp/tel_0383.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0384.wav\n');
[x,fs]=wavread('wav/tel_0384.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0384.f0' f0 -ascii;
save 'ap/tel_0384.ap' ap -ascii;
save 'sp/tel_0384.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0385.wav\n');
[x,fs]=wavread('wav/tel_0385.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0385.f0' f0 -ascii;
save 'ap/tel_0385.ap' ap -ascii;
save 'sp/tel_0385.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0386.wav\n');
[x,fs]=wavread('wav/tel_0386.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0386.f0' f0 -ascii;
save 'ap/tel_0386.ap' ap -ascii;
save 'sp/tel_0386.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0387.wav\n');
[x,fs]=wavread('wav/tel_0387.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0387.f0' f0 -ascii;
save 'ap/tel_0387.ap' ap -ascii;
save 'sp/tel_0387.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0388.wav\n');
[x,fs]=wavread('wav/tel_0388.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0388.f0' f0 -ascii;
save 'ap/tel_0388.ap' ap -ascii;
save 'sp/tel_0388.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0389.wav\n');
[x,fs]=wavread('wav/tel_0389.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0389.f0' f0 -ascii;
save 'ap/tel_0389.ap' ap -ascii;
save 'sp/tel_0389.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0390.wav\n');
[x,fs]=wavread('wav/tel_0390.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0390.f0' f0 -ascii;
save 'ap/tel_0390.ap' ap -ascii;
save 'sp/tel_0390.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0391.wav\n');
[x,fs]=wavread('wav/tel_0391.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0391.f0' f0 -ascii;
save 'ap/tel_0391.ap' ap -ascii;
save 'sp/tel_0391.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0392.wav\n');
[x,fs]=wavread('wav/tel_0392.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0392.f0' f0 -ascii;
save 'ap/tel_0392.ap' ap -ascii;
save 'sp/tel_0392.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0393.wav\n');
[x,fs]=wavread('wav/tel_0393.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0393.f0' f0 -ascii;
save 'ap/tel_0393.ap' ap -ascii;
save 'sp/tel_0393.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0394.wav\n');
[x,fs]=wavread('wav/tel_0394.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0394.f0' f0 -ascii;
save 'ap/tel_0394.ap' ap -ascii;
save 'sp/tel_0394.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0395.wav\n');
[x,fs]=wavread('wav/tel_0395.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0395.f0' f0 -ascii;
save 'ap/tel_0395.ap' ap -ascii;
save 'sp/tel_0395.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0396.wav\n');
[x,fs]=wavread('wav/tel_0396.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0396.f0' f0 -ascii;
save 'ap/tel_0396.ap' ap -ascii;
save 'sp/tel_0396.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0397.wav\n');
[x,fs]=wavread('wav/tel_0397.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0397.f0' f0 -ascii;
save 'ap/tel_0397.ap' ap -ascii;
save 'sp/tel_0397.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0398.wav\n');
[x,fs]=wavread('wav/tel_0398.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0398.f0' f0 -ascii;
save 'ap/tel_0398.ap' ap -ascii;
save 'sp/tel_0398.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0399.wav\n');
[x,fs]=wavread('wav/tel_0399.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0399.f0' f0 -ascii;
save 'ap/tel_0399.ap' ap -ascii;
save 'sp/tel_0399.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0400.wav\n');
[x,fs]=wavread('wav/tel_0400.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0400.f0' f0 -ascii;
save 'ap/tel_0400.ap' ap -ascii;
save 'sp/tel_0400.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0401.wav\n');
[x,fs]=wavread('wav/tel_0401.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0401.f0' f0 -ascii;
save 'ap/tel_0401.ap' ap -ascii;
save 'sp/tel_0401.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0402.wav\n');
[x,fs]=wavread('wav/tel_0402.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0402.f0' f0 -ascii;
save 'ap/tel_0402.ap' ap -ascii;
save 'sp/tel_0402.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0403.wav\n');
[x,fs]=wavread('wav/tel_0403.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0403.f0' f0 -ascii;
save 'ap/tel_0403.ap' ap -ascii;
save 'sp/tel_0403.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0404.wav\n');
[x,fs]=wavread('wav/tel_0404.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0404.f0' f0 -ascii;
save 'ap/tel_0404.ap' ap -ascii;
save 'sp/tel_0404.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0405.wav\n');
[x,fs]=wavread('wav/tel_0405.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0405.f0' f0 -ascii;
save 'ap/tel_0405.ap' ap -ascii;
save 'sp/tel_0405.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0406.wav\n');
[x,fs]=wavread('wav/tel_0406.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0406.f0' f0 -ascii;
save 'ap/tel_0406.ap' ap -ascii;
save 'sp/tel_0406.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0407.wav\n');
[x,fs]=wavread('wav/tel_0407.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0407.f0' f0 -ascii;
save 'ap/tel_0407.ap' ap -ascii;
save 'sp/tel_0407.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0408.wav\n');
[x,fs]=wavread('wav/tel_0408.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0408.f0' f0 -ascii;
save 'ap/tel_0408.ap' ap -ascii;
save 'sp/tel_0408.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0409.wav\n');
[x,fs]=wavread('wav/tel_0409.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0409.f0' f0 -ascii;
save 'ap/tel_0409.ap' ap -ascii;
save 'sp/tel_0409.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0410.wav\n');
[x,fs]=wavread('wav/tel_0410.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0410.f0' f0 -ascii;
save 'ap/tel_0410.ap' ap -ascii;
save 'sp/tel_0410.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0411.wav\n');
[x,fs]=wavread('wav/tel_0411.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0411.f0' f0 -ascii;
save 'ap/tel_0411.ap' ap -ascii;
save 'sp/tel_0411.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0412.wav\n');
[x,fs]=wavread('wav/tel_0412.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0412.f0' f0 -ascii;
save 'ap/tel_0412.ap' ap -ascii;
save 'sp/tel_0412.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0413.wav\n');
[x,fs]=wavread('wav/tel_0413.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0413.f0' f0 -ascii;
save 'ap/tel_0413.ap' ap -ascii;
save 'sp/tel_0413.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0414.wav\n');
[x,fs]=wavread('wav/tel_0414.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0414.f0' f0 -ascii;
save 'ap/tel_0414.ap' ap -ascii;
save 'sp/tel_0414.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0415.wav\n');
[x,fs]=wavread('wav/tel_0415.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0415.f0' f0 -ascii;
save 'ap/tel_0415.ap' ap -ascii;
save 'sp/tel_0415.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0416.wav\n');
[x,fs]=wavread('wav/tel_0416.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0416.f0' f0 -ascii;
save 'ap/tel_0416.ap' ap -ascii;
save 'sp/tel_0416.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0417.wav\n');
[x,fs]=wavread('wav/tel_0417.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0417.f0' f0 -ascii;
save 'ap/tel_0417.ap' ap -ascii;
save 'sp/tel_0417.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0418.wav\n');
[x,fs]=wavread('wav/tel_0418.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0418.f0' f0 -ascii;
save 'ap/tel_0418.ap' ap -ascii;
save 'sp/tel_0418.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0419.wav\n');
[x,fs]=wavread('wav/tel_0419.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0419.f0' f0 -ascii;
save 'ap/tel_0419.ap' ap -ascii;
save 'sp/tel_0419.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0420.wav\n');
[x,fs]=wavread('wav/tel_0420.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0420.f0' f0 -ascii;
save 'ap/tel_0420.ap' ap -ascii;
save 'sp/tel_0420.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0421.wav\n');
[x,fs]=wavread('wav/tel_0421.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0421.f0' f0 -ascii;
save 'ap/tel_0421.ap' ap -ascii;
save 'sp/tel_0421.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0422.wav\n');
[x,fs]=wavread('wav/tel_0422.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0422.f0' f0 -ascii;
save 'ap/tel_0422.ap' ap -ascii;
save 'sp/tel_0422.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0423.wav\n');
[x,fs]=wavread('wav/tel_0423.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0423.f0' f0 -ascii;
save 'ap/tel_0423.ap' ap -ascii;
save 'sp/tel_0423.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0424.wav\n');
[x,fs]=wavread('wav/tel_0424.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0424.f0' f0 -ascii;
save 'ap/tel_0424.ap' ap -ascii;
save 'sp/tel_0424.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0425.wav\n');
[x,fs]=wavread('wav/tel_0425.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0425.f0' f0 -ascii;
save 'ap/tel_0425.ap' ap -ascii;
save 'sp/tel_0425.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0426.wav\n');
[x,fs]=wavread('wav/tel_0426.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0426.f0' f0 -ascii;
save 'ap/tel_0426.ap' ap -ascii;
save 'sp/tel_0426.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0427.wav\n');
[x,fs]=wavread('wav/tel_0427.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0427.f0' f0 -ascii;
save 'ap/tel_0427.ap' ap -ascii;
save 'sp/tel_0427.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0428.wav\n');
[x,fs]=wavread('wav/tel_0428.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0428.f0' f0 -ascii;
save 'ap/tel_0428.ap' ap -ascii;
save 'sp/tel_0428.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0429.wav\n');
[x,fs]=wavread('wav/tel_0429.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0429.f0' f0 -ascii;
save 'ap/tel_0429.ap' ap -ascii;
save 'sp/tel_0429.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0430.wav\n');
[x,fs]=wavread('wav/tel_0430.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0430.f0' f0 -ascii;
save 'ap/tel_0430.ap' ap -ascii;
save 'sp/tel_0430.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0431.wav\n');
[x,fs]=wavread('wav/tel_0431.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0431.f0' f0 -ascii;
save 'ap/tel_0431.ap' ap -ascii;
save 'sp/tel_0431.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0432.wav\n');
[x,fs]=wavread('wav/tel_0432.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0432.f0' f0 -ascii;
save 'ap/tel_0432.ap' ap -ascii;
save 'sp/tel_0432.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0433.wav\n');
[x,fs]=wavread('wav/tel_0433.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0433.f0' f0 -ascii;
save 'ap/tel_0433.ap' ap -ascii;
save 'sp/tel_0433.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0434.wav\n');
[x,fs]=wavread('wav/tel_0434.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0434.f0' f0 -ascii;
save 'ap/tel_0434.ap' ap -ascii;
save 'sp/tel_0434.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0435.wav\n');
[x,fs]=wavread('wav/tel_0435.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0435.f0' f0 -ascii;
save 'ap/tel_0435.ap' ap -ascii;
save 'sp/tel_0435.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0436.wav\n');
[x,fs]=wavread('wav/tel_0436.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0436.f0' f0 -ascii;
save 'ap/tel_0436.ap' ap -ascii;
save 'sp/tel_0436.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0437.wav\n');
[x,fs]=wavread('wav/tel_0437.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0437.f0' f0 -ascii;
save 'ap/tel_0437.ap' ap -ascii;
save 'sp/tel_0437.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0438.wav\n');
[x,fs]=wavread('wav/tel_0438.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0438.f0' f0 -ascii;
save 'ap/tel_0438.ap' ap -ascii;
save 'sp/tel_0438.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0439.wav\n');
[x,fs]=wavread('wav/tel_0439.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0439.f0' f0 -ascii;
save 'ap/tel_0439.ap' ap -ascii;
save 'sp/tel_0439.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0440.wav\n');
[x,fs]=wavread('wav/tel_0440.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0440.f0' f0 -ascii;
save 'ap/tel_0440.ap' ap -ascii;
save 'sp/tel_0440.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0441.wav\n');
[x,fs]=wavread('wav/tel_0441.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0441.f0' f0 -ascii;
save 'ap/tel_0441.ap' ap -ascii;
save 'sp/tel_0441.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0442.wav\n');
[x,fs]=wavread('wav/tel_0442.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0442.f0' f0 -ascii;
save 'ap/tel_0442.ap' ap -ascii;
save 'sp/tel_0442.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0443.wav\n');
[x,fs]=wavread('wav/tel_0443.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0443.f0' f0 -ascii;
save 'ap/tel_0443.ap' ap -ascii;
save 'sp/tel_0443.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0444.wav\n');
[x,fs]=wavread('wav/tel_0444.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0444.f0' f0 -ascii;
save 'ap/tel_0444.ap' ap -ascii;
save 'sp/tel_0444.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0445.wav\n');
[x,fs]=wavread('wav/tel_0445.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0445.f0' f0 -ascii;
save 'ap/tel_0445.ap' ap -ascii;
save 'sp/tel_0445.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0446.wav\n');
[x,fs]=wavread('wav/tel_0446.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0446.f0' f0 -ascii;
save 'ap/tel_0446.ap' ap -ascii;
save 'sp/tel_0446.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0447.wav\n');
[x,fs]=wavread('wav/tel_0447.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0447.f0' f0 -ascii;
save 'ap/tel_0447.ap' ap -ascii;
save 'sp/tel_0447.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0448.wav\n');
[x,fs]=wavread('wav/tel_0448.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0448.f0' f0 -ascii;
save 'ap/tel_0448.ap' ap -ascii;
save 'sp/tel_0448.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0449.wav\n');
[x,fs]=wavread('wav/tel_0449.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0449.f0' f0 -ascii;
save 'ap/tel_0449.ap' ap -ascii;
save 'sp/tel_0449.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0450.wav\n');
[x,fs]=wavread('wav/tel_0450.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0450.f0' f0 -ascii;
save 'ap/tel_0450.ap' ap -ascii;
save 'sp/tel_0450.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0451.wav\n');
[x,fs]=wavread('wav/tel_0451.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0451.f0' f0 -ascii;
save 'ap/tel_0451.ap' ap -ascii;
save 'sp/tel_0451.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0452.wav\n');
[x,fs]=wavread('wav/tel_0452.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0452.f0' f0 -ascii;
save 'ap/tel_0452.ap' ap -ascii;
save 'sp/tel_0452.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0453.wav\n');
[x,fs]=wavread('wav/tel_0453.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0453.f0' f0 -ascii;
save 'ap/tel_0453.ap' ap -ascii;
save 'sp/tel_0453.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0454.wav\n');
[x,fs]=wavread('wav/tel_0454.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0454.f0' f0 -ascii;
save 'ap/tel_0454.ap' ap -ascii;
save 'sp/tel_0454.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0455.wav\n');
[x,fs]=wavread('wav/tel_0455.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0455.f0' f0 -ascii;
save 'ap/tel_0455.ap' ap -ascii;
save 'sp/tel_0455.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0456.wav\n');
[x,fs]=wavread('wav/tel_0456.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0456.f0' f0 -ascii;
save 'ap/tel_0456.ap' ap -ascii;
save 'sp/tel_0456.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0457.wav\n');
[x,fs]=wavread('wav/tel_0457.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0457.f0' f0 -ascii;
save 'ap/tel_0457.ap' ap -ascii;
save 'sp/tel_0457.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0458.wav\n');
[x,fs]=wavread('wav/tel_0458.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0458.f0' f0 -ascii;
save 'ap/tel_0458.ap' ap -ascii;
save 'sp/tel_0458.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0459.wav\n');
[x,fs]=wavread('wav/tel_0459.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0459.f0' f0 -ascii;
save 'ap/tel_0459.ap' ap -ascii;
save 'sp/tel_0459.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0460.wav\n');
[x,fs]=wavread('wav/tel_0460.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0460.f0' f0 -ascii;
save 'ap/tel_0460.ap' ap -ascii;
save 'sp/tel_0460.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0461.wav\n');
[x,fs]=wavread('wav/tel_0461.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0461.f0' f0 -ascii;
save 'ap/tel_0461.ap' ap -ascii;
save 'sp/tel_0461.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0462.wav\n');
[x,fs]=wavread('wav/tel_0462.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0462.f0' f0 -ascii;
save 'ap/tel_0462.ap' ap -ascii;
save 'sp/tel_0462.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0463.wav\n');
[x,fs]=wavread('wav/tel_0463.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0463.f0' f0 -ascii;
save 'ap/tel_0463.ap' ap -ascii;
save 'sp/tel_0463.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0464.wav\n');
[x,fs]=wavread('wav/tel_0464.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0464.f0' f0 -ascii;
save 'ap/tel_0464.ap' ap -ascii;
save 'sp/tel_0464.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0465.wav\n');
[x,fs]=wavread('wav/tel_0465.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0465.f0' f0 -ascii;
save 'ap/tel_0465.ap' ap -ascii;
save 'sp/tel_0465.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0466.wav\n');
[x,fs]=wavread('wav/tel_0466.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0466.f0' f0 -ascii;
save 'ap/tel_0466.ap' ap -ascii;
save 'sp/tel_0466.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0467.wav\n');
[x,fs]=wavread('wav/tel_0467.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0467.f0' f0 -ascii;
save 'ap/tel_0467.ap' ap -ascii;
save 'sp/tel_0467.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0468.wav\n');
[x,fs]=wavread('wav/tel_0468.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0468.f0' f0 -ascii;
save 'ap/tel_0468.ap' ap -ascii;
save 'sp/tel_0468.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0469.wav\n');
[x,fs]=wavread('wav/tel_0469.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0469.f0' f0 -ascii;
save 'ap/tel_0469.ap' ap -ascii;
save 'sp/tel_0469.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0470.wav\n');
[x,fs]=wavread('wav/tel_0470.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0470.f0' f0 -ascii;
save 'ap/tel_0470.ap' ap -ascii;
save 'sp/tel_0470.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0471.wav\n');
[x,fs]=wavread('wav/tel_0471.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0471.f0' f0 -ascii;
save 'ap/tel_0471.ap' ap -ascii;
save 'sp/tel_0471.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0472.wav\n');
[x,fs]=wavread('wav/tel_0472.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0472.f0' f0 -ascii;
save 'ap/tel_0472.ap' ap -ascii;
save 'sp/tel_0472.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0473.wav\n');
[x,fs]=wavread('wav/tel_0473.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0473.f0' f0 -ascii;
save 'ap/tel_0473.ap' ap -ascii;
save 'sp/tel_0473.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0474.wav\n');
[x,fs]=wavread('wav/tel_0474.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0474.f0' f0 -ascii;
save 'ap/tel_0474.ap' ap -ascii;
save 'sp/tel_0474.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0475.wav\n');
[x,fs]=wavread('wav/tel_0475.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0475.f0' f0 -ascii;
save 'ap/tel_0475.ap' ap -ascii;
save 'sp/tel_0475.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0476.wav\n');
[x,fs]=wavread('wav/tel_0476.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0476.f0' f0 -ascii;
save 'ap/tel_0476.ap' ap -ascii;
save 'sp/tel_0476.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0477.wav\n');
[x,fs]=wavread('wav/tel_0477.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0477.f0' f0 -ascii;
save 'ap/tel_0477.ap' ap -ascii;
save 'sp/tel_0477.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0478.wav\n');
[x,fs]=wavread('wav/tel_0478.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0478.f0' f0 -ascii;
save 'ap/tel_0478.ap' ap -ascii;
save 'sp/tel_0478.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0479.wav\n');
[x,fs]=wavread('wav/tel_0479.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0479.f0' f0 -ascii;
save 'ap/tel_0479.ap' ap -ascii;
save 'sp/tel_0479.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0480.wav\n');
[x,fs]=wavread('wav/tel_0480.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0480.f0' f0 -ascii;
save 'ap/tel_0480.ap' ap -ascii;
save 'sp/tel_0480.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0481.wav\n');
[x,fs]=wavread('wav/tel_0481.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0481.f0' f0 -ascii;
save 'ap/tel_0481.ap' ap -ascii;
save 'sp/tel_0481.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0482.wav\n');
[x,fs]=wavread('wav/tel_0482.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0482.f0' f0 -ascii;
save 'ap/tel_0482.ap' ap -ascii;
save 'sp/tel_0482.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0483.wav\n');
[x,fs]=wavread('wav/tel_0483.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0483.f0' f0 -ascii;
save 'ap/tel_0483.ap' ap -ascii;
save 'sp/tel_0483.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0484.wav\n');
[x,fs]=wavread('wav/tel_0484.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0484.f0' f0 -ascii;
save 'ap/tel_0484.ap' ap -ascii;
save 'sp/tel_0484.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0485.wav\n');
[x,fs]=wavread('wav/tel_0485.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0485.f0' f0 -ascii;
save 'ap/tel_0485.ap' ap -ascii;
save 'sp/tel_0485.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0486.wav\n');
[x,fs]=wavread('wav/tel_0486.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0486.f0' f0 -ascii;
save 'ap/tel_0486.ap' ap -ascii;
save 'sp/tel_0486.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0487.wav\n');
[x,fs]=wavread('wav/tel_0487.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0487.f0' f0 -ascii;
save 'ap/tel_0487.ap' ap -ascii;
save 'sp/tel_0487.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0488.wav\n');
[x,fs]=wavread('wav/tel_0488.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0488.f0' f0 -ascii;
save 'ap/tel_0488.ap' ap -ascii;
save 'sp/tel_0488.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0489.wav\n');
[x,fs]=wavread('wav/tel_0489.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0489.f0' f0 -ascii;
save 'ap/tel_0489.ap' ap -ascii;
save 'sp/tel_0489.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0490.wav\n');
[x,fs]=wavread('wav/tel_0490.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0490.f0' f0 -ascii;
save 'ap/tel_0490.ap' ap -ascii;
save 'sp/tel_0490.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0491.wav\n');
[x,fs]=wavread('wav/tel_0491.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0491.f0' f0 -ascii;
save 'ap/tel_0491.ap' ap -ascii;
save 'sp/tel_0491.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0492.wav\n');
[x,fs]=wavread('wav/tel_0492.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0492.f0' f0 -ascii;
save 'ap/tel_0492.ap' ap -ascii;
save 'sp/tel_0492.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0493.wav\n');
[x,fs]=wavread('wav/tel_0493.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0493.f0' f0 -ascii;
save 'ap/tel_0493.ap' ap -ascii;
save 'sp/tel_0493.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0494.wav\n');
[x,fs]=wavread('wav/tel_0494.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0494.f0' f0 -ascii;
save 'ap/tel_0494.ap' ap -ascii;
save 'sp/tel_0494.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0495.wav\n');
[x,fs]=wavread('wav/tel_0495.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0495.f0' f0 -ascii;
save 'ap/tel_0495.ap' ap -ascii;
save 'sp/tel_0495.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0496.wav\n');
[x,fs]=wavread('wav/tel_0496.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0496.f0' f0 -ascii;
save 'ap/tel_0496.ap' ap -ascii;
save 'sp/tel_0496.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0497.wav\n');
[x,fs]=wavread('wav/tel_0497.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0497.f0' f0 -ascii;
save 'ap/tel_0497.ap' ap -ascii;
save 'sp/tel_0497.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0498.wav\n');
[x,fs]=wavread('wav/tel_0498.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0498.f0' f0 -ascii;
save 'ap/tel_0498.ap' ap -ascii;
save 'sp/tel_0498.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0499.wav\n');
[x,fs]=wavread('wav/tel_0499.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0499.f0' f0 -ascii;
save 'ap/tel_0499.ap' ap -ascii;
save 'sp/tel_0499.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0500.wav\n');
[x,fs]=wavread('wav/tel_0500.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0500.f0' f0 -ascii;
save 'ap/tel_0500.ap' ap -ascii;
save 'sp/tel_0500.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0501.wav\n');
[x,fs]=wavread('wav/tel_0501.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0501.f0' f0 -ascii;
save 'ap/tel_0501.ap' ap -ascii;
save 'sp/tel_0501.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0502.wav\n');
[x,fs]=wavread('wav/tel_0502.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0502.f0' f0 -ascii;
save 'ap/tel_0502.ap' ap -ascii;
save 'sp/tel_0502.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0503.wav\n');
[x,fs]=wavread('wav/tel_0503.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0503.f0' f0 -ascii;
save 'ap/tel_0503.ap' ap -ascii;
save 'sp/tel_0503.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0504.wav\n');
[x,fs]=wavread('wav/tel_0504.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0504.f0' f0 -ascii;
save 'ap/tel_0504.ap' ap -ascii;
save 'sp/tel_0504.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0505.wav\n');
[x,fs]=wavread('wav/tel_0505.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0505.f0' f0 -ascii;
save 'ap/tel_0505.ap' ap -ascii;
save 'sp/tel_0505.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0506.wav\n');
[x,fs]=wavread('wav/tel_0506.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0506.f0' f0 -ascii;
save 'ap/tel_0506.ap' ap -ascii;
save 'sp/tel_0506.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0507.wav\n');
[x,fs]=wavread('wav/tel_0507.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0507.f0' f0 -ascii;
save 'ap/tel_0507.ap' ap -ascii;
save 'sp/tel_0507.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0508.wav\n');
[x,fs]=wavread('wav/tel_0508.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0508.f0' f0 -ascii;
save 'ap/tel_0508.ap' ap -ascii;
save 'sp/tel_0508.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0509.wav\n');
[x,fs]=wavread('wav/tel_0509.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0509.f0' f0 -ascii;
save 'ap/tel_0509.ap' ap -ascii;
save 'sp/tel_0509.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0510.wav\n');
[x,fs]=wavread('wav/tel_0510.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0510.f0' f0 -ascii;
save 'ap/tel_0510.ap' ap -ascii;
save 'sp/tel_0510.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0511.wav\n');
[x,fs]=wavread('wav/tel_0511.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0511.f0' f0 -ascii;
save 'ap/tel_0511.ap' ap -ascii;
save 'sp/tel_0511.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0512.wav\n');
[x,fs]=wavread('wav/tel_0512.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0512.f0' f0 -ascii;
save 'ap/tel_0512.ap' ap -ascii;
save 'sp/tel_0512.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0513.wav\n');
[x,fs]=wavread('wav/tel_0513.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0513.f0' f0 -ascii;
save 'ap/tel_0513.ap' ap -ascii;
save 'sp/tel_0513.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0514.wav\n');
[x,fs]=wavread('wav/tel_0514.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0514.f0' f0 -ascii;
save 'ap/tel_0514.ap' ap -ascii;
save 'sp/tel_0514.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0515.wav\n');
[x,fs]=wavread('wav/tel_0515.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0515.f0' f0 -ascii;
save 'ap/tel_0515.ap' ap -ascii;
save 'sp/tel_0515.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0516.wav\n');
[x,fs]=wavread('wav/tel_0516.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0516.f0' f0 -ascii;
save 'ap/tel_0516.ap' ap -ascii;
save 'sp/tel_0516.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0517.wav\n');
[x,fs]=wavread('wav/tel_0517.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0517.f0' f0 -ascii;
save 'ap/tel_0517.ap' ap -ascii;
save 'sp/tel_0517.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0518.wav\n');
[x,fs]=wavread('wav/tel_0518.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0518.f0' f0 -ascii;
save 'ap/tel_0518.ap' ap -ascii;
save 'sp/tel_0518.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0519.wav\n');
[x,fs]=wavread('wav/tel_0519.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0519.f0' f0 -ascii;
save 'ap/tel_0519.ap' ap -ascii;
save 'sp/tel_0519.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0520.wav\n');
[x,fs]=wavread('wav/tel_0520.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0520.f0' f0 -ascii;
save 'ap/tel_0520.ap' ap -ascii;
save 'sp/tel_0520.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0521.wav\n');
[x,fs]=wavread('wav/tel_0521.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0521.f0' f0 -ascii;
save 'ap/tel_0521.ap' ap -ascii;
save 'sp/tel_0521.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0522.wav\n');
[x,fs]=wavread('wav/tel_0522.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0522.f0' f0 -ascii;
save 'ap/tel_0522.ap' ap -ascii;
save 'sp/tel_0522.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0523.wav\n');
[x,fs]=wavread('wav/tel_0523.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0523.f0' f0 -ascii;
save 'ap/tel_0523.ap' ap -ascii;
save 'sp/tel_0523.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0524.wav\n');
[x,fs]=wavread('wav/tel_0524.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0524.f0' f0 -ascii;
save 'ap/tel_0524.ap' ap -ascii;
save 'sp/tel_0524.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0525.wav\n');
[x,fs]=wavread('wav/tel_0525.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0525.f0' f0 -ascii;
save 'ap/tel_0525.ap' ap -ascii;
save 'sp/tel_0525.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0526.wav\n');
[x,fs]=wavread('wav/tel_0526.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0526.f0' f0 -ascii;
save 'ap/tel_0526.ap' ap -ascii;
save 'sp/tel_0526.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0527.wav\n');
[x,fs]=wavread('wav/tel_0527.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0527.f0' f0 -ascii;
save 'ap/tel_0527.ap' ap -ascii;
save 'sp/tel_0527.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0528.wav\n');
[x,fs]=wavread('wav/tel_0528.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0528.f0' f0 -ascii;
save 'ap/tel_0528.ap' ap -ascii;
save 'sp/tel_0528.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0529.wav\n');
[x,fs]=wavread('wav/tel_0529.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0529.f0' f0 -ascii;
save 'ap/tel_0529.ap' ap -ascii;
save 'sp/tel_0529.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0530.wav\n');
[x,fs]=wavread('wav/tel_0530.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0530.f0' f0 -ascii;
save 'ap/tel_0530.ap' ap -ascii;
save 'sp/tel_0530.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0531.wav\n');
[x,fs]=wavread('wav/tel_0531.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0531.f0' f0 -ascii;
save 'ap/tel_0531.ap' ap -ascii;
save 'sp/tel_0531.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0532.wav\n');
[x,fs]=wavread('wav/tel_0532.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0532.f0' f0 -ascii;
save 'ap/tel_0532.ap' ap -ascii;
save 'sp/tel_0532.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0533.wav\n');
[x,fs]=wavread('wav/tel_0533.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0533.f0' f0 -ascii;
save 'ap/tel_0533.ap' ap -ascii;
save 'sp/tel_0533.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0534.wav\n');
[x,fs]=wavread('wav/tel_0534.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0534.f0' f0 -ascii;
save 'ap/tel_0534.ap' ap -ascii;
save 'sp/tel_0534.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0535.wav\n');
[x,fs]=wavread('wav/tel_0535.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0535.f0' f0 -ascii;
save 'ap/tel_0535.ap' ap -ascii;
save 'sp/tel_0535.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0536.wav\n');
[x,fs]=wavread('wav/tel_0536.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0536.f0' f0 -ascii;
save 'ap/tel_0536.ap' ap -ascii;
save 'sp/tel_0536.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0537.wav\n');
[x,fs]=wavread('wav/tel_0537.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0537.f0' f0 -ascii;
save 'ap/tel_0537.ap' ap -ascii;
save 'sp/tel_0537.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0538.wav\n');
[x,fs]=wavread('wav/tel_0538.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0538.f0' f0 -ascii;
save 'ap/tel_0538.ap' ap -ascii;
save 'sp/tel_0538.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0539.wav\n');
[x,fs]=wavread('wav/tel_0539.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0539.f0' f0 -ascii;
save 'ap/tel_0539.ap' ap -ascii;
save 'sp/tel_0539.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0540.wav\n');
[x,fs]=wavread('wav/tel_0540.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0540.f0' f0 -ascii;
save 'ap/tel_0540.ap' ap -ascii;
save 'sp/tel_0540.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0541.wav\n');
[x,fs]=wavread('wav/tel_0541.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0541.f0' f0 -ascii;
save 'ap/tel_0541.ap' ap -ascii;
save 'sp/tel_0541.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0542.wav\n');
[x,fs]=wavread('wav/tel_0542.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0542.f0' f0 -ascii;
save 'ap/tel_0542.ap' ap -ascii;
save 'sp/tel_0542.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0543.wav\n');
[x,fs]=wavread('wav/tel_0543.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0543.f0' f0 -ascii;
save 'ap/tel_0543.ap' ap -ascii;
save 'sp/tel_0543.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0544.wav\n');
[x,fs]=wavread('wav/tel_0544.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0544.f0' f0 -ascii;
save 'ap/tel_0544.ap' ap -ascii;
save 'sp/tel_0544.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0545.wav\n');
[x,fs]=wavread('wav/tel_0545.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0545.f0' f0 -ascii;
save 'ap/tel_0545.ap' ap -ascii;
save 'sp/tel_0545.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0546.wav\n');
[x,fs]=wavread('wav/tel_0546.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0546.f0' f0 -ascii;
save 'ap/tel_0546.ap' ap -ascii;
save 'sp/tel_0546.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0547.wav\n');
[x,fs]=wavread('wav/tel_0547.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0547.f0' f0 -ascii;
save 'ap/tel_0547.ap' ap -ascii;
save 'sp/tel_0547.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0548.wav\n');
[x,fs]=wavread('wav/tel_0548.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0548.f0' f0 -ascii;
save 'ap/tel_0548.ap' ap -ascii;
save 'sp/tel_0548.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0549.wav\n');
[x,fs]=wavread('wav/tel_0549.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0549.f0' f0 -ascii;
save 'ap/tel_0549.ap' ap -ascii;
save 'sp/tel_0549.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0550.wav\n');
[x,fs]=wavread('wav/tel_0550.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0550.f0' f0 -ascii;
save 'ap/tel_0550.ap' ap -ascii;
save 'sp/tel_0550.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0551.wav\n');
[x,fs]=wavread('wav/tel_0551.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0551.f0' f0 -ascii;
save 'ap/tel_0551.ap' ap -ascii;
save 'sp/tel_0551.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0552.wav\n');
[x,fs]=wavread('wav/tel_0552.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0552.f0' f0 -ascii;
save 'ap/tel_0552.ap' ap -ascii;
save 'sp/tel_0552.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0553.wav\n');
[x,fs]=wavread('wav/tel_0553.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0553.f0' f0 -ascii;
save 'ap/tel_0553.ap' ap -ascii;
save 'sp/tel_0553.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0554.wav\n');
[x,fs]=wavread('wav/tel_0554.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0554.f0' f0 -ascii;
save 'ap/tel_0554.ap' ap -ascii;
save 'sp/tel_0554.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0555.wav\n');
[x,fs]=wavread('wav/tel_0555.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0555.f0' f0 -ascii;
save 'ap/tel_0555.ap' ap -ascii;
save 'sp/tel_0555.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0556.wav\n');
[x,fs]=wavread('wav/tel_0556.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0556.f0' f0 -ascii;
save 'ap/tel_0556.ap' ap -ascii;
save 'sp/tel_0556.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0557.wav\n');
[x,fs]=wavread('wav/tel_0557.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0557.f0' f0 -ascii;
save 'ap/tel_0557.ap' ap -ascii;
save 'sp/tel_0557.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0558.wav\n');
[x,fs]=wavread('wav/tel_0558.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0558.f0' f0 -ascii;
save 'ap/tel_0558.ap' ap -ascii;
save 'sp/tel_0558.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0559.wav\n');
[x,fs]=wavread('wav/tel_0559.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0559.f0' f0 -ascii;
save 'ap/tel_0559.ap' ap -ascii;
save 'sp/tel_0559.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0560.wav\n');
[x,fs]=wavread('wav/tel_0560.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0560.f0' f0 -ascii;
save 'ap/tel_0560.ap' ap -ascii;
save 'sp/tel_0560.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0561.wav\n');
[x,fs]=wavread('wav/tel_0561.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0561.f0' f0 -ascii;
save 'ap/tel_0561.ap' ap -ascii;
save 'sp/tel_0561.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0562.wav\n');
[x,fs]=wavread('wav/tel_0562.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0562.f0' f0 -ascii;
save 'ap/tel_0562.ap' ap -ascii;
save 'sp/tel_0562.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0563.wav\n');
[x,fs]=wavread('wav/tel_0563.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0563.f0' f0 -ascii;
save 'ap/tel_0563.ap' ap -ascii;
save 'sp/tel_0563.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0564.wav\n');
[x,fs]=wavread('wav/tel_0564.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0564.f0' f0 -ascii;
save 'ap/tel_0564.ap' ap -ascii;
save 'sp/tel_0564.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0565.wav\n');
[x,fs]=wavread('wav/tel_0565.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0565.f0' f0 -ascii;
save 'ap/tel_0565.ap' ap -ascii;
save 'sp/tel_0565.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0566.wav\n');
[x,fs]=wavread('wav/tel_0566.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0566.f0' f0 -ascii;
save 'ap/tel_0566.ap' ap -ascii;
save 'sp/tel_0566.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0567.wav\n');
[x,fs]=wavread('wav/tel_0567.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0567.f0' f0 -ascii;
save 'ap/tel_0567.ap' ap -ascii;
save 'sp/tel_0567.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0568.wav\n');
[x,fs]=wavread('wav/tel_0568.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0568.f0' f0 -ascii;
save 'ap/tel_0568.ap' ap -ascii;
save 'sp/tel_0568.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0569.wav\n');
[x,fs]=wavread('wav/tel_0569.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0569.f0' f0 -ascii;
save 'ap/tel_0569.ap' ap -ascii;
save 'sp/tel_0569.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0570.wav\n');
[x,fs]=wavread('wav/tel_0570.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0570.f0' f0 -ascii;
save 'ap/tel_0570.ap' ap -ascii;
save 'sp/tel_0570.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0571.wav\n');
[x,fs]=wavread('wav/tel_0571.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0571.f0' f0 -ascii;
save 'ap/tel_0571.ap' ap -ascii;
save 'sp/tel_0571.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0572.wav\n');
[x,fs]=wavread('wav/tel_0572.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0572.f0' f0 -ascii;
save 'ap/tel_0572.ap' ap -ascii;
save 'sp/tel_0572.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0573.wav\n');
[x,fs]=wavread('wav/tel_0573.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0573.f0' f0 -ascii;
save 'ap/tel_0573.ap' ap -ascii;
save 'sp/tel_0573.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0574.wav\n');
[x,fs]=wavread('wav/tel_0574.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0574.f0' f0 -ascii;
save 'ap/tel_0574.ap' ap -ascii;
save 'sp/tel_0574.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0575.wav\n');
[x,fs]=wavread('wav/tel_0575.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0575.f0' f0 -ascii;
save 'ap/tel_0575.ap' ap -ascii;
save 'sp/tel_0575.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0576.wav\n');
[x,fs]=wavread('wav/tel_0576.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0576.f0' f0 -ascii;
save 'ap/tel_0576.ap' ap -ascii;
save 'sp/tel_0576.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0577.wav\n');
[x,fs]=wavread('wav/tel_0577.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0577.f0' f0 -ascii;
save 'ap/tel_0577.ap' ap -ascii;
save 'sp/tel_0577.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0578.wav\n');
[x,fs]=wavread('wav/tel_0578.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0578.f0' f0 -ascii;
save 'ap/tel_0578.ap' ap -ascii;
save 'sp/tel_0578.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0579.wav\n');
[x,fs]=wavread('wav/tel_0579.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0579.f0' f0 -ascii;
save 'ap/tel_0579.ap' ap -ascii;
save 'sp/tel_0579.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0580.wav\n');
[x,fs]=wavread('wav/tel_0580.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0580.f0' f0 -ascii;
save 'ap/tel_0580.ap' ap -ascii;
save 'sp/tel_0580.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0581.wav\n');
[x,fs]=wavread('wav/tel_0581.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0581.f0' f0 -ascii;
save 'ap/tel_0581.ap' ap -ascii;
save 'sp/tel_0581.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0582.wav\n');
[x,fs]=wavread('wav/tel_0582.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0582.f0' f0 -ascii;
save 'ap/tel_0582.ap' ap -ascii;
save 'sp/tel_0582.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0583.wav\n');
[x,fs]=wavread('wav/tel_0583.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0583.f0' f0 -ascii;
save 'ap/tel_0583.ap' ap -ascii;
save 'sp/tel_0583.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0584.wav\n');
[x,fs]=wavread('wav/tel_0584.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0584.f0' f0 -ascii;
save 'ap/tel_0584.ap' ap -ascii;
save 'sp/tel_0584.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0585.wav\n');
[x,fs]=wavread('wav/tel_0585.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0585.f0' f0 -ascii;
save 'ap/tel_0585.ap' ap -ascii;
save 'sp/tel_0585.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0586.wav\n');
[x,fs]=wavread('wav/tel_0586.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0586.f0' f0 -ascii;
save 'ap/tel_0586.ap' ap -ascii;
save 'sp/tel_0586.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0587.wav\n');
[x,fs]=wavread('wav/tel_0587.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0587.f0' f0 -ascii;
save 'ap/tel_0587.ap' ap -ascii;
save 'sp/tel_0587.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0588.wav\n');
[x,fs]=wavread('wav/tel_0588.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0588.f0' f0 -ascii;
save 'ap/tel_0588.ap' ap -ascii;
save 'sp/tel_0588.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0589.wav\n');
[x,fs]=wavread('wav/tel_0589.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0589.f0' f0 -ascii;
save 'ap/tel_0589.ap' ap -ascii;
save 'sp/tel_0589.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0590.wav\n');
[x,fs]=wavread('wav/tel_0590.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0590.f0' f0 -ascii;
save 'ap/tel_0590.ap' ap -ascii;
save 'sp/tel_0590.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0591.wav\n');
[x,fs]=wavread('wav/tel_0591.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0591.f0' f0 -ascii;
save 'ap/tel_0591.ap' ap -ascii;
save 'sp/tel_0591.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0592.wav\n');
[x,fs]=wavread('wav/tel_0592.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0592.f0' f0 -ascii;
save 'ap/tel_0592.ap' ap -ascii;
save 'sp/tel_0592.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0593.wav\n');
[x,fs]=wavread('wav/tel_0593.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0593.f0' f0 -ascii;
save 'ap/tel_0593.ap' ap -ascii;
save 'sp/tel_0593.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0594.wav\n');
[x,fs]=wavread('wav/tel_0594.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0594.f0' f0 -ascii;
save 'ap/tel_0594.ap' ap -ascii;
save 'sp/tel_0594.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0595.wav\n');
[x,fs]=wavread('wav/tel_0595.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0595.f0' f0 -ascii;
save 'ap/tel_0595.ap' ap -ascii;
save 'sp/tel_0595.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0596.wav\n');
[x,fs]=wavread('wav/tel_0596.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0596.f0' f0 -ascii;
save 'ap/tel_0596.ap' ap -ascii;
save 'sp/tel_0596.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0597.wav\n');
[x,fs]=wavread('wav/tel_0597.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0597.f0' f0 -ascii;
save 'ap/tel_0597.ap' ap -ascii;
save 'sp/tel_0597.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0598.wav\n');
[x,fs]=wavread('wav/tel_0598.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0598.f0' f0 -ascii;
save 'ap/tel_0598.ap' ap -ascii;
save 'sp/tel_0598.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0599.wav\n');
[x,fs]=wavread('wav/tel_0599.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0599.f0' f0 -ascii;
save 'ap/tel_0599.ap' ap -ascii;
save 'sp/tel_0599.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0600.wav\n');
[x,fs]=wavread('wav/tel_0600.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0600.f0' f0 -ascii;
save 'ap/tel_0600.ap' ap -ascii;
save 'sp/tel_0600.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0601.wav\n');
[x,fs]=wavread('wav/tel_0601.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0601.f0' f0 -ascii;
save 'ap/tel_0601.ap' ap -ascii;
save 'sp/tel_0601.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0602.wav\n');
[x,fs]=wavread('wav/tel_0602.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0602.f0' f0 -ascii;
save 'ap/tel_0602.ap' ap -ascii;
save 'sp/tel_0602.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0603.wav\n');
[x,fs]=wavread('wav/tel_0603.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0603.f0' f0 -ascii;
save 'ap/tel_0603.ap' ap -ascii;
save 'sp/tel_0603.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0604.wav\n');
[x,fs]=wavread('wav/tel_0604.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0604.f0' f0 -ascii;
save 'ap/tel_0604.ap' ap -ascii;
save 'sp/tel_0604.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0605.wav\n');
[x,fs]=wavread('wav/tel_0605.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0605.f0' f0 -ascii;
save 'ap/tel_0605.ap' ap -ascii;
save 'sp/tel_0605.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0606.wav\n');
[x,fs]=wavread('wav/tel_0606.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0606.f0' f0 -ascii;
save 'ap/tel_0606.ap' ap -ascii;
save 'sp/tel_0606.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0607.wav\n');
[x,fs]=wavread('wav/tel_0607.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0607.f0' f0 -ascii;
save 'ap/tel_0607.ap' ap -ascii;
save 'sp/tel_0607.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0608.wav\n');
[x,fs]=wavread('wav/tel_0608.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0608.f0' f0 -ascii;
save 'ap/tel_0608.ap' ap -ascii;
save 'sp/tel_0608.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0609.wav\n');
[x,fs]=wavread('wav/tel_0609.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0609.f0' f0 -ascii;
save 'ap/tel_0609.ap' ap -ascii;
save 'sp/tel_0609.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0610.wav\n');
[x,fs]=wavread('wav/tel_0610.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0610.f0' f0 -ascii;
save 'ap/tel_0610.ap' ap -ascii;
save 'sp/tel_0610.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0611.wav\n');
[x,fs]=wavread('wav/tel_0611.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0611.f0' f0 -ascii;
save 'ap/tel_0611.ap' ap -ascii;
save 'sp/tel_0611.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0612.wav\n');
[x,fs]=wavread('wav/tel_0612.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0612.f0' f0 -ascii;
save 'ap/tel_0612.ap' ap -ascii;
save 'sp/tel_0612.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0613.wav\n');
[x,fs]=wavread('wav/tel_0613.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0613.f0' f0 -ascii;
save 'ap/tel_0613.ap' ap -ascii;
save 'sp/tel_0613.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0614.wav\n');
[x,fs]=wavread('wav/tel_0614.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0614.f0' f0 -ascii;
save 'ap/tel_0614.ap' ap -ascii;
save 'sp/tel_0614.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0615.wav\n');
[x,fs]=wavread('wav/tel_0615.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0615.f0' f0 -ascii;
save 'ap/tel_0615.ap' ap -ascii;
save 'sp/tel_0615.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0616.wav\n');
[x,fs]=wavread('wav/tel_0616.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0616.f0' f0 -ascii;
save 'ap/tel_0616.ap' ap -ascii;
save 'sp/tel_0616.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0617.wav\n');
[x,fs]=wavread('wav/tel_0617.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0617.f0' f0 -ascii;
save 'ap/tel_0617.ap' ap -ascii;
save 'sp/tel_0617.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0618.wav\n');
[x,fs]=wavread('wav/tel_0618.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0618.f0' f0 -ascii;
save 'ap/tel_0618.ap' ap -ascii;
save 'sp/tel_0618.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0619.wav\n');
[x,fs]=wavread('wav/tel_0619.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0619.f0' f0 -ascii;
save 'ap/tel_0619.ap' ap -ascii;
save 'sp/tel_0619.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0620.wav\n');
[x,fs]=wavread('wav/tel_0620.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0620.f0' f0 -ascii;
save 'ap/tel_0620.ap' ap -ascii;
save 'sp/tel_0620.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0621.wav\n');
[x,fs]=wavread('wav/tel_0621.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0621.f0' f0 -ascii;
save 'ap/tel_0621.ap' ap -ascii;
save 'sp/tel_0621.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0622.wav\n');
[x,fs]=wavread('wav/tel_0622.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0622.f0' f0 -ascii;
save 'ap/tel_0622.ap' ap -ascii;
save 'sp/tel_0622.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0623.wav\n');
[x,fs]=wavread('wav/tel_0623.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0623.f0' f0 -ascii;
save 'ap/tel_0623.ap' ap -ascii;
save 'sp/tel_0623.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0624.wav\n');
[x,fs]=wavread('wav/tel_0624.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0624.f0' f0 -ascii;
save 'ap/tel_0624.ap' ap -ascii;
save 'sp/tel_0624.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0625.wav\n');
[x,fs]=wavread('wav/tel_0625.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0625.f0' f0 -ascii;
save 'ap/tel_0625.ap' ap -ascii;
save 'sp/tel_0625.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0626.wav\n');
[x,fs]=wavread('wav/tel_0626.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0626.f0' f0 -ascii;
save 'ap/tel_0626.ap' ap -ascii;
save 'sp/tel_0626.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0627.wav\n');
[x,fs]=wavread('wav/tel_0627.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0627.f0' f0 -ascii;
save 'ap/tel_0627.ap' ap -ascii;
save 'sp/tel_0627.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0628.wav\n');
[x,fs]=wavread('wav/tel_0628.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0628.f0' f0 -ascii;
save 'ap/tel_0628.ap' ap -ascii;
save 'sp/tel_0628.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0629.wav\n');
[x,fs]=wavread('wav/tel_0629.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0629.f0' f0 -ascii;
save 'ap/tel_0629.ap' ap -ascii;
save 'sp/tel_0629.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0630.wav\n');
[x,fs]=wavread('wav/tel_0630.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0630.f0' f0 -ascii;
save 'ap/tel_0630.ap' ap -ascii;
save 'sp/tel_0630.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0631.wav\n');
[x,fs]=wavread('wav/tel_0631.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0631.f0' f0 -ascii;
save 'ap/tel_0631.ap' ap -ascii;
save 'sp/tel_0631.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0632.wav\n');
[x,fs]=wavread('wav/tel_0632.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0632.f0' f0 -ascii;
save 'ap/tel_0632.ap' ap -ascii;
save 'sp/tel_0632.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0633.wav\n');
[x,fs]=wavread('wav/tel_0633.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0633.f0' f0 -ascii;
save 'ap/tel_0633.ap' ap -ascii;
save 'sp/tel_0633.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0634.wav\n');
[x,fs]=wavread('wav/tel_0634.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0634.f0' f0 -ascii;
save 'ap/tel_0634.ap' ap -ascii;
save 'sp/tel_0634.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0635.wav\n');
[x,fs]=wavread('wav/tel_0635.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0635.f0' f0 -ascii;
save 'ap/tel_0635.ap' ap -ascii;
save 'sp/tel_0635.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0636.wav\n');
[x,fs]=wavread('wav/tel_0636.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0636.f0' f0 -ascii;
save 'ap/tel_0636.ap' ap -ascii;
save 'sp/tel_0636.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0637.wav\n');
[x,fs]=wavread('wav/tel_0637.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0637.f0' f0 -ascii;
save 'ap/tel_0637.ap' ap -ascii;
save 'sp/tel_0637.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0638.wav\n');
[x,fs]=wavread('wav/tel_0638.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0638.f0' f0 -ascii;
save 'ap/tel_0638.ap' ap -ascii;
save 'sp/tel_0638.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0639.wav\n');
[x,fs]=wavread('wav/tel_0639.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0639.f0' f0 -ascii;
save 'ap/tel_0639.ap' ap -ascii;
save 'sp/tel_0639.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0640.wav\n');
[x,fs]=wavread('wav/tel_0640.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0640.f0' f0 -ascii;
save 'ap/tel_0640.ap' ap -ascii;
save 'sp/tel_0640.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0641.wav\n');
[x,fs]=wavread('wav/tel_0641.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0641.f0' f0 -ascii;
save 'ap/tel_0641.ap' ap -ascii;
save 'sp/tel_0641.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0642.wav\n');
[x,fs]=wavread('wav/tel_0642.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0642.f0' f0 -ascii;
save 'ap/tel_0642.ap' ap -ascii;
save 'sp/tel_0642.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0643.wav\n');
[x,fs]=wavread('wav/tel_0643.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0643.f0' f0 -ascii;
save 'ap/tel_0643.ap' ap -ascii;
save 'sp/tel_0643.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0644.wav\n');
[x,fs]=wavread('wav/tel_0644.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0644.f0' f0 -ascii;
save 'ap/tel_0644.ap' ap -ascii;
save 'sp/tel_0644.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0645.wav\n');
[x,fs]=wavread('wav/tel_0645.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0645.f0' f0 -ascii;
save 'ap/tel_0645.ap' ap -ascii;
save 'sp/tel_0645.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0646.wav\n');
[x,fs]=wavread('wav/tel_0646.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0646.f0' f0 -ascii;
save 'ap/tel_0646.ap' ap -ascii;
save 'sp/tel_0646.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0647.wav\n');
[x,fs]=wavread('wav/tel_0647.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0647.f0' f0 -ascii;
save 'ap/tel_0647.ap' ap -ascii;
save 'sp/tel_0647.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0648.wav\n');
[x,fs]=wavread('wav/tel_0648.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0648.f0' f0 -ascii;
save 'ap/tel_0648.ap' ap -ascii;
save 'sp/tel_0648.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0649.wav\n');
[x,fs]=wavread('wav/tel_0649.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0649.f0' f0 -ascii;
save 'ap/tel_0649.ap' ap -ascii;
save 'sp/tel_0649.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0650.wav\n');
[x,fs]=wavread('wav/tel_0650.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0650.f0' f0 -ascii;
save 'ap/tel_0650.ap' ap -ascii;
save 'sp/tel_0650.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0651.wav\n');
[x,fs]=wavread('wav/tel_0651.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0651.f0' f0 -ascii;
save 'ap/tel_0651.ap' ap -ascii;
save 'sp/tel_0651.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0652.wav\n');
[x,fs]=wavread('wav/tel_0652.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0652.f0' f0 -ascii;
save 'ap/tel_0652.ap' ap -ascii;
save 'sp/tel_0652.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0653.wav\n');
[x,fs]=wavread('wav/tel_0653.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0653.f0' f0 -ascii;
save 'ap/tel_0653.ap' ap -ascii;
save 'sp/tel_0653.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0654.wav\n');
[x,fs]=wavread('wav/tel_0654.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0654.f0' f0 -ascii;
save 'ap/tel_0654.ap' ap -ascii;
save 'sp/tel_0654.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0655.wav\n');
[x,fs]=wavread('wav/tel_0655.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0655.f0' f0 -ascii;
save 'ap/tel_0655.ap' ap -ascii;
save 'sp/tel_0655.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0656.wav\n');
[x,fs]=wavread('wav/tel_0656.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0656.f0' f0 -ascii;
save 'ap/tel_0656.ap' ap -ascii;
save 'sp/tel_0656.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0657.wav\n');
[x,fs]=wavread('wav/tel_0657.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0657.f0' f0 -ascii;
save 'ap/tel_0657.ap' ap -ascii;
save 'sp/tel_0657.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0658.wav\n');
[x,fs]=wavread('wav/tel_0658.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0658.f0' f0 -ascii;
save 'ap/tel_0658.ap' ap -ascii;
save 'sp/tel_0658.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0659.wav\n');
[x,fs]=wavread('wav/tel_0659.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0659.f0' f0 -ascii;
save 'ap/tel_0659.ap' ap -ascii;
save 'sp/tel_0659.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0660.wav\n');
[x,fs]=wavread('wav/tel_0660.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0660.f0' f0 -ascii;
save 'ap/tel_0660.ap' ap -ascii;
save 'sp/tel_0660.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0661.wav\n');
[x,fs]=wavread('wav/tel_0661.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0661.f0' f0 -ascii;
save 'ap/tel_0661.ap' ap -ascii;
save 'sp/tel_0661.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0662.wav\n');
[x,fs]=wavread('wav/tel_0662.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0662.f0' f0 -ascii;
save 'ap/tel_0662.ap' ap -ascii;
save 'sp/tel_0662.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0663.wav\n');
[x,fs]=wavread('wav/tel_0663.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0663.f0' f0 -ascii;
save 'ap/tel_0663.ap' ap -ascii;
save 'sp/tel_0663.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0664.wav\n');
[x,fs]=wavread('wav/tel_0664.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0664.f0' f0 -ascii;
save 'ap/tel_0664.ap' ap -ascii;
save 'sp/tel_0664.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0665.wav\n');
[x,fs]=wavread('wav/tel_0665.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0665.f0' f0 -ascii;
save 'ap/tel_0665.ap' ap -ascii;
save 'sp/tel_0665.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0666.wav\n');
[x,fs]=wavread('wav/tel_0666.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0666.f0' f0 -ascii;
save 'ap/tel_0666.ap' ap -ascii;
save 'sp/tel_0666.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0667.wav\n');
[x,fs]=wavread('wav/tel_0667.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0667.f0' f0 -ascii;
save 'ap/tel_0667.ap' ap -ascii;
save 'sp/tel_0667.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0668.wav\n');
[x,fs]=wavread('wav/tel_0668.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0668.f0' f0 -ascii;
save 'ap/tel_0668.ap' ap -ascii;
save 'sp/tel_0668.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0669.wav\n');
[x,fs]=wavread('wav/tel_0669.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0669.f0' f0 -ascii;
save 'ap/tel_0669.ap' ap -ascii;
save 'sp/tel_0669.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0670.wav\n');
[x,fs]=wavread('wav/tel_0670.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0670.f0' f0 -ascii;
save 'ap/tel_0670.ap' ap -ascii;
save 'sp/tel_0670.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0671.wav\n');
[x,fs]=wavread('wav/tel_0671.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0671.f0' f0 -ascii;
save 'ap/tel_0671.ap' ap -ascii;
save 'sp/tel_0671.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0672.wav\n');
[x,fs]=wavread('wav/tel_0672.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0672.f0' f0 -ascii;
save 'ap/tel_0672.ap' ap -ascii;
save 'sp/tel_0672.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0673.wav\n');
[x,fs]=wavread('wav/tel_0673.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0673.f0' f0 -ascii;
save 'ap/tel_0673.ap' ap -ascii;
save 'sp/tel_0673.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0674.wav\n');
[x,fs]=wavread('wav/tel_0674.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0674.f0' f0 -ascii;
save 'ap/tel_0674.ap' ap -ascii;
save 'sp/tel_0674.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0675.wav\n');
[x,fs]=wavread('wav/tel_0675.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0675.f0' f0 -ascii;
save 'ap/tel_0675.ap' ap -ascii;
save 'sp/tel_0675.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0676.wav\n');
[x,fs]=wavread('wav/tel_0676.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0676.f0' f0 -ascii;
save 'ap/tel_0676.ap' ap -ascii;
save 'sp/tel_0676.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0677.wav\n');
[x,fs]=wavread('wav/tel_0677.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0677.f0' f0 -ascii;
save 'ap/tel_0677.ap' ap -ascii;
save 'sp/tel_0677.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0678.wav\n');
[x,fs]=wavread('wav/tel_0678.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0678.f0' f0 -ascii;
save 'ap/tel_0678.ap' ap -ascii;
save 'sp/tel_0678.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0679.wav\n');
[x,fs]=wavread('wav/tel_0679.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0679.f0' f0 -ascii;
save 'ap/tel_0679.ap' ap -ascii;
save 'sp/tel_0679.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0680.wav\n');
[x,fs]=wavread('wav/tel_0680.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0680.f0' f0 -ascii;
save 'ap/tel_0680.ap' ap -ascii;
save 'sp/tel_0680.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0681.wav\n');
[x,fs]=wavread('wav/tel_0681.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0681.f0' f0 -ascii;
save 'ap/tel_0681.ap' ap -ascii;
save 'sp/tel_0681.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0682.wav\n');
[x,fs]=wavread('wav/tel_0682.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0682.f0' f0 -ascii;
save 'ap/tel_0682.ap' ap -ascii;
save 'sp/tel_0682.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0683.wav\n');
[x,fs]=wavread('wav/tel_0683.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0683.f0' f0 -ascii;
save 'ap/tel_0683.ap' ap -ascii;
save 'sp/tel_0683.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0684.wav\n');
[x,fs]=wavread('wav/tel_0684.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0684.f0' f0 -ascii;
save 'ap/tel_0684.ap' ap -ascii;
save 'sp/tel_0684.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0685.wav\n');
[x,fs]=wavread('wav/tel_0685.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0685.f0' f0 -ascii;
save 'ap/tel_0685.ap' ap -ascii;
save 'sp/tel_0685.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0686.wav\n');
[x,fs]=wavread('wav/tel_0686.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0686.f0' f0 -ascii;
save 'ap/tel_0686.ap' ap -ascii;
save 'sp/tel_0686.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0687.wav\n');
[x,fs]=wavread('wav/tel_0687.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0687.f0' f0 -ascii;
save 'ap/tel_0687.ap' ap -ascii;
save 'sp/tel_0687.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0688.wav\n');
[x,fs]=wavread('wav/tel_0688.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0688.f0' f0 -ascii;
save 'ap/tel_0688.ap' ap -ascii;
save 'sp/tel_0688.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0689.wav\n');
[x,fs]=wavread('wav/tel_0689.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0689.f0' f0 -ascii;
save 'ap/tel_0689.ap' ap -ascii;
save 'sp/tel_0689.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0690.wav\n');
[x,fs]=wavread('wav/tel_0690.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0690.f0' f0 -ascii;
save 'ap/tel_0690.ap' ap -ascii;
save 'sp/tel_0690.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0691.wav\n');
[x,fs]=wavread('wav/tel_0691.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0691.f0' f0 -ascii;
save 'ap/tel_0691.ap' ap -ascii;
save 'sp/tel_0691.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0692.wav\n');
[x,fs]=wavread('wav/tel_0692.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0692.f0' f0 -ascii;
save 'ap/tel_0692.ap' ap -ascii;
save 'sp/tel_0692.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0693.wav\n');
[x,fs]=wavread('wav/tel_0693.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0693.f0' f0 -ascii;
save 'ap/tel_0693.ap' ap -ascii;
save 'sp/tel_0693.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0694.wav\n');
[x,fs]=wavread('wav/tel_0694.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0694.f0' f0 -ascii;
save 'ap/tel_0694.ap' ap -ascii;
save 'sp/tel_0694.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0695.wav\n');
[x,fs]=wavread('wav/tel_0695.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0695.f0' f0 -ascii;
save 'ap/tel_0695.ap' ap -ascii;
save 'sp/tel_0695.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0696.wav\n');
[x,fs]=wavread('wav/tel_0696.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0696.f0' f0 -ascii;
save 'ap/tel_0696.ap' ap -ascii;
save 'sp/tel_0696.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0697.wav\n');
[x,fs]=wavread('wav/tel_0697.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0697.f0' f0 -ascii;
save 'ap/tel_0697.ap' ap -ascii;
save 'sp/tel_0697.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0698.wav\n');
[x,fs]=wavread('wav/tel_0698.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0698.f0' f0 -ascii;
save 'ap/tel_0698.ap' ap -ascii;
save 'sp/tel_0698.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0699.wav\n');
[x,fs]=wavread('wav/tel_0699.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0699.f0' f0 -ascii;
save 'ap/tel_0699.ap' ap -ascii;
save 'sp/tel_0699.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0700.wav\n');
[x,fs]=wavread('wav/tel_0700.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0700.f0' f0 -ascii;
save 'ap/tel_0700.ap' ap -ascii;
save 'sp/tel_0700.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0701.wav\n');
[x,fs]=wavread('wav/tel_0701.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0701.f0' f0 -ascii;
save 'ap/tel_0701.ap' ap -ascii;
save 'sp/tel_0701.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0702.wav\n');
[x,fs]=wavread('wav/tel_0702.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0702.f0' f0 -ascii;
save 'ap/tel_0702.ap' ap -ascii;
save 'sp/tel_0702.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0703.wav\n');
[x,fs]=wavread('wav/tel_0703.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0703.f0' f0 -ascii;
save 'ap/tel_0703.ap' ap -ascii;
save 'sp/tel_0703.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0704.wav\n');
[x,fs]=wavread('wav/tel_0704.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0704.f0' f0 -ascii;
save 'ap/tel_0704.ap' ap -ascii;
save 'sp/tel_0704.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0705.wav\n');
[x,fs]=wavread('wav/tel_0705.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0705.f0' f0 -ascii;
save 'ap/tel_0705.ap' ap -ascii;
save 'sp/tel_0705.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0706.wav\n');
[x,fs]=wavread('wav/tel_0706.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0706.f0' f0 -ascii;
save 'ap/tel_0706.ap' ap -ascii;
save 'sp/tel_0706.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0707.wav\n');
[x,fs]=wavread('wav/tel_0707.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0707.f0' f0 -ascii;
save 'ap/tel_0707.ap' ap -ascii;
save 'sp/tel_0707.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0708.wav\n');
[x,fs]=wavread('wav/tel_0708.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0708.f0' f0 -ascii;
save 'ap/tel_0708.ap' ap -ascii;
save 'sp/tel_0708.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0709.wav\n');
[x,fs]=wavread('wav/tel_0709.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0709.f0' f0 -ascii;
save 'ap/tel_0709.ap' ap -ascii;
save 'sp/tel_0709.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0710.wav\n');
[x,fs]=wavread('wav/tel_0710.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0710.f0' f0 -ascii;
save 'ap/tel_0710.ap' ap -ascii;
save 'sp/tel_0710.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0711.wav\n');
[x,fs]=wavread('wav/tel_0711.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0711.f0' f0 -ascii;
save 'ap/tel_0711.ap' ap -ascii;
save 'sp/tel_0711.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0712.wav\n');
[x,fs]=wavread('wav/tel_0712.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0712.f0' f0 -ascii;
save 'ap/tel_0712.ap' ap -ascii;
save 'sp/tel_0712.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0713.wav\n');
[x,fs]=wavread('wav/tel_0713.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0713.f0' f0 -ascii;
save 'ap/tel_0713.ap' ap -ascii;
save 'sp/tel_0713.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0714.wav\n');
[x,fs]=wavread('wav/tel_0714.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0714.f0' f0 -ascii;
save 'ap/tel_0714.ap' ap -ascii;
save 'sp/tel_0714.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0715.wav\n');
[x,fs]=wavread('wav/tel_0715.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0715.f0' f0 -ascii;
save 'ap/tel_0715.ap' ap -ascii;
save 'sp/tel_0715.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0716.wav\n');
[x,fs]=wavread('wav/tel_0716.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0716.f0' f0 -ascii;
save 'ap/tel_0716.ap' ap -ascii;
save 'sp/tel_0716.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0717.wav\n');
[x,fs]=wavread('wav/tel_0717.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0717.f0' f0 -ascii;
save 'ap/tel_0717.ap' ap -ascii;
save 'sp/tel_0717.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0718.wav\n');
[x,fs]=wavread('wav/tel_0718.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0718.f0' f0 -ascii;
save 'ap/tel_0718.ap' ap -ascii;
save 'sp/tel_0718.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0719.wav\n');
[x,fs]=wavread('wav/tel_0719.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0719.f0' f0 -ascii;
save 'ap/tel_0719.ap' ap -ascii;
save 'sp/tel_0719.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0720.wav\n');
[x,fs]=wavread('wav/tel_0720.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0720.f0' f0 -ascii;
save 'ap/tel_0720.ap' ap -ascii;
save 'sp/tel_0720.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0721.wav\n');
[x,fs]=wavread('wav/tel_0721.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0721.f0' f0 -ascii;
save 'ap/tel_0721.ap' ap -ascii;
save 'sp/tel_0721.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0722.wav\n');
[x,fs]=wavread('wav/tel_0722.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0722.f0' f0 -ascii;
save 'ap/tel_0722.ap' ap -ascii;
save 'sp/tel_0722.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0723.wav\n');
[x,fs]=wavread('wav/tel_0723.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0723.f0' f0 -ascii;
save 'ap/tel_0723.ap' ap -ascii;
save 'sp/tel_0723.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0724.wav\n');
[x,fs]=wavread('wav/tel_0724.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0724.f0' f0 -ascii;
save 'ap/tel_0724.ap' ap -ascii;
save 'sp/tel_0724.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0725.wav\n');
[x,fs]=wavread('wav/tel_0725.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0725.f0' f0 -ascii;
save 'ap/tel_0725.ap' ap -ascii;
save 'sp/tel_0725.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0726.wav\n');
[x,fs]=wavread('wav/tel_0726.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0726.f0' f0 -ascii;
save 'ap/tel_0726.ap' ap -ascii;
save 'sp/tel_0726.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0727.wav\n');
[x,fs]=wavread('wav/tel_0727.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0727.f0' f0 -ascii;
save 'ap/tel_0727.ap' ap -ascii;
save 'sp/tel_0727.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0728.wav\n');
[x,fs]=wavread('wav/tel_0728.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0728.f0' f0 -ascii;
save 'ap/tel_0728.ap' ap -ascii;
save 'sp/tel_0728.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0730.wav\n');
[x,fs]=wavread('wav/tel_0730.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0730.f0' f0 -ascii;
save 'ap/tel_0730.ap' ap -ascii;
save 'sp/tel_0730.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0732.wav\n');
[x,fs]=wavread('wav/tel_0732.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0732.f0' f0 -ascii;
save 'ap/tel_0732.ap' ap -ascii;
save 'sp/tel_0732.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0733.wav\n');
[x,fs]=wavread('wav/tel_0733.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0733.f0' f0 -ascii;
save 'ap/tel_0733.ap' ap -ascii;
save 'sp/tel_0733.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0734.wav\n');
[x,fs]=wavread('wav/tel_0734.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0734.f0' f0 -ascii;
save 'ap/tel_0734.ap' ap -ascii;
save 'sp/tel_0734.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0735.wav\n');
[x,fs]=wavread('wav/tel_0735.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0735.f0' f0 -ascii;
save 'ap/tel_0735.ap' ap -ascii;
save 'sp/tel_0735.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0736.wav\n');
[x,fs]=wavread('wav/tel_0736.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0736.f0' f0 -ascii;
save 'ap/tel_0736.ap' ap -ascii;
save 'sp/tel_0736.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0737.wav\n');
[x,fs]=wavread('wav/tel_0737.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0737.f0' f0 -ascii;
save 'ap/tel_0737.ap' ap -ascii;
save 'sp/tel_0737.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0738.wav\n');
[x,fs]=wavread('wav/tel_0738.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0738.f0' f0 -ascii;
save 'ap/tel_0738.ap' ap -ascii;
save 'sp/tel_0738.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0739.wav\n');
[x,fs]=wavread('wav/tel_0739.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0739.f0' f0 -ascii;
save 'ap/tel_0739.ap' ap -ascii;
save 'sp/tel_0739.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0740.wav\n');
[x,fs]=wavread('wav/tel_0740.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0740.f0' f0 -ascii;
save 'ap/tel_0740.ap' ap -ascii;
save 'sp/tel_0740.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0741.wav\n');
[x,fs]=wavread('wav/tel_0741.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0741.f0' f0 -ascii;
save 'ap/tel_0741.ap' ap -ascii;
save 'sp/tel_0741.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0742.wav\n');
[x,fs]=wavread('wav/tel_0742.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0742.f0' f0 -ascii;
save 'ap/tel_0742.ap' ap -ascii;
save 'sp/tel_0742.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0743.wav\n');
[x,fs]=wavread('wav/tel_0743.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0743.f0' f0 -ascii;
save 'ap/tel_0743.ap' ap -ascii;
save 'sp/tel_0743.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0744.wav\n');
[x,fs]=wavread('wav/tel_0744.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0744.f0' f0 -ascii;
save 'ap/tel_0744.ap' ap -ascii;
save 'sp/tel_0744.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0745.wav\n');
[x,fs]=wavread('wav/tel_0745.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0745.f0' f0 -ascii;
save 'ap/tel_0745.ap' ap -ascii;
save 'sp/tel_0745.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0746.wav\n');
[x,fs]=wavread('wav/tel_0746.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0746.f0' f0 -ascii;
save 'ap/tel_0746.ap' ap -ascii;
save 'sp/tel_0746.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0747.wav\n');
[x,fs]=wavread('wav/tel_0747.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0747.f0' f0 -ascii;
save 'ap/tel_0747.ap' ap -ascii;
save 'sp/tel_0747.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0748.wav\n');
[x,fs]=wavread('wav/tel_0748.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0748.f0' f0 -ascii;
save 'ap/tel_0748.ap' ap -ascii;
save 'sp/tel_0748.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0749.wav\n');
[x,fs]=wavread('wav/tel_0749.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0749.f0' f0 -ascii;
save 'ap/tel_0749.ap' ap -ascii;
save 'sp/tel_0749.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0750.wav\n');
[x,fs]=wavread('wav/tel_0750.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0750.f0' f0 -ascii;
save 'ap/tel_0750.ap' ap -ascii;
save 'sp/tel_0750.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0751.wav\n');
[x,fs]=wavread('wav/tel_0751.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0751.f0' f0 -ascii;
save 'ap/tel_0751.ap' ap -ascii;
save 'sp/tel_0751.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0752.wav\n');
[x,fs]=wavread('wav/tel_0752.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0752.f0' f0 -ascii;
save 'ap/tel_0752.ap' ap -ascii;
save 'sp/tel_0752.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0753.wav\n');
[x,fs]=wavread('wav/tel_0753.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0753.f0' f0 -ascii;
save 'ap/tel_0753.ap' ap -ascii;
save 'sp/tel_0753.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0754.wav\n');
[x,fs]=wavread('wav/tel_0754.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0754.f0' f0 -ascii;
save 'ap/tel_0754.ap' ap -ascii;
save 'sp/tel_0754.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0755.wav\n');
[x,fs]=wavread('wav/tel_0755.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0755.f0' f0 -ascii;
save 'ap/tel_0755.ap' ap -ascii;
save 'sp/tel_0755.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0756.wav\n');
[x,fs]=wavread('wav/tel_0756.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0756.f0' f0 -ascii;
save 'ap/tel_0756.ap' ap -ascii;
save 'sp/tel_0756.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0757.wav\n');
[x,fs]=wavread('wav/tel_0757.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0757.f0' f0 -ascii;
save 'ap/tel_0757.ap' ap -ascii;
save 'sp/tel_0757.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0758.wav\n');
[x,fs]=wavread('wav/tel_0758.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0758.f0' f0 -ascii;
save 'ap/tel_0758.ap' ap -ascii;
save 'sp/tel_0758.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0759.wav\n');
[x,fs]=wavread('wav/tel_0759.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0759.f0' f0 -ascii;
save 'ap/tel_0759.ap' ap -ascii;
save 'sp/tel_0759.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0760.wav\n');
[x,fs]=wavread('wav/tel_0760.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0760.f0' f0 -ascii;
save 'ap/tel_0760.ap' ap -ascii;
save 'sp/tel_0760.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0761.wav\n');
[x,fs]=wavread('wav/tel_0761.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0761.f0' f0 -ascii;
save 'ap/tel_0761.ap' ap -ascii;
save 'sp/tel_0761.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0762.wav\n');
[x,fs]=wavread('wav/tel_0762.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0762.f0' f0 -ascii;
save 'ap/tel_0762.ap' ap -ascii;
save 'sp/tel_0762.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0763.wav\n');
[x,fs]=wavread('wav/tel_0763.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0763.f0' f0 -ascii;
save 'ap/tel_0763.ap' ap -ascii;
save 'sp/tel_0763.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0764.wav\n');
[x,fs]=wavread('wav/tel_0764.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0764.f0' f0 -ascii;
save 'ap/tel_0764.ap' ap -ascii;
save 'sp/tel_0764.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0765.wav\n');
[x,fs]=wavread('wav/tel_0765.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0765.f0' f0 -ascii;
save 'ap/tel_0765.ap' ap -ascii;
save 'sp/tel_0765.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0766.wav\n');
[x,fs]=wavread('wav/tel_0766.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0766.f0' f0 -ascii;
save 'ap/tel_0766.ap' ap -ascii;
save 'sp/tel_0766.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0767.wav\n');
[x,fs]=wavread('wav/tel_0767.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0767.f0' f0 -ascii;
save 'ap/tel_0767.ap' ap -ascii;
save 'sp/tel_0767.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0768.wav\n');
[x,fs]=wavread('wav/tel_0768.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0768.f0' f0 -ascii;
save 'ap/tel_0768.ap' ap -ascii;
save 'sp/tel_0768.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0769.wav\n');
[x,fs]=wavread('wav/tel_0769.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0769.f0' f0 -ascii;
save 'ap/tel_0769.ap' ap -ascii;
save 'sp/tel_0769.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0770.wav\n');
[x,fs]=wavread('wav/tel_0770.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0770.f0' f0 -ascii;
save 'ap/tel_0770.ap' ap -ascii;
save 'sp/tel_0770.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0771.wav\n');
[x,fs]=wavread('wav/tel_0771.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0771.f0' f0 -ascii;
save 'ap/tel_0771.ap' ap -ascii;
save 'sp/tel_0771.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0772.wav\n');
[x,fs]=wavread('wav/tel_0772.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0772.f0' f0 -ascii;
save 'ap/tel_0772.ap' ap -ascii;
save 'sp/tel_0772.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0773.wav\n');
[x,fs]=wavread('wav/tel_0773.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0773.f0' f0 -ascii;
save 'ap/tel_0773.ap' ap -ascii;
save 'sp/tel_0773.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0774.wav\n');
[x,fs]=wavread('wav/tel_0774.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0774.f0' f0 -ascii;
save 'ap/tel_0774.ap' ap -ascii;
save 'sp/tel_0774.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0775.wav\n');
[x,fs]=wavread('wav/tel_0775.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0775.f0' f0 -ascii;
save 'ap/tel_0775.ap' ap -ascii;
save 'sp/tel_0775.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0776.wav\n');
[x,fs]=wavread('wav/tel_0776.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0776.f0' f0 -ascii;
save 'ap/tel_0776.ap' ap -ascii;
save 'sp/tel_0776.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0777.wav\n');
[x,fs]=wavread('wav/tel_0777.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0777.f0' f0 -ascii;
save 'ap/tel_0777.ap' ap -ascii;
save 'sp/tel_0777.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0778.wav\n');
[x,fs]=wavread('wav/tel_0778.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0778.f0' f0 -ascii;
save 'ap/tel_0778.ap' ap -ascii;
save 'sp/tel_0778.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0779.wav\n');
[x,fs]=wavread('wav/tel_0779.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0779.f0' f0 -ascii;
save 'ap/tel_0779.ap' ap -ascii;
save 'sp/tel_0779.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0780.wav\n');
[x,fs]=wavread('wav/tel_0780.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0780.f0' f0 -ascii;
save 'ap/tel_0780.ap' ap -ascii;
save 'sp/tel_0780.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0781.wav\n');
[x,fs]=wavread('wav/tel_0781.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0781.f0' f0 -ascii;
save 'ap/tel_0781.ap' ap -ascii;
save 'sp/tel_0781.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0782.wav\n');
[x,fs]=wavread('wav/tel_0782.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0782.f0' f0 -ascii;
save 'ap/tel_0782.ap' ap -ascii;
save 'sp/tel_0782.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0783.wav\n');
[x,fs]=wavread('wav/tel_0783.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0783.f0' f0 -ascii;
save 'ap/tel_0783.ap' ap -ascii;
save 'sp/tel_0783.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0784.wav\n');
[x,fs]=wavread('wav/tel_0784.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0784.f0' f0 -ascii;
save 'ap/tel_0784.ap' ap -ascii;
save 'sp/tel_0784.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0785.wav\n');
[x,fs]=wavread('wav/tel_0785.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0785.f0' f0 -ascii;
save 'ap/tel_0785.ap' ap -ascii;
save 'sp/tel_0785.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0786.wav\n');
[x,fs]=wavread('wav/tel_0786.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0786.f0' f0 -ascii;
save 'ap/tel_0786.ap' ap -ascii;
save 'sp/tel_0786.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0787.wav\n');
[x,fs]=wavread('wav/tel_0787.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0787.f0' f0 -ascii;
save 'ap/tel_0787.ap' ap -ascii;
save 'sp/tel_0787.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0788.wav\n');
[x,fs]=wavread('wav/tel_0788.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0788.f0' f0 -ascii;
save 'ap/tel_0788.ap' ap -ascii;
save 'sp/tel_0788.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0789.wav\n');
[x,fs]=wavread('wav/tel_0789.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0789.f0' f0 -ascii;
save 'ap/tel_0789.ap' ap -ascii;
save 'sp/tel_0789.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0790.wav\n');
[x,fs]=wavread('wav/tel_0790.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0790.f0' f0 -ascii;
save 'ap/tel_0790.ap' ap -ascii;
save 'sp/tel_0790.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0791.wav\n');
[x,fs]=wavread('wav/tel_0791.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0791.f0' f0 -ascii;
save 'ap/tel_0791.ap' ap -ascii;
save 'sp/tel_0791.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0792.wav\n');
[x,fs]=wavread('wav/tel_0792.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0792.f0' f0 -ascii;
save 'ap/tel_0792.ap' ap -ascii;
save 'sp/tel_0792.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0793.wav\n');
[x,fs]=wavread('wav/tel_0793.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0793.f0' f0 -ascii;
save 'ap/tel_0793.ap' ap -ascii;
save 'sp/tel_0793.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0794.wav\n');
[x,fs]=wavread('wav/tel_0794.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0794.f0' f0 -ascii;
save 'ap/tel_0794.ap' ap -ascii;
save 'sp/tel_0794.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0795.wav\n');
[x,fs]=wavread('wav/tel_0795.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0795.f0' f0 -ascii;
save 'ap/tel_0795.ap' ap -ascii;
save 'sp/tel_0795.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0796.wav\n');
[x,fs]=wavread('wav/tel_0796.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0796.f0' f0 -ascii;
save 'ap/tel_0796.ap' ap -ascii;
save 'sp/tel_0796.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0797.wav\n');
[x,fs]=wavread('wav/tel_0797.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0797.f0' f0 -ascii;
save 'ap/tel_0797.ap' ap -ascii;
save 'sp/tel_0797.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0798.wav\n');
[x,fs]=wavread('wav/tel_0798.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0798.f0' f0 -ascii;
save 'ap/tel_0798.ap' ap -ascii;
save 'sp/tel_0798.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0799.wav\n');
[x,fs]=wavread('wav/tel_0799.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0799.f0' f0 -ascii;
save 'ap/tel_0799.ap' ap -ascii;
save 'sp/tel_0799.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0800.wav\n');
[x,fs]=wavread('wav/tel_0800.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0800.f0' f0 -ascii;
save 'ap/tel_0800.ap' ap -ascii;
save 'sp/tel_0800.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0801.wav\n');
[x,fs]=wavread('wav/tel_0801.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0801.f0' f0 -ascii;
save 'ap/tel_0801.ap' ap -ascii;
save 'sp/tel_0801.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0802.wav\n');
[x,fs]=wavread('wav/tel_0802.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0802.f0' f0 -ascii;
save 'ap/tel_0802.ap' ap -ascii;
save 'sp/tel_0802.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0803.wav\n');
[x,fs]=wavread('wav/tel_0803.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0803.f0' f0 -ascii;
save 'ap/tel_0803.ap' ap -ascii;
save 'sp/tel_0803.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0804.wav\n');
[x,fs]=wavread('wav/tel_0804.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0804.f0' f0 -ascii;
save 'ap/tel_0804.ap' ap -ascii;
save 'sp/tel_0804.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0805.wav\n');
[x,fs]=wavread('wav/tel_0805.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0805.f0' f0 -ascii;
save 'ap/tel_0805.ap' ap -ascii;
save 'sp/tel_0805.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0806.wav\n');
[x,fs]=wavread('wav/tel_0806.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0806.f0' f0 -ascii;
save 'ap/tel_0806.ap' ap -ascii;
save 'sp/tel_0806.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0807.wav\n');
[x,fs]=wavread('wav/tel_0807.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0807.f0' f0 -ascii;
save 'ap/tel_0807.ap' ap -ascii;
save 'sp/tel_0807.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0808.wav\n');
[x,fs]=wavread('wav/tel_0808.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0808.f0' f0 -ascii;
save 'ap/tel_0808.ap' ap -ascii;
save 'sp/tel_0808.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0809.wav\n');
[x,fs]=wavread('wav/tel_0809.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0809.f0' f0 -ascii;
save 'ap/tel_0809.ap' ap -ascii;
save 'sp/tel_0809.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0810.wav\n');
[x,fs]=wavread('wav/tel_0810.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0810.f0' f0 -ascii;
save 'ap/tel_0810.ap' ap -ascii;
save 'sp/tel_0810.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0811.wav\n');
[x,fs]=wavread('wav/tel_0811.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0811.f0' f0 -ascii;
save 'ap/tel_0811.ap' ap -ascii;
save 'sp/tel_0811.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0812.wav\n');
[x,fs]=wavread('wav/tel_0812.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0812.f0' f0 -ascii;
save 'ap/tel_0812.ap' ap -ascii;
save 'sp/tel_0812.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0813.wav\n');
[x,fs]=wavread('wav/tel_0813.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0813.f0' f0 -ascii;
save 'ap/tel_0813.ap' ap -ascii;
save 'sp/tel_0813.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0814.wav\n');
[x,fs]=wavread('wav/tel_0814.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0814.f0' f0 -ascii;
save 'ap/tel_0814.ap' ap -ascii;
save 'sp/tel_0814.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0815.wav\n');
[x,fs]=wavread('wav/tel_0815.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0815.f0' f0 -ascii;
save 'ap/tel_0815.ap' ap -ascii;
save 'sp/tel_0815.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0816.wav\n');
[x,fs]=wavread('wav/tel_0816.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0816.f0' f0 -ascii;
save 'ap/tel_0816.ap' ap -ascii;
save 'sp/tel_0816.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0817.wav\n');
[x,fs]=wavread('wav/tel_0817.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0817.f0' f0 -ascii;
save 'ap/tel_0817.ap' ap -ascii;
save 'sp/tel_0817.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0818.wav\n');
[x,fs]=wavread('wav/tel_0818.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0818.f0' f0 -ascii;
save 'ap/tel_0818.ap' ap -ascii;
save 'sp/tel_0818.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0819.wav\n');
[x,fs]=wavread('wav/tel_0819.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0819.f0' f0 -ascii;
save 'ap/tel_0819.ap' ap -ascii;
save 'sp/tel_0819.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0820.wav\n');
[x,fs]=wavread('wav/tel_0820.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0820.f0' f0 -ascii;
save 'ap/tel_0820.ap' ap -ascii;
save 'sp/tel_0820.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0821.wav\n');
[x,fs]=wavread('wav/tel_0821.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0821.f0' f0 -ascii;
save 'ap/tel_0821.ap' ap -ascii;
save 'sp/tel_0821.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0822.wav\n');
[x,fs]=wavread('wav/tel_0822.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0822.f0' f0 -ascii;
save 'ap/tel_0822.ap' ap -ascii;
save 'sp/tel_0822.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0823.wav\n');
[x,fs]=wavread('wav/tel_0823.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0823.f0' f0 -ascii;
save 'ap/tel_0823.ap' ap -ascii;
save 'sp/tel_0823.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0824.wav\n');
[x,fs]=wavread('wav/tel_0824.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0824.f0' f0 -ascii;
save 'ap/tel_0824.ap' ap -ascii;
save 'sp/tel_0824.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0825.wav\n');
[x,fs]=wavread('wav/tel_0825.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0825.f0' f0 -ascii;
save 'ap/tel_0825.ap' ap -ascii;
save 'sp/tel_0825.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0826.wav\n');
[x,fs]=wavread('wav/tel_0826.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0826.f0' f0 -ascii;
save 'ap/tel_0826.ap' ap -ascii;
save 'sp/tel_0826.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0827.wav\n');
[x,fs]=wavread('wav/tel_0827.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0827.f0' f0 -ascii;
save 'ap/tel_0827.ap' ap -ascii;
save 'sp/tel_0827.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0828.wav\n');
[x,fs]=wavread('wav/tel_0828.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0828.f0' f0 -ascii;
save 'ap/tel_0828.ap' ap -ascii;
save 'sp/tel_0828.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0829.wav\n');
[x,fs]=wavread('wav/tel_0829.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0829.f0' f0 -ascii;
save 'ap/tel_0829.ap' ap -ascii;
save 'sp/tel_0829.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0830.wav\n');
[x,fs]=wavread('wav/tel_0830.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0830.f0' f0 -ascii;
save 'ap/tel_0830.ap' ap -ascii;
save 'sp/tel_0830.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0831.wav\n');
[x,fs]=wavread('wav/tel_0831.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0831.f0' f0 -ascii;
save 'ap/tel_0831.ap' ap -ascii;
save 'sp/tel_0831.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0832.wav\n');
[x,fs]=wavread('wav/tel_0832.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0832.f0' f0 -ascii;
save 'ap/tel_0832.ap' ap -ascii;
save 'sp/tel_0832.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0833.wav\n');
[x,fs]=wavread('wav/tel_0833.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0833.f0' f0 -ascii;
save 'ap/tel_0833.ap' ap -ascii;
save 'sp/tel_0833.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0834.wav\n');
[x,fs]=wavread('wav/tel_0834.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0834.f0' f0 -ascii;
save 'ap/tel_0834.ap' ap -ascii;
save 'sp/tel_0834.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0835.wav\n');
[x,fs]=wavread('wav/tel_0835.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0835.f0' f0 -ascii;
save 'ap/tel_0835.ap' ap -ascii;
save 'sp/tel_0835.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0836.wav\n');
[x,fs]=wavread('wav/tel_0836.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0836.f0' f0 -ascii;
save 'ap/tel_0836.ap' ap -ascii;
save 'sp/tel_0836.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0837.wav\n');
[x,fs]=wavread('wav/tel_0837.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0837.f0' f0 -ascii;
save 'ap/tel_0837.ap' ap -ascii;
save 'sp/tel_0837.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0838.wav\n');
[x,fs]=wavread('wav/tel_0838.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0838.f0' f0 -ascii;
save 'ap/tel_0838.ap' ap -ascii;
save 'sp/tel_0838.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0839.wav\n');
[x,fs]=wavread('wav/tel_0839.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0839.f0' f0 -ascii;
save 'ap/tel_0839.ap' ap -ascii;
save 'sp/tel_0839.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0840.wav\n');
[x,fs]=wavread('wav/tel_0840.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0840.f0' f0 -ascii;
save 'ap/tel_0840.ap' ap -ascii;
save 'sp/tel_0840.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0841.wav\n');
[x,fs]=wavread('wav/tel_0841.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0841.f0' f0 -ascii;
save 'ap/tel_0841.ap' ap -ascii;
save 'sp/tel_0841.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0842.wav\n');
[x,fs]=wavread('wav/tel_0842.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0842.f0' f0 -ascii;
save 'ap/tel_0842.ap' ap -ascii;
save 'sp/tel_0842.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0843.wav\n');
[x,fs]=wavread('wav/tel_0843.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0843.f0' f0 -ascii;
save 'ap/tel_0843.ap' ap -ascii;
save 'sp/tel_0843.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0844.wav\n');
[x,fs]=wavread('wav/tel_0844.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0844.f0' f0 -ascii;
save 'ap/tel_0844.ap' ap -ascii;
save 'sp/tel_0844.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0845.wav\n');
[x,fs]=wavread('wav/tel_0845.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0845.f0' f0 -ascii;
save 'ap/tel_0845.ap' ap -ascii;
save 'sp/tel_0845.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0846.wav\n');
[x,fs]=wavread('wav/tel_0846.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0846.f0' f0 -ascii;
save 'ap/tel_0846.ap' ap -ascii;
save 'sp/tel_0846.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0847.wav\n');
[x,fs]=wavread('wav/tel_0847.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0847.f0' f0 -ascii;
save 'ap/tel_0847.ap' ap -ascii;
save 'sp/tel_0847.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0848.wav\n');
[x,fs]=wavread('wav/tel_0848.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0848.f0' f0 -ascii;
save 'ap/tel_0848.ap' ap -ascii;
save 'sp/tel_0848.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0849.wav\n');
[x,fs]=wavread('wav/tel_0849.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0849.f0' f0 -ascii;
save 'ap/tel_0849.ap' ap -ascii;
save 'sp/tel_0849.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0850.wav\n');
[x,fs]=wavread('wav/tel_0850.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0850.f0' f0 -ascii;
save 'ap/tel_0850.ap' ap -ascii;
save 'sp/tel_0850.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0851.wav\n');
[x,fs]=wavread('wav/tel_0851.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0851.f0' f0 -ascii;
save 'ap/tel_0851.ap' ap -ascii;
save 'sp/tel_0851.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0852.wav\n');
[x,fs]=wavread('wav/tel_0852.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0852.f0' f0 -ascii;
save 'ap/tel_0852.ap' ap -ascii;
save 'sp/tel_0852.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0853.wav\n');
[x,fs]=wavread('wav/tel_0853.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0853.f0' f0 -ascii;
save 'ap/tel_0853.ap' ap -ascii;
save 'sp/tel_0853.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0854.wav\n');
[x,fs]=wavread('wav/tel_0854.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0854.f0' f0 -ascii;
save 'ap/tel_0854.ap' ap -ascii;
save 'sp/tel_0854.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0855.wav\n');
[x,fs]=wavread('wav/tel_0855.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0855.f0' f0 -ascii;
save 'ap/tel_0855.ap' ap -ascii;
save 'sp/tel_0855.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0856.wav\n');
[x,fs]=wavread('wav/tel_0856.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0856.f0' f0 -ascii;
save 'ap/tel_0856.ap' ap -ascii;
save 'sp/tel_0856.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0857.wav\n');
[x,fs]=wavread('wav/tel_0857.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0857.f0' f0 -ascii;
save 'ap/tel_0857.ap' ap -ascii;
save 'sp/tel_0857.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0858.wav\n');
[x,fs]=wavread('wav/tel_0858.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0858.f0' f0 -ascii;
save 'ap/tel_0858.ap' ap -ascii;
save 'sp/tel_0858.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0859.wav\n');
[x,fs]=wavread('wav/tel_0859.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0859.f0' f0 -ascii;
save 'ap/tel_0859.ap' ap -ascii;
save 'sp/tel_0859.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0860.wav\n');
[x,fs]=wavread('wav/tel_0860.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0860.f0' f0 -ascii;
save 'ap/tel_0860.ap' ap -ascii;
save 'sp/tel_0860.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0861.wav\n');
[x,fs]=wavread('wav/tel_0861.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0861.f0' f0 -ascii;
save 'ap/tel_0861.ap' ap -ascii;
save 'sp/tel_0861.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0862.wav\n');
[x,fs]=wavread('wav/tel_0862.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0862.f0' f0 -ascii;
save 'ap/tel_0862.ap' ap -ascii;
save 'sp/tel_0862.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0863.wav\n');
[x,fs]=wavread('wav/tel_0863.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0863.f0' f0 -ascii;
save 'ap/tel_0863.ap' ap -ascii;
save 'sp/tel_0863.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0864.wav\n');
[x,fs]=wavread('wav/tel_0864.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0864.f0' f0 -ascii;
save 'ap/tel_0864.ap' ap -ascii;
save 'sp/tel_0864.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0865.wav\n');
[x,fs]=wavread('wav/tel_0865.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0865.f0' f0 -ascii;
save 'ap/tel_0865.ap' ap -ascii;
save 'sp/tel_0865.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0866.wav\n');
[x,fs]=wavread('wav/tel_0866.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0866.f0' f0 -ascii;
save 'ap/tel_0866.ap' ap -ascii;
save 'sp/tel_0866.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0867.wav\n');
[x,fs]=wavread('wav/tel_0867.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0867.f0' f0 -ascii;
save 'ap/tel_0867.ap' ap -ascii;
save 'sp/tel_0867.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0868.wav\n');
[x,fs]=wavread('wav/tel_0868.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0868.f0' f0 -ascii;
save 'ap/tel_0868.ap' ap -ascii;
save 'sp/tel_0868.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0869.wav\n');
[x,fs]=wavread('wav/tel_0869.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0869.f0' f0 -ascii;
save 'ap/tel_0869.ap' ap -ascii;
save 'sp/tel_0869.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0870.wav\n');
[x,fs]=wavread('wav/tel_0870.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0870.f0' f0 -ascii;
save 'ap/tel_0870.ap' ap -ascii;
save 'sp/tel_0870.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0871.wav\n');
[x,fs]=wavread('wav/tel_0871.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0871.f0' f0 -ascii;
save 'ap/tel_0871.ap' ap -ascii;
save 'sp/tel_0871.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0872.wav\n');
[x,fs]=wavread('wav/tel_0872.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0872.f0' f0 -ascii;
save 'ap/tel_0872.ap' ap -ascii;
save 'sp/tel_0872.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0873.wav\n');
[x,fs]=wavread('wav/tel_0873.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0873.f0' f0 -ascii;
save 'ap/tel_0873.ap' ap -ascii;
save 'sp/tel_0873.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0874.wav\n');
[x,fs]=wavread('wav/tel_0874.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0874.f0' f0 -ascii;
save 'ap/tel_0874.ap' ap -ascii;
save 'sp/tel_0874.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0875.wav\n');
[x,fs]=wavread('wav/tel_0875.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0875.f0' f0 -ascii;
save 'ap/tel_0875.ap' ap -ascii;
save 'sp/tel_0875.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0876.wav\n');
[x,fs]=wavread('wav/tel_0876.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0876.f0' f0 -ascii;
save 'ap/tel_0876.ap' ap -ascii;
save 'sp/tel_0876.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0877.wav\n');
[x,fs]=wavread('wav/tel_0877.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0877.f0' f0 -ascii;
save 'ap/tel_0877.ap' ap -ascii;
save 'sp/tel_0877.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0878.wav\n');
[x,fs]=wavread('wav/tel_0878.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0878.f0' f0 -ascii;
save 'ap/tel_0878.ap' ap -ascii;
save 'sp/tel_0878.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0879.wav\n');
[x,fs]=wavread('wav/tel_0879.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0879.f0' f0 -ascii;
save 'ap/tel_0879.ap' ap -ascii;
save 'sp/tel_0879.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0880.wav\n');
[x,fs]=wavread('wav/tel_0880.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0880.f0' f0 -ascii;
save 'ap/tel_0880.ap' ap -ascii;
save 'sp/tel_0880.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0881.wav\n');
[x,fs]=wavread('wav/tel_0881.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0881.f0' f0 -ascii;
save 'ap/tel_0881.ap' ap -ascii;
save 'sp/tel_0881.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0882.wav\n');
[x,fs]=wavread('wav/tel_0882.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0882.f0' f0 -ascii;
save 'ap/tel_0882.ap' ap -ascii;
save 'sp/tel_0882.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0883.wav\n');
[x,fs]=wavread('wav/tel_0883.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0883.f0' f0 -ascii;
save 'ap/tel_0883.ap' ap -ascii;
save 'sp/tel_0883.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0884.wav\n');
[x,fs]=wavread('wav/tel_0884.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0884.f0' f0 -ascii;
save 'ap/tel_0884.ap' ap -ascii;
save 'sp/tel_0884.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0885.wav\n');
[x,fs]=wavread('wav/tel_0885.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0885.f0' f0 -ascii;
save 'ap/tel_0885.ap' ap -ascii;
save 'sp/tel_0885.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0886.wav\n');
[x,fs]=wavread('wav/tel_0886.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0886.f0' f0 -ascii;
save 'ap/tel_0886.ap' ap -ascii;
save 'sp/tel_0886.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0887.wav\n');
[x,fs]=wavread('wav/tel_0887.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0887.f0' f0 -ascii;
save 'ap/tel_0887.ap' ap -ascii;
save 'sp/tel_0887.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0888.wav\n');
[x,fs]=wavread('wav/tel_0888.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0888.f0' f0 -ascii;
save 'ap/tel_0888.ap' ap -ascii;
save 'sp/tel_0888.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0889.wav\n');
[x,fs]=wavread('wav/tel_0889.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0889.f0' f0 -ascii;
save 'ap/tel_0889.ap' ap -ascii;
save 'sp/tel_0889.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0890.wav\n');
[x,fs]=wavread('wav/tel_0890.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0890.f0' f0 -ascii;
save 'ap/tel_0890.ap' ap -ascii;
save 'sp/tel_0890.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0891.wav\n');
[x,fs]=wavread('wav/tel_0891.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0891.f0' f0 -ascii;
save 'ap/tel_0891.ap' ap -ascii;
save 'sp/tel_0891.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0892.wav\n');
[x,fs]=wavread('wav/tel_0892.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0892.f0' f0 -ascii;
save 'ap/tel_0892.ap' ap -ascii;
save 'sp/tel_0892.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0893.wav\n');
[x,fs]=wavread('wav/tel_0893.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0893.f0' f0 -ascii;
save 'ap/tel_0893.ap' ap -ascii;
save 'sp/tel_0893.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0894.wav\n');
[x,fs]=wavread('wav/tel_0894.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0894.f0' f0 -ascii;
save 'ap/tel_0894.ap' ap -ascii;
save 'sp/tel_0894.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0895.wav\n');
[x,fs]=wavread('wav/tel_0895.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0895.f0' f0 -ascii;
save 'ap/tel_0895.ap' ap -ascii;
save 'sp/tel_0895.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0896.wav\n');
[x,fs]=wavread('wav/tel_0896.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0896.f0' f0 -ascii;
save 'ap/tel_0896.ap' ap -ascii;
save 'sp/tel_0896.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0897.wav\n');
[x,fs]=wavread('wav/tel_0897.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0897.f0' f0 -ascii;
save 'ap/tel_0897.ap' ap -ascii;
save 'sp/tel_0897.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0898.wav\n');
[x,fs]=wavread('wav/tel_0898.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0898.f0' f0 -ascii;
save 'ap/tel_0898.ap' ap -ascii;
save 'sp/tel_0898.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0899.wav\n');
[x,fs]=wavread('wav/tel_0899.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0899.f0' f0 -ascii;
save 'ap/tel_0899.ap' ap -ascii;
save 'sp/tel_0899.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0900.wav\n');
[x,fs]=wavread('wav/tel_0900.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0900.f0' f0 -ascii;
save 'ap/tel_0900.ap' ap -ascii;
save 'sp/tel_0900.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0901.wav\n');
[x,fs]=wavread('wav/tel_0901.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0901.f0' f0 -ascii;
save 'ap/tel_0901.ap' ap -ascii;
save 'sp/tel_0901.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0902.wav\n');
[x,fs]=wavread('wav/tel_0902.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0902.f0' f0 -ascii;
save 'ap/tel_0902.ap' ap -ascii;
save 'sp/tel_0902.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0903.wav\n');
[x,fs]=wavread('wav/tel_0903.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0903.f0' f0 -ascii;
save 'ap/tel_0903.ap' ap -ascii;
save 'sp/tel_0903.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0904.wav\n');
[x,fs]=wavread('wav/tel_0904.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0904.f0' f0 -ascii;
save 'ap/tel_0904.ap' ap -ascii;
save 'sp/tel_0904.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0905.wav\n');
[x,fs]=wavread('wav/tel_0905.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0905.f0' f0 -ascii;
save 'ap/tel_0905.ap' ap -ascii;
save 'sp/tel_0905.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0906.wav\n');
[x,fs]=wavread('wav/tel_0906.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0906.f0' f0 -ascii;
save 'ap/tel_0906.ap' ap -ascii;
save 'sp/tel_0906.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0907.wav\n');
[x,fs]=wavread('wav/tel_0907.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0907.f0' f0 -ascii;
save 'ap/tel_0907.ap' ap -ascii;
save 'sp/tel_0907.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0908.wav\n');
[x,fs]=wavread('wav/tel_0908.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0908.f0' f0 -ascii;
save 'ap/tel_0908.ap' ap -ascii;
save 'sp/tel_0908.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0909.wav\n');
[x,fs]=wavread('wav/tel_0909.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0909.f0' f0 -ascii;
save 'ap/tel_0909.ap' ap -ascii;
save 'sp/tel_0909.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0910.wav\n');
[x,fs]=wavread('wav/tel_0910.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0910.f0' f0 -ascii;
save 'ap/tel_0910.ap' ap -ascii;
save 'sp/tel_0910.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0911.wav\n');
[x,fs]=wavread('wav/tel_0911.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0911.f0' f0 -ascii;
save 'ap/tel_0911.ap' ap -ascii;
save 'sp/tel_0911.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0912.wav\n');
[x,fs]=wavread('wav/tel_0912.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0912.f0' f0 -ascii;
save 'ap/tel_0912.ap' ap -ascii;
save 'sp/tel_0912.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0913.wav\n');
[x,fs]=wavread('wav/tel_0913.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0913.f0' f0 -ascii;
save 'ap/tel_0913.ap' ap -ascii;
save 'sp/tel_0913.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0914.wav\n');
[x,fs]=wavread('wav/tel_0914.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0914.f0' f0 -ascii;
save 'ap/tel_0914.ap' ap -ascii;
save 'sp/tel_0914.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0915.wav\n');
[x,fs]=wavread('wav/tel_0915.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0915.f0' f0 -ascii;
save 'ap/tel_0915.ap' ap -ascii;
save 'sp/tel_0915.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0916.wav\n');
[x,fs]=wavread('wav/tel_0916.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0916.f0' f0 -ascii;
save 'ap/tel_0916.ap' ap -ascii;
save 'sp/tel_0916.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0917.wav\n');
[x,fs]=wavread('wav/tel_0917.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0917.f0' f0 -ascii;
save 'ap/tel_0917.ap' ap -ascii;
save 'sp/tel_0917.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0918.wav\n');
[x,fs]=wavread('wav/tel_0918.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0918.f0' f0 -ascii;
save 'ap/tel_0918.ap' ap -ascii;
save 'sp/tel_0918.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0919.wav\n');
[x,fs]=wavread('wav/tel_0919.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0919.f0' f0 -ascii;
save 'ap/tel_0919.ap' ap -ascii;
save 'sp/tel_0919.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0920.wav\n');
[x,fs]=wavread('wav/tel_0920.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0920.f0' f0 -ascii;
save 'ap/tel_0920.ap' ap -ascii;
save 'sp/tel_0920.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0921.wav\n');
[x,fs]=wavread('wav/tel_0921.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0921.f0' f0 -ascii;
save 'ap/tel_0921.ap' ap -ascii;
save 'sp/tel_0921.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0922.wav\n');
[x,fs]=wavread('wav/tel_0922.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0922.f0' f0 -ascii;
save 'ap/tel_0922.ap' ap -ascii;
save 'sp/tel_0922.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0923.wav\n');
[x,fs]=wavread('wav/tel_0923.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0923.f0' f0 -ascii;
save 'ap/tel_0923.ap' ap -ascii;
save 'sp/tel_0923.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0924.wav\n');
[x,fs]=wavread('wav/tel_0924.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0924.f0' f0 -ascii;
save 'ap/tel_0924.ap' ap -ascii;
save 'sp/tel_0924.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0925.wav\n');
[x,fs]=wavread('wav/tel_0925.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0925.f0' f0 -ascii;
save 'ap/tel_0925.ap' ap -ascii;
save 'sp/tel_0925.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0926.wav\n');
[x,fs]=wavread('wav/tel_0926.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0926.f0' f0 -ascii;
save 'ap/tel_0926.ap' ap -ascii;
save 'sp/tel_0926.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0927.wav\n');
[x,fs]=wavread('wav/tel_0927.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0927.f0' f0 -ascii;
save 'ap/tel_0927.ap' ap -ascii;
save 'sp/tel_0927.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0928.wav\n');
[x,fs]=wavread('wav/tel_0928.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0928.f0' f0 -ascii;
save 'ap/tel_0928.ap' ap -ascii;
save 'sp/tel_0928.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0929.wav\n');
[x,fs]=wavread('wav/tel_0929.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0929.f0' f0 -ascii;
save 'ap/tel_0929.ap' ap -ascii;
save 'sp/tel_0929.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0930.wav\n');
[x,fs]=wavread('wav/tel_0930.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0930.f0' f0 -ascii;
save 'ap/tel_0930.ap' ap -ascii;
save 'sp/tel_0930.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0931.wav\n');
[x,fs]=wavread('wav/tel_0931.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0931.f0' f0 -ascii;
save 'ap/tel_0931.ap' ap -ascii;
save 'sp/tel_0931.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0932.wav\n');
[x,fs]=wavread('wav/tel_0932.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0932.f0' f0 -ascii;
save 'ap/tel_0932.ap' ap -ascii;
save 'sp/tel_0932.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0933.wav\n');
[x,fs]=wavread('wav/tel_0933.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0933.f0' f0 -ascii;
save 'ap/tel_0933.ap' ap -ascii;
save 'sp/tel_0933.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0934.wav\n');
[x,fs]=wavread('wav/tel_0934.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0934.f0' f0 -ascii;
save 'ap/tel_0934.ap' ap -ascii;
save 'sp/tel_0934.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0935.wav\n');
[x,fs]=wavread('wav/tel_0935.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0935.f0' f0 -ascii;
save 'ap/tel_0935.ap' ap -ascii;
save 'sp/tel_0935.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0936.wav\n');
[x,fs]=wavread('wav/tel_0936.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0936.f0' f0 -ascii;
save 'ap/tel_0936.ap' ap -ascii;
save 'sp/tel_0936.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0937.wav\n');
[x,fs]=wavread('wav/tel_0937.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0937.f0' f0 -ascii;
save 'ap/tel_0937.ap' ap -ascii;
save 'sp/tel_0937.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0938.wav\n');
[x,fs]=wavread('wav/tel_0938.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0938.f0' f0 -ascii;
save 'ap/tel_0938.ap' ap -ascii;
save 'sp/tel_0938.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0939.wav\n');
[x,fs]=wavread('wav/tel_0939.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0939.f0' f0 -ascii;
save 'ap/tel_0939.ap' ap -ascii;
save 'sp/tel_0939.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0940.wav\n');
[x,fs]=wavread('wav/tel_0940.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0940.f0' f0 -ascii;
save 'ap/tel_0940.ap' ap -ascii;
save 'sp/tel_0940.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0941.wav\n');
[x,fs]=wavread('wav/tel_0941.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0941.f0' f0 -ascii;
save 'ap/tel_0941.ap' ap -ascii;
save 'sp/tel_0941.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0942.wav\n');
[x,fs]=wavread('wav/tel_0942.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0942.f0' f0 -ascii;
save 'ap/tel_0942.ap' ap -ascii;
save 'sp/tel_0942.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0943.wav\n');
[x,fs]=wavread('wav/tel_0943.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0943.f0' f0 -ascii;
save 'ap/tel_0943.ap' ap -ascii;
save 'sp/tel_0943.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0944.wav\n');
[x,fs]=wavread('wav/tel_0944.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0944.f0' f0 -ascii;
save 'ap/tel_0944.ap' ap -ascii;
save 'sp/tel_0944.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0945.wav\n');
[x,fs]=wavread('wav/tel_0945.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0945.f0' f0 -ascii;
save 'ap/tel_0945.ap' ap -ascii;
save 'sp/tel_0945.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0946.wav\n');
[x,fs]=wavread('wav/tel_0946.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0946.f0' f0 -ascii;
save 'ap/tel_0946.ap' ap -ascii;
save 'sp/tel_0946.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0947.wav\n');
[x,fs]=wavread('wav/tel_0947.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0947.f0' f0 -ascii;
save 'ap/tel_0947.ap' ap -ascii;
save 'sp/tel_0947.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0948.wav\n');
[x,fs]=wavread('wav/tel_0948.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0948.f0' f0 -ascii;
save 'ap/tel_0948.ap' ap -ascii;
save 'sp/tel_0948.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0949.wav\n');
[x,fs]=wavread('wav/tel_0949.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0949.f0' f0 -ascii;
save 'ap/tel_0949.ap' ap -ascii;
save 'sp/tel_0949.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0950.wav\n');
[x,fs]=wavread('wav/tel_0950.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0950.f0' f0 -ascii;
save 'ap/tel_0950.ap' ap -ascii;
save 'sp/tel_0950.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0951.wav\n');
[x,fs]=wavread('wav/tel_0951.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0951.f0' f0 -ascii;
save 'ap/tel_0951.ap' ap -ascii;
save 'sp/tel_0951.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0952.wav\n');
[x,fs]=wavread('wav/tel_0952.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0952.f0' f0 -ascii;
save 'ap/tel_0952.ap' ap -ascii;
save 'sp/tel_0952.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0953.wav\n');
[x,fs]=wavread('wav/tel_0953.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0953.f0' f0 -ascii;
save 'ap/tel_0953.ap' ap -ascii;
save 'sp/tel_0953.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0954.wav\n');
[x,fs]=wavread('wav/tel_0954.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0954.f0' f0 -ascii;
save 'ap/tel_0954.ap' ap -ascii;
save 'sp/tel_0954.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0955.wav\n');
[x,fs]=wavread('wav/tel_0955.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0955.f0' f0 -ascii;
save 'ap/tel_0955.ap' ap -ascii;
save 'sp/tel_0955.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0956.wav\n');
[x,fs]=wavread('wav/tel_0956.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0956.f0' f0 -ascii;
save 'ap/tel_0956.ap' ap -ascii;
save 'sp/tel_0956.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0957.wav\n');
[x,fs]=wavread('wav/tel_0957.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0957.f0' f0 -ascii;
save 'ap/tel_0957.ap' ap -ascii;
save 'sp/tel_0957.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0958.wav\n');
[x,fs]=wavread('wav/tel_0958.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0958.f0' f0 -ascii;
save 'ap/tel_0958.ap' ap -ascii;
save 'sp/tel_0958.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0959.wav\n');
[x,fs]=wavread('wav/tel_0959.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0959.f0' f0 -ascii;
save 'ap/tel_0959.ap' ap -ascii;
save 'sp/tel_0959.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0960.wav\n');
[x,fs]=wavread('wav/tel_0960.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0960.f0' f0 -ascii;
save 'ap/tel_0960.ap' ap -ascii;
save 'sp/tel_0960.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0961.wav\n');
[x,fs]=wavread('wav/tel_0961.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0961.f0' f0 -ascii;
save 'ap/tel_0961.ap' ap -ascii;
save 'sp/tel_0961.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0962.wav\n');
[x,fs]=wavread('wav/tel_0962.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0962.f0' f0 -ascii;
save 'ap/tel_0962.ap' ap -ascii;
save 'sp/tel_0962.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0963.wav\n');
[x,fs]=wavread('wav/tel_0963.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0963.f0' f0 -ascii;
save 'ap/tel_0963.ap' ap -ascii;
save 'sp/tel_0963.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0964.wav\n');
[x,fs]=wavread('wav/tel_0964.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0964.f0' f0 -ascii;
save 'ap/tel_0964.ap' ap -ascii;
save 'sp/tel_0964.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0965.wav\n');
[x,fs]=wavread('wav/tel_0965.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0965.f0' f0 -ascii;
save 'ap/tel_0965.ap' ap -ascii;
save 'sp/tel_0965.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0966.wav\n');
[x,fs]=wavread('wav/tel_0966.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0966.f0' f0 -ascii;
save 'ap/tel_0966.ap' ap -ascii;
save 'sp/tel_0966.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0967.wav\n');
[x,fs]=wavread('wav/tel_0967.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0967.f0' f0 -ascii;
save 'ap/tel_0967.ap' ap -ascii;
save 'sp/tel_0967.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0968.wav\n');
[x,fs]=wavread('wav/tel_0968.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0968.f0' f0 -ascii;
save 'ap/tel_0968.ap' ap -ascii;
save 'sp/tel_0968.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0969.wav\n');
[x,fs]=wavread('wav/tel_0969.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0969.f0' f0 -ascii;
save 'ap/tel_0969.ap' ap -ascii;
save 'sp/tel_0969.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0970.wav\n');
[x,fs]=wavread('wav/tel_0970.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0970.f0' f0 -ascii;
save 'ap/tel_0970.ap' ap -ascii;
save 'sp/tel_0970.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0971.wav\n');
[x,fs]=wavread('wav/tel_0971.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0971.f0' f0 -ascii;
save 'ap/tel_0971.ap' ap -ascii;
save 'sp/tel_0971.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0972.wav\n');
[x,fs]=wavread('wav/tel_0972.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0972.f0' f0 -ascii;
save 'ap/tel_0972.ap' ap -ascii;
save 'sp/tel_0972.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0973.wav\n');
[x,fs]=wavread('wav/tel_0973.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0973.f0' f0 -ascii;
save 'ap/tel_0973.ap' ap -ascii;
save 'sp/tel_0973.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0974.wav\n');
[x,fs]=wavread('wav/tel_0974.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0974.f0' f0 -ascii;
save 'ap/tel_0974.ap' ap -ascii;
save 'sp/tel_0974.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0975.wav\n');
[x,fs]=wavread('wav/tel_0975.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0975.f0' f0 -ascii;
save 'ap/tel_0975.ap' ap -ascii;
save 'sp/tel_0975.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0976.wav\n');
[x,fs]=wavread('wav/tel_0976.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0976.f0' f0 -ascii;
save 'ap/tel_0976.ap' ap -ascii;
save 'sp/tel_0976.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0977.wav\n');
[x,fs]=wavread('wav/tel_0977.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0977.f0' f0 -ascii;
save 'ap/tel_0977.ap' ap -ascii;
save 'sp/tel_0977.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0978.wav\n');
[x,fs]=wavread('wav/tel_0978.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0978.f0' f0 -ascii;
save 'ap/tel_0978.ap' ap -ascii;
save 'sp/tel_0978.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0979.wav\n');
[x,fs]=wavread('wav/tel_0979.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0979.f0' f0 -ascii;
save 'ap/tel_0979.ap' ap -ascii;
save 'sp/tel_0979.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0980.wav\n');
[x,fs]=wavread('wav/tel_0980.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0980.f0' f0 -ascii;
save 'ap/tel_0980.ap' ap -ascii;
save 'sp/tel_0980.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0981.wav\n');
[x,fs]=wavread('wav/tel_0981.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0981.f0' f0 -ascii;
save 'ap/tel_0981.ap' ap -ascii;
save 'sp/tel_0981.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0982.wav\n');
[x,fs]=wavread('wav/tel_0982.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0982.f0' f0 -ascii;
save 'ap/tel_0982.ap' ap -ascii;
save 'sp/tel_0982.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0983.wav\n');
[x,fs]=wavread('wav/tel_0983.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0983.f0' f0 -ascii;
save 'ap/tel_0983.ap' ap -ascii;
save 'sp/tel_0983.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0984.wav\n');
[x,fs]=wavread('wav/tel_0984.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0984.f0' f0 -ascii;
save 'ap/tel_0984.ap' ap -ascii;
save 'sp/tel_0984.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0985.wav\n');
[x,fs]=wavread('wav/tel_0985.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0985.f0' f0 -ascii;
save 'ap/tel_0985.ap' ap -ascii;
save 'sp/tel_0985.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0986.wav\n');
[x,fs]=wavread('wav/tel_0986.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0986.f0' f0 -ascii;
save 'ap/tel_0986.ap' ap -ascii;
save 'sp/tel_0986.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0987.wav\n');
[x,fs]=wavread('wav/tel_0987.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0987.f0' f0 -ascii;
save 'ap/tel_0987.ap' ap -ascii;
save 'sp/tel_0987.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0988.wav\n');
[x,fs]=wavread('wav/tel_0988.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0988.f0' f0 -ascii;
save 'ap/tel_0988.ap' ap -ascii;
save 'sp/tel_0988.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0989.wav\n');
[x,fs]=wavread('wav/tel_0989.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0989.f0' f0 -ascii;
save 'ap/tel_0989.ap' ap -ascii;
save 'sp/tel_0989.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0990.wav\n');
[x,fs]=wavread('wav/tel_0990.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0990.f0' f0 -ascii;
save 'ap/tel_0990.ap' ap -ascii;
save 'sp/tel_0990.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0991.wav\n');
[x,fs]=wavread('wav/tel_0991.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0991.f0' f0 -ascii;
save 'ap/tel_0991.ap' ap -ascii;
save 'sp/tel_0991.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0992.wav\n');
[x,fs]=wavread('wav/tel_0992.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0992.f0' f0 -ascii;
save 'ap/tel_0992.ap' ap -ascii;
save 'sp/tel_0992.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0993.wav\n');
[x,fs]=wavread('wav/tel_0993.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0993.f0' f0 -ascii;
save 'ap/tel_0993.ap' ap -ascii;
save 'sp/tel_0993.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0994.wav\n');
[x,fs]=wavread('wav/tel_0994.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0994.f0' f0 -ascii;
save 'ap/tel_0994.ap' ap -ascii;
save 'sp/tel_0994.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0995.wav\n');
[x,fs]=wavread('wav/tel_0995.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0995.f0' f0 -ascii;
save 'ap/tel_0995.ap' ap -ascii;
save 'sp/tel_0995.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0996.wav\n');
[x,fs]=wavread('wav/tel_0996.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0996.f0' f0 -ascii;
save 'ap/tel_0996.ap' ap -ascii;
save 'sp/tel_0996.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0997.wav\n');
[x,fs]=wavread('wav/tel_0997.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0997.f0' f0 -ascii;
save 'ap/tel_0997.ap' ap -ascii;
save 'sp/tel_0997.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0998.wav\n');
[x,fs]=wavread('wav/tel_0998.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0998.f0' f0 -ascii;
save 'ap/tel_0998.ap' ap -ascii;
save 'sp/tel_0998.sp' sp -ascii;

fprintf(1,'Processing wav/tel_0999.wav\n');
[x,fs]=wavread('wav/tel_0999.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_0999.f0' f0 -ascii;
save 'ap/tel_0999.ap' ap -ascii;
save 'sp/tel_0999.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1000.wav\n');
[x,fs]=wavread('wav/tel_1000.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1000.f0' f0 -ascii;
save 'ap/tel_1000.ap' ap -ascii;
save 'sp/tel_1000.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1001.wav\n');
[x,fs]=wavread('wav/tel_1001.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1001.f0' f0 -ascii;
save 'ap/tel_1001.ap' ap -ascii;
save 'sp/tel_1001.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1002.wav\n');
[x,fs]=wavread('wav/tel_1002.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1002.f0' f0 -ascii;
save 'ap/tel_1002.ap' ap -ascii;
save 'sp/tel_1002.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1003.wav\n');
[x,fs]=wavread('wav/tel_1003.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1003.f0' f0 -ascii;
save 'ap/tel_1003.ap' ap -ascii;
save 'sp/tel_1003.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1004.wav\n');
[x,fs]=wavread('wav/tel_1004.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1004.f0' f0 -ascii;
save 'ap/tel_1004.ap' ap -ascii;
save 'sp/tel_1004.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1005.wav\n');
[x,fs]=wavread('wav/tel_1005.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1005.f0' f0 -ascii;
save 'ap/tel_1005.ap' ap -ascii;
save 'sp/tel_1005.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1006.wav\n');
[x,fs]=wavread('wav/tel_1006.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1006.f0' f0 -ascii;
save 'ap/tel_1006.ap' ap -ascii;
save 'sp/tel_1006.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1007.wav\n');
[x,fs]=wavread('wav/tel_1007.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1007.f0' f0 -ascii;
save 'ap/tel_1007.ap' ap -ascii;
save 'sp/tel_1007.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1008.wav\n');
[x,fs]=wavread('wav/tel_1008.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1008.f0' f0 -ascii;
save 'ap/tel_1008.ap' ap -ascii;
save 'sp/tel_1008.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1009.wav\n');
[x,fs]=wavread('wav/tel_1009.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1009.f0' f0 -ascii;
save 'ap/tel_1009.ap' ap -ascii;
save 'sp/tel_1009.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1010.wav\n');
[x,fs]=wavread('wav/tel_1010.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1010.f0' f0 -ascii;
save 'ap/tel_1010.ap' ap -ascii;
save 'sp/tel_1010.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1011.wav\n');
[x,fs]=wavread('wav/tel_1011.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1011.f0' f0 -ascii;
save 'ap/tel_1011.ap' ap -ascii;
save 'sp/tel_1011.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1012.wav\n');
[x,fs]=wavread('wav/tel_1012.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1012.f0' f0 -ascii;
save 'ap/tel_1012.ap' ap -ascii;
save 'sp/tel_1012.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1013.wav\n');
[x,fs]=wavread('wav/tel_1013.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1013.f0' f0 -ascii;
save 'ap/tel_1013.ap' ap -ascii;
save 'sp/tel_1013.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1014.wav\n');
[x,fs]=wavread('wav/tel_1014.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1014.f0' f0 -ascii;
save 'ap/tel_1014.ap' ap -ascii;
save 'sp/tel_1014.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1015.wav\n');
[x,fs]=wavread('wav/tel_1015.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1015.f0' f0 -ascii;
save 'ap/tel_1015.ap' ap -ascii;
save 'sp/tel_1015.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1016.wav\n');
[x,fs]=wavread('wav/tel_1016.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1016.f0' f0 -ascii;
save 'ap/tel_1016.ap' ap -ascii;
save 'sp/tel_1016.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1017.wav\n');
[x,fs]=wavread('wav/tel_1017.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1017.f0' f0 -ascii;
save 'ap/tel_1017.ap' ap -ascii;
save 'sp/tel_1017.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1018.wav\n');
[x,fs]=wavread('wav/tel_1018.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1018.f0' f0 -ascii;
save 'ap/tel_1018.ap' ap -ascii;
save 'sp/tel_1018.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1019.wav\n');
[x,fs]=wavread('wav/tel_1019.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1019.f0' f0 -ascii;
save 'ap/tel_1019.ap' ap -ascii;
save 'sp/tel_1019.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1020.wav\n');
[x,fs]=wavread('wav/tel_1020.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1020.f0' f0 -ascii;
save 'ap/tel_1020.ap' ap -ascii;
save 'sp/tel_1020.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1021.wav\n');
[x,fs]=wavread('wav/tel_1021.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1021.f0' f0 -ascii;
save 'ap/tel_1021.ap' ap -ascii;
save 'sp/tel_1021.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1022.wav\n');
[x,fs]=wavread('wav/tel_1022.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1022.f0' f0 -ascii;
save 'ap/tel_1022.ap' ap -ascii;
save 'sp/tel_1022.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1023.wav\n');
[x,fs]=wavread('wav/tel_1023.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1023.f0' f0 -ascii;
save 'ap/tel_1023.ap' ap -ascii;
save 'sp/tel_1023.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1024.wav\n');
[x,fs]=wavread('wav/tel_1024.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1024.f0' f0 -ascii;
save 'ap/tel_1024.ap' ap -ascii;
save 'sp/tel_1024.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1025.wav\n');
[x,fs]=wavread('wav/tel_1025.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1025.f0' f0 -ascii;
save 'ap/tel_1025.ap' ap -ascii;
save 'sp/tel_1025.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1026.wav\n');
[x,fs]=wavread('wav/tel_1026.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1026.f0' f0 -ascii;
save 'ap/tel_1026.ap' ap -ascii;
save 'sp/tel_1026.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1027.wav\n');
[x,fs]=wavread('wav/tel_1027.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1027.f0' f0 -ascii;
save 'ap/tel_1027.ap' ap -ascii;
save 'sp/tel_1027.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1028.wav\n');
[x,fs]=wavread('wav/tel_1028.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1028.f0' f0 -ascii;
save 'ap/tel_1028.ap' ap -ascii;
save 'sp/tel_1028.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1029.wav\n');
[x,fs]=wavread('wav/tel_1029.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1029.f0' f0 -ascii;
save 'ap/tel_1029.ap' ap -ascii;
save 'sp/tel_1029.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1030.wav\n');
[x,fs]=wavread('wav/tel_1030.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1030.f0' f0 -ascii;
save 'ap/tel_1030.ap' ap -ascii;
save 'sp/tel_1030.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1031.wav\n');
[x,fs]=wavread('wav/tel_1031.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1031.f0' f0 -ascii;
save 'ap/tel_1031.ap' ap -ascii;
save 'sp/tel_1031.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1032.wav\n');
[x,fs]=wavread('wav/tel_1032.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1032.f0' f0 -ascii;
save 'ap/tel_1032.ap' ap -ascii;
save 'sp/tel_1032.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1033.wav\n');
[x,fs]=wavread('wav/tel_1033.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1033.f0' f0 -ascii;
save 'ap/tel_1033.ap' ap -ascii;
save 'sp/tel_1033.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1034.wav\n');
[x,fs]=wavread('wav/tel_1034.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1034.f0' f0 -ascii;
save 'ap/tel_1034.ap' ap -ascii;
save 'sp/tel_1034.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1035.wav\n');
[x,fs]=wavread('wav/tel_1035.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1035.f0' f0 -ascii;
save 'ap/tel_1035.ap' ap -ascii;
save 'sp/tel_1035.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1036.wav\n');
[x,fs]=wavread('wav/tel_1036.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1036.f0' f0 -ascii;
save 'ap/tel_1036.ap' ap -ascii;
save 'sp/tel_1036.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1037.wav\n');
[x,fs]=wavread('wav/tel_1037.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1037.f0' f0 -ascii;
save 'ap/tel_1037.ap' ap -ascii;
save 'sp/tel_1037.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1038.wav\n');
[x,fs]=wavread('wav/tel_1038.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1038.f0' f0 -ascii;
save 'ap/tel_1038.ap' ap -ascii;
save 'sp/tel_1038.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1039.wav\n');
[x,fs]=wavread('wav/tel_1039.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1039.f0' f0 -ascii;
save 'ap/tel_1039.ap' ap -ascii;
save 'sp/tel_1039.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1040.wav\n');
[x,fs]=wavread('wav/tel_1040.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1040.f0' f0 -ascii;
save 'ap/tel_1040.ap' ap -ascii;
save 'sp/tel_1040.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1041.wav\n');
[x,fs]=wavread('wav/tel_1041.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1041.f0' f0 -ascii;
save 'ap/tel_1041.ap' ap -ascii;
save 'sp/tel_1041.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1042.wav\n');
[x,fs]=wavread('wav/tel_1042.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1042.f0' f0 -ascii;
save 'ap/tel_1042.ap' ap -ascii;
save 'sp/tel_1042.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1043.wav\n');
[x,fs]=wavread('wav/tel_1043.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1043.f0' f0 -ascii;
save 'ap/tel_1043.ap' ap -ascii;
save 'sp/tel_1043.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1044.wav\n');
[x,fs]=wavread('wav/tel_1044.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1044.f0' f0 -ascii;
save 'ap/tel_1044.ap' ap -ascii;
save 'sp/tel_1044.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1045.wav\n');
[x,fs]=wavread('wav/tel_1045.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1045.f0' f0 -ascii;
save 'ap/tel_1045.ap' ap -ascii;
save 'sp/tel_1045.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1046.wav\n');
[x,fs]=wavread('wav/tel_1046.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1046.f0' f0 -ascii;
save 'ap/tel_1046.ap' ap -ascii;
save 'sp/tel_1046.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1047.wav\n');
[x,fs]=wavread('wav/tel_1047.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1047.f0' f0 -ascii;
save 'ap/tel_1047.ap' ap -ascii;
save 'sp/tel_1047.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1048.wav\n');
[x,fs]=wavread('wav/tel_1048.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1048.f0' f0 -ascii;
save 'ap/tel_1048.ap' ap -ascii;
save 'sp/tel_1048.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1049.wav\n');
[x,fs]=wavread('wav/tel_1049.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1049.f0' f0 -ascii;
save 'ap/tel_1049.ap' ap -ascii;
save 'sp/tel_1049.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1050.wav\n');
[x,fs]=wavread('wav/tel_1050.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1050.f0' f0 -ascii;
save 'ap/tel_1050.ap' ap -ascii;
save 'sp/tel_1050.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1051.wav\n');
[x,fs]=wavread('wav/tel_1051.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1051.f0' f0 -ascii;
save 'ap/tel_1051.ap' ap -ascii;
save 'sp/tel_1051.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1052.wav\n');
[x,fs]=wavread('wav/tel_1052.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1052.f0' f0 -ascii;
save 'ap/tel_1052.ap' ap -ascii;
save 'sp/tel_1052.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1053.wav\n');
[x,fs]=wavread('wav/tel_1053.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1053.f0' f0 -ascii;
save 'ap/tel_1053.ap' ap -ascii;
save 'sp/tel_1053.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1054.wav\n');
[x,fs]=wavread('wav/tel_1054.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1054.f0' f0 -ascii;
save 'ap/tel_1054.ap' ap -ascii;
save 'sp/tel_1054.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1055.wav\n');
[x,fs]=wavread('wav/tel_1055.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1055.f0' f0 -ascii;
save 'ap/tel_1055.ap' ap -ascii;
save 'sp/tel_1055.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1056.wav\n');
[x,fs]=wavread('wav/tel_1056.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1056.f0' f0 -ascii;
save 'ap/tel_1056.ap' ap -ascii;
save 'sp/tel_1056.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1057.wav\n');
[x,fs]=wavread('wav/tel_1057.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1057.f0' f0 -ascii;
save 'ap/tel_1057.ap' ap -ascii;
save 'sp/tel_1057.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1058.wav\n');
[x,fs]=wavread('wav/tel_1058.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1058.f0' f0 -ascii;
save 'ap/tel_1058.ap' ap -ascii;
save 'sp/tel_1058.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1059.wav\n');
[x,fs]=wavread('wav/tel_1059.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1059.f0' f0 -ascii;
save 'ap/tel_1059.ap' ap -ascii;
save 'sp/tel_1059.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1060.wav\n');
[x,fs]=wavread('wav/tel_1060.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1060.f0' f0 -ascii;
save 'ap/tel_1060.ap' ap -ascii;
save 'sp/tel_1060.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1061.wav\n');
[x,fs]=wavread('wav/tel_1061.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1061.f0' f0 -ascii;
save 'ap/tel_1061.ap' ap -ascii;
save 'sp/tel_1061.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1062.wav\n');
[x,fs]=wavread('wav/tel_1062.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1062.f0' f0 -ascii;
save 'ap/tel_1062.ap' ap -ascii;
save 'sp/tel_1062.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1063.wav\n');
[x,fs]=wavread('wav/tel_1063.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1063.f0' f0 -ascii;
save 'ap/tel_1063.ap' ap -ascii;
save 'sp/tel_1063.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1064.wav\n');
[x,fs]=wavread('wav/tel_1064.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1064.f0' f0 -ascii;
save 'ap/tel_1064.ap' ap -ascii;
save 'sp/tel_1064.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1065.wav\n');
[x,fs]=wavread('wav/tel_1065.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1065.f0' f0 -ascii;
save 'ap/tel_1065.ap' ap -ascii;
save 'sp/tel_1065.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1066.wav\n');
[x,fs]=wavread('wav/tel_1066.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1066.f0' f0 -ascii;
save 'ap/tel_1066.ap' ap -ascii;
save 'sp/tel_1066.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1067.wav\n');
[x,fs]=wavread('wav/tel_1067.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1067.f0' f0 -ascii;
save 'ap/tel_1067.ap' ap -ascii;
save 'sp/tel_1067.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1068.wav\n');
[x,fs]=wavread('wav/tel_1068.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1068.f0' f0 -ascii;
save 'ap/tel_1068.ap' ap -ascii;
save 'sp/tel_1068.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1069.wav\n');
[x,fs]=wavread('wav/tel_1069.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1069.f0' f0 -ascii;
save 'ap/tel_1069.ap' ap -ascii;
save 'sp/tel_1069.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1070.wav\n');
[x,fs]=wavread('wav/tel_1070.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1070.f0' f0 -ascii;
save 'ap/tel_1070.ap' ap -ascii;
save 'sp/tel_1070.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1071.wav\n');
[x,fs]=wavread('wav/tel_1071.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1071.f0' f0 -ascii;
save 'ap/tel_1071.ap' ap -ascii;
save 'sp/tel_1071.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1072.wav\n');
[x,fs]=wavread('wav/tel_1072.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1072.f0' f0 -ascii;
save 'ap/tel_1072.ap' ap -ascii;
save 'sp/tel_1072.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1073.wav\n');
[x,fs]=wavread('wav/tel_1073.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1073.f0' f0 -ascii;
save 'ap/tel_1073.ap' ap -ascii;
save 'sp/tel_1073.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1074.wav\n');
[x,fs]=wavread('wav/tel_1074.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1074.f0' f0 -ascii;
save 'ap/tel_1074.ap' ap -ascii;
save 'sp/tel_1074.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1075.wav\n');
[x,fs]=wavread('wav/tel_1075.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1075.f0' f0 -ascii;
save 'ap/tel_1075.ap' ap -ascii;
save 'sp/tel_1075.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1076.wav\n');
[x,fs]=wavread('wav/tel_1076.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1076.f0' f0 -ascii;
save 'ap/tel_1076.ap' ap -ascii;
save 'sp/tel_1076.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1077.wav\n');
[x,fs]=wavread('wav/tel_1077.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1077.f0' f0 -ascii;
save 'ap/tel_1077.ap' ap -ascii;
save 'sp/tel_1077.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1078.wav\n');
[x,fs]=wavread('wav/tel_1078.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1078.f0' f0 -ascii;
save 'ap/tel_1078.ap' ap -ascii;
save 'sp/tel_1078.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1079.wav\n');
[x,fs]=wavread('wav/tel_1079.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1079.f0' f0 -ascii;
save 'ap/tel_1079.ap' ap -ascii;
save 'sp/tel_1079.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1080.wav\n');
[x,fs]=wavread('wav/tel_1080.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1080.f0' f0 -ascii;
save 'ap/tel_1080.ap' ap -ascii;
save 'sp/tel_1080.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1081.wav\n');
[x,fs]=wavread('wav/tel_1081.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1081.f0' f0 -ascii;
save 'ap/tel_1081.ap' ap -ascii;
save 'sp/tel_1081.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1082.wav\n');
[x,fs]=wavread('wav/tel_1082.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1082.f0' f0 -ascii;
save 'ap/tel_1082.ap' ap -ascii;
save 'sp/tel_1082.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1083.wav\n');
[x,fs]=wavread('wav/tel_1083.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1083.f0' f0 -ascii;
save 'ap/tel_1083.ap' ap -ascii;
save 'sp/tel_1083.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1084.wav\n');
[x,fs]=wavread('wav/tel_1084.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1084.f0' f0 -ascii;
save 'ap/tel_1084.ap' ap -ascii;
save 'sp/tel_1084.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1085.wav\n');
[x,fs]=wavread('wav/tel_1085.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1085.f0' f0 -ascii;
save 'ap/tel_1085.ap' ap -ascii;
save 'sp/tel_1085.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1086.wav\n');
[x,fs]=wavread('wav/tel_1086.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1086.f0' f0 -ascii;
save 'ap/tel_1086.ap' ap -ascii;
save 'sp/tel_1086.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1087.wav\n');
[x,fs]=wavread('wav/tel_1087.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1087.f0' f0 -ascii;
save 'ap/tel_1087.ap' ap -ascii;
save 'sp/tel_1087.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1088.wav\n');
[x,fs]=wavread('wav/tel_1088.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1088.f0' f0 -ascii;
save 'ap/tel_1088.ap' ap -ascii;
save 'sp/tel_1088.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1089.wav\n');
[x,fs]=wavread('wav/tel_1089.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1089.f0' f0 -ascii;
save 'ap/tel_1089.ap' ap -ascii;
save 'sp/tel_1089.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1090.wav\n');
[x,fs]=wavread('wav/tel_1090.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1090.f0' f0 -ascii;
save 'ap/tel_1090.ap' ap -ascii;
save 'sp/tel_1090.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1091.wav\n');
[x,fs]=wavread('wav/tel_1091.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1091.f0' f0 -ascii;
save 'ap/tel_1091.ap' ap -ascii;
save 'sp/tel_1091.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1092.wav\n');
[x,fs]=wavread('wav/tel_1092.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1092.f0' f0 -ascii;
save 'ap/tel_1092.ap' ap -ascii;
save 'sp/tel_1092.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1093.wav\n');
[x,fs]=wavread('wav/tel_1093.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1093.f0' f0 -ascii;
save 'ap/tel_1093.ap' ap -ascii;
save 'sp/tel_1093.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1094.wav\n');
[x,fs]=wavread('wav/tel_1094.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1094.f0' f0 -ascii;
save 'ap/tel_1094.ap' ap -ascii;
save 'sp/tel_1094.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1095.wav\n');
[x,fs]=wavread('wav/tel_1095.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1095.f0' f0 -ascii;
save 'ap/tel_1095.ap' ap -ascii;
save 'sp/tel_1095.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1096.wav\n');
[x,fs]=wavread('wav/tel_1096.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1096.f0' f0 -ascii;
save 'ap/tel_1096.ap' ap -ascii;
save 'sp/tel_1096.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1097.wav\n');
[x,fs]=wavread('wav/tel_1097.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1097.f0' f0 -ascii;
save 'ap/tel_1097.ap' ap -ascii;
save 'sp/tel_1097.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1098.wav\n');
[x,fs]=wavread('wav/tel_1098.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1098.f0' f0 -ascii;
save 'ap/tel_1098.ap' ap -ascii;
save 'sp/tel_1098.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1099.wav\n');
[x,fs]=wavread('wav/tel_1099.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1099.f0' f0 -ascii;
save 'ap/tel_1099.ap' ap -ascii;
save 'sp/tel_1099.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1100.wav\n');
[x,fs]=wavread('wav/tel_1100.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1100.f0' f0 -ascii;
save 'ap/tel_1100.ap' ap -ascii;
save 'sp/tel_1100.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1101.wav\n');
[x,fs]=wavread('wav/tel_1101.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1101.f0' f0 -ascii;
save 'ap/tel_1101.ap' ap -ascii;
save 'sp/tel_1101.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1102.wav\n');
[x,fs]=wavread('wav/tel_1102.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1102.f0' f0 -ascii;
save 'ap/tel_1102.ap' ap -ascii;
save 'sp/tel_1102.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1103.wav\n');
[x,fs]=wavread('wav/tel_1103.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1103.f0' f0 -ascii;
save 'ap/tel_1103.ap' ap -ascii;
save 'sp/tel_1103.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1104.wav\n');
[x,fs]=wavread('wav/tel_1104.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1104.f0' f0 -ascii;
save 'ap/tel_1104.ap' ap -ascii;
save 'sp/tel_1104.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1105.wav\n');
[x,fs]=wavread('wav/tel_1105.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1105.f0' f0 -ascii;
save 'ap/tel_1105.ap' ap -ascii;
save 'sp/tel_1105.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1106.wav\n');
[x,fs]=wavread('wav/tel_1106.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1106.f0' f0 -ascii;
save 'ap/tel_1106.ap' ap -ascii;
save 'sp/tel_1106.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1107.wav\n');
[x,fs]=wavread('wav/tel_1107.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1107.f0' f0 -ascii;
save 'ap/tel_1107.ap' ap -ascii;
save 'sp/tel_1107.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1108.wav\n');
[x,fs]=wavread('wav/tel_1108.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1108.f0' f0 -ascii;
save 'ap/tel_1108.ap' ap -ascii;
save 'sp/tel_1108.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1109.wav\n');
[x,fs]=wavread('wav/tel_1109.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1109.f0' f0 -ascii;
save 'ap/tel_1109.ap' ap -ascii;
save 'sp/tel_1109.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1110.wav\n');
[x,fs]=wavread('wav/tel_1110.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1110.f0' f0 -ascii;
save 'ap/tel_1110.ap' ap -ascii;
save 'sp/tel_1110.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1111.wav\n');
[x,fs]=wavread('wav/tel_1111.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1111.f0' f0 -ascii;
save 'ap/tel_1111.ap' ap -ascii;
save 'sp/tel_1111.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1112.wav\n');
[x,fs]=wavread('wav/tel_1112.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1112.f0' f0 -ascii;
save 'ap/tel_1112.ap' ap -ascii;
save 'sp/tel_1112.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1113.wav\n');
[x,fs]=wavread('wav/tel_1113.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1113.f0' f0 -ascii;
save 'ap/tel_1113.ap' ap -ascii;
save 'sp/tel_1113.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1114.wav\n');
[x,fs]=wavread('wav/tel_1114.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1114.f0' f0 -ascii;
save 'ap/tel_1114.ap' ap -ascii;
save 'sp/tel_1114.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1115.wav\n');
[x,fs]=wavread('wav/tel_1115.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1115.f0' f0 -ascii;
save 'ap/tel_1115.ap' ap -ascii;
save 'sp/tel_1115.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1116.wav\n');
[x,fs]=wavread('wav/tel_1116.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1116.f0' f0 -ascii;
save 'ap/tel_1116.ap' ap -ascii;
save 'sp/tel_1116.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1117.wav\n');
[x,fs]=wavread('wav/tel_1117.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1117.f0' f0 -ascii;
save 'ap/tel_1117.ap' ap -ascii;
save 'sp/tel_1117.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1118.wav\n');
[x,fs]=wavread('wav/tel_1118.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1118.f0' f0 -ascii;
save 'ap/tel_1118.ap' ap -ascii;
save 'sp/tel_1118.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1119.wav\n');
[x,fs]=wavread('wav/tel_1119.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1119.f0' f0 -ascii;
save 'ap/tel_1119.ap' ap -ascii;
save 'sp/tel_1119.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1120.wav\n');
[x,fs]=wavread('wav/tel_1120.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1120.f0' f0 -ascii;
save 'ap/tel_1120.ap' ap -ascii;
save 'sp/tel_1120.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1121.wav\n');
[x,fs]=wavread('wav/tel_1121.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1121.f0' f0 -ascii;
save 'ap/tel_1121.ap' ap -ascii;
save 'sp/tel_1121.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1122.wav\n');
[x,fs]=wavread('wav/tel_1122.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1122.f0' f0 -ascii;
save 'ap/tel_1122.ap' ap -ascii;
save 'sp/tel_1122.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1123.wav\n');
[x,fs]=wavread('wav/tel_1123.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1123.f0' f0 -ascii;
save 'ap/tel_1123.ap' ap -ascii;
save 'sp/tel_1123.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1124.wav\n');
[x,fs]=wavread('wav/tel_1124.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1124.f0' f0 -ascii;
save 'ap/tel_1124.ap' ap -ascii;
save 'sp/tel_1124.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1125.wav\n');
[x,fs]=wavread('wav/tel_1125.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1125.f0' f0 -ascii;
save 'ap/tel_1125.ap' ap -ascii;
save 'sp/tel_1125.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1126.wav\n');
[x,fs]=wavread('wav/tel_1126.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1126.f0' f0 -ascii;
save 'ap/tel_1126.ap' ap -ascii;
save 'sp/tel_1126.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1127.wav\n');
[x,fs]=wavread('wav/tel_1127.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1127.f0' f0 -ascii;
save 'ap/tel_1127.ap' ap -ascii;
save 'sp/tel_1127.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1128.wav\n');
[x,fs]=wavread('wav/tel_1128.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1128.f0' f0 -ascii;
save 'ap/tel_1128.ap' ap -ascii;
save 'sp/tel_1128.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1129.wav\n');
[x,fs]=wavread('wav/tel_1129.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1129.f0' f0 -ascii;
save 'ap/tel_1129.ap' ap -ascii;
save 'sp/tel_1129.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1130.wav\n');
[x,fs]=wavread('wav/tel_1130.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1130.f0' f0 -ascii;
save 'ap/tel_1130.ap' ap -ascii;
save 'sp/tel_1130.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1131.wav\n');
[x,fs]=wavread('wav/tel_1131.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1131.f0' f0 -ascii;
save 'ap/tel_1131.ap' ap -ascii;
save 'sp/tel_1131.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1132.wav\n');
[x,fs]=wavread('wav/tel_1132.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1132.f0' f0 -ascii;
save 'ap/tel_1132.ap' ap -ascii;
save 'sp/tel_1132.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1133.wav\n');
[x,fs]=wavread('wav/tel_1133.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1133.f0' f0 -ascii;
save 'ap/tel_1133.ap' ap -ascii;
save 'sp/tel_1133.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1134.wav\n');
[x,fs]=wavread('wav/tel_1134.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1134.f0' f0 -ascii;
save 'ap/tel_1134.ap' ap -ascii;
save 'sp/tel_1134.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1135.wav\n');
[x,fs]=wavread('wav/tel_1135.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1135.f0' f0 -ascii;
save 'ap/tel_1135.ap' ap -ascii;
save 'sp/tel_1135.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1136.wav\n');
[x,fs]=wavread('wav/tel_1136.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1136.f0' f0 -ascii;
save 'ap/tel_1136.ap' ap -ascii;
save 'sp/tel_1136.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1137.wav\n');
[x,fs]=wavread('wav/tel_1137.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1137.f0' f0 -ascii;
save 'ap/tel_1137.ap' ap -ascii;
save 'sp/tel_1137.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1138.wav\n');
[x,fs]=wavread('wav/tel_1138.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1138.f0' f0 -ascii;
save 'ap/tel_1138.ap' ap -ascii;
save 'sp/tel_1138.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1139.wav\n');
[x,fs]=wavread('wav/tel_1139.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1139.f0' f0 -ascii;
save 'ap/tel_1139.ap' ap -ascii;
save 'sp/tel_1139.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1140.wav\n');
[x,fs]=wavread('wav/tel_1140.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1140.f0' f0 -ascii;
save 'ap/tel_1140.ap' ap -ascii;
save 'sp/tel_1140.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1141.wav\n');
[x,fs]=wavread('wav/tel_1141.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1141.f0' f0 -ascii;
save 'ap/tel_1141.ap' ap -ascii;
save 'sp/tel_1141.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1142.wav\n');
[x,fs]=wavread('wav/tel_1142.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1142.f0' f0 -ascii;
save 'ap/tel_1142.ap' ap -ascii;
save 'sp/tel_1142.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1143.wav\n');
[x,fs]=wavread('wav/tel_1143.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1143.f0' f0 -ascii;
save 'ap/tel_1143.ap' ap -ascii;
save 'sp/tel_1143.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1144.wav\n');
[x,fs]=wavread('wav/tel_1144.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1144.f0' f0 -ascii;
save 'ap/tel_1144.ap' ap -ascii;
save 'sp/tel_1144.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1145.wav\n');
[x,fs]=wavread('wav/tel_1145.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1145.f0' f0 -ascii;
save 'ap/tel_1145.ap' ap -ascii;
save 'sp/tel_1145.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1146.wav\n');
[x,fs]=wavread('wav/tel_1146.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1146.f0' f0 -ascii;
save 'ap/tel_1146.ap' ap -ascii;
save 'sp/tel_1146.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1147.wav\n');
[x,fs]=wavread('wav/tel_1147.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1147.f0' f0 -ascii;
save 'ap/tel_1147.ap' ap -ascii;
save 'sp/tel_1147.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1148.wav\n');
[x,fs]=wavread('wav/tel_1148.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1148.f0' f0 -ascii;
save 'ap/tel_1148.ap' ap -ascii;
save 'sp/tel_1148.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1149.wav\n');
[x,fs]=wavread('wav/tel_1149.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1149.f0' f0 -ascii;
save 'ap/tel_1149.ap' ap -ascii;
save 'sp/tel_1149.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1150.wav\n');
[x,fs]=wavread('wav/tel_1150.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1150.f0' f0 -ascii;
save 'ap/tel_1150.ap' ap -ascii;
save 'sp/tel_1150.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1151.wav\n');
[x,fs]=wavread('wav/tel_1151.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1151.f0' f0 -ascii;
save 'ap/tel_1151.ap' ap -ascii;
save 'sp/tel_1151.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1152.wav\n');
[x,fs]=wavread('wav/tel_1152.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1152.f0' f0 -ascii;
save 'ap/tel_1152.ap' ap -ascii;
save 'sp/tel_1152.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1153.wav\n');
[x,fs]=wavread('wav/tel_1153.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1153.f0' f0 -ascii;
save 'ap/tel_1153.ap' ap -ascii;
save 'sp/tel_1153.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1154.wav\n');
[x,fs]=wavread('wav/tel_1154.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1154.f0' f0 -ascii;
save 'ap/tel_1154.ap' ap -ascii;
save 'sp/tel_1154.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1155.wav\n');
[x,fs]=wavread('wav/tel_1155.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1155.f0' f0 -ascii;
save 'ap/tel_1155.ap' ap -ascii;
save 'sp/tel_1155.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1156.wav\n');
[x,fs]=wavread('wav/tel_1156.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1156.f0' f0 -ascii;
save 'ap/tel_1156.ap' ap -ascii;
save 'sp/tel_1156.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1157.wav\n');
[x,fs]=wavread('wav/tel_1157.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1157.f0' f0 -ascii;
save 'ap/tel_1157.ap' ap -ascii;
save 'sp/tel_1157.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1158.wav\n');
[x,fs]=wavread('wav/tel_1158.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1158.f0' f0 -ascii;
save 'ap/tel_1158.ap' ap -ascii;
save 'sp/tel_1158.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1159.wav\n');
[x,fs]=wavread('wav/tel_1159.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1159.f0' f0 -ascii;
save 'ap/tel_1159.ap' ap -ascii;
save 'sp/tel_1159.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1160.wav\n');
[x,fs]=wavread('wav/tel_1160.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1160.f0' f0 -ascii;
save 'ap/tel_1160.ap' ap -ascii;
save 'sp/tel_1160.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1161.wav\n');
[x,fs]=wavread('wav/tel_1161.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1161.f0' f0 -ascii;
save 'ap/tel_1161.ap' ap -ascii;
save 'sp/tel_1161.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1162.wav\n');
[x,fs]=wavread('wav/tel_1162.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1162.f0' f0 -ascii;
save 'ap/tel_1162.ap' ap -ascii;
save 'sp/tel_1162.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1163.wav\n');
[x,fs]=wavread('wav/tel_1163.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1163.f0' f0 -ascii;
save 'ap/tel_1163.ap' ap -ascii;
save 'sp/tel_1163.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1164.wav\n');
[x,fs]=wavread('wav/tel_1164.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1164.f0' f0 -ascii;
save 'ap/tel_1164.ap' ap -ascii;
save 'sp/tel_1164.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1165.wav\n');
[x,fs]=wavread('wav/tel_1165.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1165.f0' f0 -ascii;
save 'ap/tel_1165.ap' ap -ascii;
save 'sp/tel_1165.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1166.wav\n');
[x,fs]=wavread('wav/tel_1166.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1166.f0' f0 -ascii;
save 'ap/tel_1166.ap' ap -ascii;
save 'sp/tel_1166.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1167.wav\n');
[x,fs]=wavread('wav/tel_1167.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1167.f0' f0 -ascii;
save 'ap/tel_1167.ap' ap -ascii;
save 'sp/tel_1167.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1168.wav\n');
[x,fs]=wavread('wav/tel_1168.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1168.f0' f0 -ascii;
save 'ap/tel_1168.ap' ap -ascii;
save 'sp/tel_1168.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1169.wav\n');
[x,fs]=wavread('wav/tel_1169.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1169.f0' f0 -ascii;
save 'ap/tel_1169.ap' ap -ascii;
save 'sp/tel_1169.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1170.wav\n');
[x,fs]=wavread('wav/tel_1170.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1170.f0' f0 -ascii;
save 'ap/tel_1170.ap' ap -ascii;
save 'sp/tel_1170.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1171.wav\n');
[x,fs]=wavread('wav/tel_1171.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1171.f0' f0 -ascii;
save 'ap/tel_1171.ap' ap -ascii;
save 'sp/tel_1171.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1172.wav\n');
[x,fs]=wavread('wav/tel_1172.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1172.f0' f0 -ascii;
save 'ap/tel_1172.ap' ap -ascii;
save 'sp/tel_1172.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1173.wav\n');
[x,fs]=wavread('wav/tel_1173.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1173.f0' f0 -ascii;
save 'ap/tel_1173.ap' ap -ascii;
save 'sp/tel_1173.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1174.wav\n');
[x,fs]=wavread('wav/tel_1174.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1174.f0' f0 -ascii;
save 'ap/tel_1174.ap' ap -ascii;
save 'sp/tel_1174.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1175.wav\n');
[x,fs]=wavread('wav/tel_1175.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1175.f0' f0 -ascii;
save 'ap/tel_1175.ap' ap -ascii;
save 'sp/tel_1175.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1176.wav\n');
[x,fs]=wavread('wav/tel_1176.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1176.f0' f0 -ascii;
save 'ap/tel_1176.ap' ap -ascii;
save 'sp/tel_1176.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1177.wav\n');
[x,fs]=wavread('wav/tel_1177.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1177.f0' f0 -ascii;
save 'ap/tel_1177.ap' ap -ascii;
save 'sp/tel_1177.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1178.wav\n');
[x,fs]=wavread('wav/tel_1178.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1178.f0' f0 -ascii;
save 'ap/tel_1178.ap' ap -ascii;
save 'sp/tel_1178.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1179.wav\n');
[x,fs]=wavread('wav/tel_1179.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1179.f0' f0 -ascii;
save 'ap/tel_1179.ap' ap -ascii;
save 'sp/tel_1179.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1180.wav\n');
[x,fs]=wavread('wav/tel_1180.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1180.f0' f0 -ascii;
save 'ap/tel_1180.ap' ap -ascii;
save 'sp/tel_1180.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1181.wav\n');
[x,fs]=wavread('wav/tel_1181.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1181.f0' f0 -ascii;
save 'ap/tel_1181.ap' ap -ascii;
save 'sp/tel_1181.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1182.wav\n');
[x,fs]=wavread('wav/tel_1182.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1182.f0' f0 -ascii;
save 'ap/tel_1182.ap' ap -ascii;
save 'sp/tel_1182.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1183.wav\n');
[x,fs]=wavread('wav/tel_1183.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1183.f0' f0 -ascii;
save 'ap/tel_1183.ap' ap -ascii;
save 'sp/tel_1183.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1184.wav\n');
[x,fs]=wavread('wav/tel_1184.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1184.f0' f0 -ascii;
save 'ap/tel_1184.ap' ap -ascii;
save 'sp/tel_1184.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1185.wav\n');
[x,fs]=wavread('wav/tel_1185.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1185.f0' f0 -ascii;
save 'ap/tel_1185.ap' ap -ascii;
save 'sp/tel_1185.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1186.wav\n');
[x,fs]=wavread('wav/tel_1186.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1186.f0' f0 -ascii;
save 'ap/tel_1186.ap' ap -ascii;
save 'sp/tel_1186.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1187.wav\n');
[x,fs]=wavread('wav/tel_1187.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1187.f0' f0 -ascii;
save 'ap/tel_1187.ap' ap -ascii;
save 'sp/tel_1187.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1188.wav\n');
[x,fs]=wavread('wav/tel_1188.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1188.f0' f0 -ascii;
save 'ap/tel_1188.ap' ap -ascii;
save 'sp/tel_1188.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1189.wav\n');
[x,fs]=wavread('wav/tel_1189.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1189.f0' f0 -ascii;
save 'ap/tel_1189.ap' ap -ascii;
save 'sp/tel_1189.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1190.wav\n');
[x,fs]=wavread('wav/tel_1190.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1190.f0' f0 -ascii;
save 'ap/tel_1190.ap' ap -ascii;
save 'sp/tel_1190.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1191.wav\n');
[x,fs]=wavread('wav/tel_1191.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1191.f0' f0 -ascii;
save 'ap/tel_1191.ap' ap -ascii;
save 'sp/tel_1191.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1192.wav\n');
[x,fs]=wavread('wav/tel_1192.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1192.f0' f0 -ascii;
save 'ap/tel_1192.ap' ap -ascii;
save 'sp/tel_1192.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1193.wav\n');
[x,fs]=wavread('wav/tel_1193.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1193.f0' f0 -ascii;
save 'ap/tel_1193.ap' ap -ascii;
save 'sp/tel_1193.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1194.wav\n');
[x,fs]=wavread('wav/tel_1194.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1194.f0' f0 -ascii;
save 'ap/tel_1194.ap' ap -ascii;
save 'sp/tel_1194.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1195.wav\n');
[x,fs]=wavread('wav/tel_1195.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1195.f0' f0 -ascii;
save 'ap/tel_1195.ap' ap -ascii;
save 'sp/tel_1195.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1196.wav\n');
[x,fs]=wavread('wav/tel_1196.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1196.f0' f0 -ascii;
save 'ap/tel_1196.ap' ap -ascii;
save 'sp/tel_1196.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1197.wav\n');
[x,fs]=wavread('wav/tel_1197.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1197.f0' f0 -ascii;
save 'ap/tel_1197.ap' ap -ascii;
save 'sp/tel_1197.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1198.wav\n');
[x,fs]=wavread('wav/tel_1198.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1198.f0' f0 -ascii;
save 'ap/tel_1198.ap' ap -ascii;
save 'sp/tel_1198.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1199.wav\n');
[x,fs]=wavread('wav/tel_1199.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1199.f0' f0 -ascii;
save 'ap/tel_1199.ap' ap -ascii;
save 'sp/tel_1199.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1200.wav\n');
[x,fs]=wavread('wav/tel_1200.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1200.f0' f0 -ascii;
save 'ap/tel_1200.ap' ap -ascii;
save 'sp/tel_1200.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1201.wav\n');
[x,fs]=wavread('wav/tel_1201.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1201.f0' f0 -ascii;
save 'ap/tel_1201.ap' ap -ascii;
save 'sp/tel_1201.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1203.wav\n');
[x,fs]=wavread('wav/tel_1203.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1203.f0' f0 -ascii;
save 'ap/tel_1203.ap' ap -ascii;
save 'sp/tel_1203.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1204.wav\n');
[x,fs]=wavread('wav/tel_1204.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1204.f0' f0 -ascii;
save 'ap/tel_1204.ap' ap -ascii;
save 'sp/tel_1204.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1205.wav\n');
[x,fs]=wavread('wav/tel_1205.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1205.f0' f0 -ascii;
save 'ap/tel_1205.ap' ap -ascii;
save 'sp/tel_1205.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1206.wav\n');
[x,fs]=wavread('wav/tel_1206.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1206.f0' f0 -ascii;
save 'ap/tel_1206.ap' ap -ascii;
save 'sp/tel_1206.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1207.wav\n');
[x,fs]=wavread('wav/tel_1207.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1207.f0' f0 -ascii;
save 'ap/tel_1207.ap' ap -ascii;
save 'sp/tel_1207.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1208.wav\n');
[x,fs]=wavread('wav/tel_1208.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1208.f0' f0 -ascii;
save 'ap/tel_1208.ap' ap -ascii;
save 'sp/tel_1208.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1209.wav\n');
[x,fs]=wavread('wav/tel_1209.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1209.f0' f0 -ascii;
save 'ap/tel_1209.ap' ap -ascii;
save 'sp/tel_1209.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1210.wav\n');
[x,fs]=wavread('wav/tel_1210.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1210.f0' f0 -ascii;
save 'ap/tel_1210.ap' ap -ascii;
save 'sp/tel_1210.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1211.wav\n');
[x,fs]=wavread('wav/tel_1211.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1211.f0' f0 -ascii;
save 'ap/tel_1211.ap' ap -ascii;
save 'sp/tel_1211.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1212.wav\n');
[x,fs]=wavread('wav/tel_1212.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1212.f0' f0 -ascii;
save 'ap/tel_1212.ap' ap -ascii;
save 'sp/tel_1212.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1213.wav\n');
[x,fs]=wavread('wav/tel_1213.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1213.f0' f0 -ascii;
save 'ap/tel_1213.ap' ap -ascii;
save 'sp/tel_1213.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1214.wav\n');
[x,fs]=wavread('wav/tel_1214.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1214.f0' f0 -ascii;
save 'ap/tel_1214.ap' ap -ascii;
save 'sp/tel_1214.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1215.wav\n');
[x,fs]=wavread('wav/tel_1215.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1215.f0' f0 -ascii;
save 'ap/tel_1215.ap' ap -ascii;
save 'sp/tel_1215.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1216.wav\n');
[x,fs]=wavread('wav/tel_1216.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1216.f0' f0 -ascii;
save 'ap/tel_1216.ap' ap -ascii;
save 'sp/tel_1216.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1217.wav\n');
[x,fs]=wavread('wav/tel_1217.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1217.f0' f0 -ascii;
save 'ap/tel_1217.ap' ap -ascii;
save 'sp/tel_1217.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1218.wav\n');
[x,fs]=wavread('wav/tel_1218.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1218.f0' f0 -ascii;
save 'ap/tel_1218.ap' ap -ascii;
save 'sp/tel_1218.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1219.wav\n');
[x,fs]=wavread('wav/tel_1219.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1219.f0' f0 -ascii;
save 'ap/tel_1219.ap' ap -ascii;
save 'sp/tel_1219.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1220.wav\n');
[x,fs]=wavread('wav/tel_1220.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1220.f0' f0 -ascii;
save 'ap/tel_1220.ap' ap -ascii;
save 'sp/tel_1220.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1221.wav\n');
[x,fs]=wavread('wav/tel_1221.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1221.f0' f0 -ascii;
save 'ap/tel_1221.ap' ap -ascii;
save 'sp/tel_1221.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1222.wav\n');
[x,fs]=wavread('wav/tel_1222.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1222.f0' f0 -ascii;
save 'ap/tel_1222.ap' ap -ascii;
save 'sp/tel_1222.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1223.wav\n');
[x,fs]=wavread('wav/tel_1223.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1223.f0' f0 -ascii;
save 'ap/tel_1223.ap' ap -ascii;
save 'sp/tel_1223.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1224.wav\n');
[x,fs]=wavread('wav/tel_1224.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1224.f0' f0 -ascii;
save 'ap/tel_1224.ap' ap -ascii;
save 'sp/tel_1224.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1225.wav\n');
[x,fs]=wavread('wav/tel_1225.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1225.f0' f0 -ascii;
save 'ap/tel_1225.ap' ap -ascii;
save 'sp/tel_1225.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1226.wav\n');
[x,fs]=wavread('wav/tel_1226.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1226.f0' f0 -ascii;
save 'ap/tel_1226.ap' ap -ascii;
save 'sp/tel_1226.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1227.wav\n');
[x,fs]=wavread('wav/tel_1227.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1227.f0' f0 -ascii;
save 'ap/tel_1227.ap' ap -ascii;
save 'sp/tel_1227.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1228.wav\n');
[x,fs]=wavread('wav/tel_1228.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1228.f0' f0 -ascii;
save 'ap/tel_1228.ap' ap -ascii;
save 'sp/tel_1228.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1229.wav\n');
[x,fs]=wavread('wav/tel_1229.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1229.f0' f0 -ascii;
save 'ap/tel_1229.ap' ap -ascii;
save 'sp/tel_1229.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1230.wav\n');
[x,fs]=wavread('wav/tel_1230.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1230.f0' f0 -ascii;
save 'ap/tel_1230.ap' ap -ascii;
save 'sp/tel_1230.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1231.wav\n');
[x,fs]=wavread('wav/tel_1231.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1231.f0' f0 -ascii;
save 'ap/tel_1231.ap' ap -ascii;
save 'sp/tel_1231.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1232.wav\n');
[x,fs]=wavread('wav/tel_1232.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1232.f0' f0 -ascii;
save 'ap/tel_1232.ap' ap -ascii;
save 'sp/tel_1232.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1233.wav\n');
[x,fs]=wavread('wav/tel_1233.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1233.f0' f0 -ascii;
save 'ap/tel_1233.ap' ap -ascii;
save 'sp/tel_1233.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1234.wav\n');
[x,fs]=wavread('wav/tel_1234.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1234.f0' f0 -ascii;
save 'ap/tel_1234.ap' ap -ascii;
save 'sp/tel_1234.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1235.wav\n');
[x,fs]=wavread('wav/tel_1235.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1235.f0' f0 -ascii;
save 'ap/tel_1235.ap' ap -ascii;
save 'sp/tel_1235.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1236.wav\n');
[x,fs]=wavread('wav/tel_1236.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1236.f0' f0 -ascii;
save 'ap/tel_1236.ap' ap -ascii;
save 'sp/tel_1236.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1237.wav\n');
[x,fs]=wavread('wav/tel_1237.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1237.f0' f0 -ascii;
save 'ap/tel_1237.ap' ap -ascii;
save 'sp/tel_1237.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1238.wav\n');
[x,fs]=wavread('wav/tel_1238.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1238.f0' f0 -ascii;
save 'ap/tel_1238.ap' ap -ascii;
save 'sp/tel_1238.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1239.wav\n');
[x,fs]=wavread('wav/tel_1239.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1239.f0' f0 -ascii;
save 'ap/tel_1239.ap' ap -ascii;
save 'sp/tel_1239.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1240.wav\n');
[x,fs]=wavread('wav/tel_1240.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1240.f0' f0 -ascii;
save 'ap/tel_1240.ap' ap -ascii;
save 'sp/tel_1240.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1241.wav\n');
[x,fs]=wavread('wav/tel_1241.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1241.f0' f0 -ascii;
save 'ap/tel_1241.ap' ap -ascii;
save 'sp/tel_1241.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1242.wav\n');
[x,fs]=wavread('wav/tel_1242.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1242.f0' f0 -ascii;
save 'ap/tel_1242.ap' ap -ascii;
save 'sp/tel_1242.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1243.wav\n');
[x,fs]=wavread('wav/tel_1243.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1243.f0' f0 -ascii;
save 'ap/tel_1243.ap' ap -ascii;
save 'sp/tel_1243.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1244.wav\n');
[x,fs]=wavread('wav/tel_1244.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1244.f0' f0 -ascii;
save 'ap/tel_1244.ap' ap -ascii;
save 'sp/tel_1244.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1245.wav\n');
[x,fs]=wavread('wav/tel_1245.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1245.f0' f0 -ascii;
save 'ap/tel_1245.ap' ap -ascii;
save 'sp/tel_1245.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1246.wav\n');
[x,fs]=wavread('wav/tel_1246.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1246.f0' f0 -ascii;
save 'ap/tel_1246.ap' ap -ascii;
save 'sp/tel_1246.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1247.wav\n');
[x,fs]=wavread('wav/tel_1247.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1247.f0' f0 -ascii;
save 'ap/tel_1247.ap' ap -ascii;
save 'sp/tel_1247.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1248.wav\n');
[x,fs]=wavread('wav/tel_1248.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1248.f0' f0 -ascii;
save 'ap/tel_1248.ap' ap -ascii;
save 'sp/tel_1248.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1249.wav\n');
[x,fs]=wavread('wav/tel_1249.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1249.f0' f0 -ascii;
save 'ap/tel_1249.ap' ap -ascii;
save 'sp/tel_1249.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1250.wav\n');
[x,fs]=wavread('wav/tel_1250.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1250.f0' f0 -ascii;
save 'ap/tel_1250.ap' ap -ascii;
save 'sp/tel_1250.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1251.wav\n');
[x,fs]=wavread('wav/tel_1251.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1251.f0' f0 -ascii;
save 'ap/tel_1251.ap' ap -ascii;
save 'sp/tel_1251.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1252.wav\n');
[x,fs]=wavread('wav/tel_1252.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1252.f0' f0 -ascii;
save 'ap/tel_1252.ap' ap -ascii;
save 'sp/tel_1252.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1253.wav\n');
[x,fs]=wavread('wav/tel_1253.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1253.f0' f0 -ascii;
save 'ap/tel_1253.ap' ap -ascii;
save 'sp/tel_1253.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1254.wav\n');
[x,fs]=wavread('wav/tel_1254.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1254.f0' f0 -ascii;
save 'ap/tel_1254.ap' ap -ascii;
save 'sp/tel_1254.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1255.wav\n');
[x,fs]=wavread('wav/tel_1255.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1255.f0' f0 -ascii;
save 'ap/tel_1255.ap' ap -ascii;
save 'sp/tel_1255.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1256.wav\n');
[x,fs]=wavread('wav/tel_1256.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1256.f0' f0 -ascii;
save 'ap/tel_1256.ap' ap -ascii;
save 'sp/tel_1256.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1257.wav\n');
[x,fs]=wavread('wav/tel_1257.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1257.f0' f0 -ascii;
save 'ap/tel_1257.ap' ap -ascii;
save 'sp/tel_1257.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1258.wav\n');
[x,fs]=wavread('wav/tel_1258.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1258.f0' f0 -ascii;
save 'ap/tel_1258.ap' ap -ascii;
save 'sp/tel_1258.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1259.wav\n');
[x,fs]=wavread('wav/tel_1259.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1259.f0' f0 -ascii;
save 'ap/tel_1259.ap' ap -ascii;
save 'sp/tel_1259.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1260.wav\n');
[x,fs]=wavread('wav/tel_1260.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1260.f0' f0 -ascii;
save 'ap/tel_1260.ap' ap -ascii;
save 'sp/tel_1260.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1261.wav\n');
[x,fs]=wavread('wav/tel_1261.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1261.f0' f0 -ascii;
save 'ap/tel_1261.ap' ap -ascii;
save 'sp/tel_1261.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1262.wav\n');
[x,fs]=wavread('wav/tel_1262.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1262.f0' f0 -ascii;
save 'ap/tel_1262.ap' ap -ascii;
save 'sp/tel_1262.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1263.wav\n');
[x,fs]=wavread('wav/tel_1263.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1263.f0' f0 -ascii;
save 'ap/tel_1263.ap' ap -ascii;
save 'sp/tel_1263.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1264.wav\n');
[x,fs]=wavread('wav/tel_1264.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1264.f0' f0 -ascii;
save 'ap/tel_1264.ap' ap -ascii;
save 'sp/tel_1264.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1265.wav\n');
[x,fs]=wavread('wav/tel_1265.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1265.f0' f0 -ascii;
save 'ap/tel_1265.ap' ap -ascii;
save 'sp/tel_1265.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1266.wav\n');
[x,fs]=wavread('wav/tel_1266.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1266.f0' f0 -ascii;
save 'ap/tel_1266.ap' ap -ascii;
save 'sp/tel_1266.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1267.wav\n');
[x,fs]=wavread('wav/tel_1267.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1267.f0' f0 -ascii;
save 'ap/tel_1267.ap' ap -ascii;
save 'sp/tel_1267.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1268.wav\n');
[x,fs]=wavread('wav/tel_1268.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1268.f0' f0 -ascii;
save 'ap/tel_1268.ap' ap -ascii;
save 'sp/tel_1268.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1269.wav\n');
[x,fs]=wavread('wav/tel_1269.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1269.f0' f0 -ascii;
save 'ap/tel_1269.ap' ap -ascii;
save 'sp/tel_1269.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1270.wav\n');
[x,fs]=wavread('wav/tel_1270.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1270.f0' f0 -ascii;
save 'ap/tel_1270.ap' ap -ascii;
save 'sp/tel_1270.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1271.wav\n');
[x,fs]=wavread('wav/tel_1271.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1271.f0' f0 -ascii;
save 'ap/tel_1271.ap' ap -ascii;
save 'sp/tel_1271.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1272.wav\n');
[x,fs]=wavread('wav/tel_1272.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1272.f0' f0 -ascii;
save 'ap/tel_1272.ap' ap -ascii;
save 'sp/tel_1272.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1273.wav\n');
[x,fs]=wavread('wav/tel_1273.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1273.f0' f0 -ascii;
save 'ap/tel_1273.ap' ap -ascii;
save 'sp/tel_1273.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1274.wav\n');
[x,fs]=wavread('wav/tel_1274.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1274.f0' f0 -ascii;
save 'ap/tel_1274.ap' ap -ascii;
save 'sp/tel_1274.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1275.wav\n');
[x,fs]=wavread('wav/tel_1275.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1275.f0' f0 -ascii;
save 'ap/tel_1275.ap' ap -ascii;
save 'sp/tel_1275.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1276.wav\n');
[x,fs]=wavread('wav/tel_1276.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1276.f0' f0 -ascii;
save 'ap/tel_1276.ap' ap -ascii;
save 'sp/tel_1276.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1277.wav\n');
[x,fs]=wavread('wav/tel_1277.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1277.f0' f0 -ascii;
save 'ap/tel_1277.ap' ap -ascii;
save 'sp/tel_1277.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1278.wav\n');
[x,fs]=wavread('wav/tel_1278.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1278.f0' f0 -ascii;
save 'ap/tel_1278.ap' ap -ascii;
save 'sp/tel_1278.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1279.wav\n');
[x,fs]=wavread('wav/tel_1279.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1279.f0' f0 -ascii;
save 'ap/tel_1279.ap' ap -ascii;
save 'sp/tel_1279.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1280.wav\n');
[x,fs]=wavread('wav/tel_1280.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1280.f0' f0 -ascii;
save 'ap/tel_1280.ap' ap -ascii;
save 'sp/tel_1280.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1281.wav\n');
[x,fs]=wavread('wav/tel_1281.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1281.f0' f0 -ascii;
save 'ap/tel_1281.ap' ap -ascii;
save 'sp/tel_1281.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1282.wav\n');
[x,fs]=wavread('wav/tel_1282.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1282.f0' f0 -ascii;
save 'ap/tel_1282.ap' ap -ascii;
save 'sp/tel_1282.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1283.wav\n');
[x,fs]=wavread('wav/tel_1283.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1283.f0' f0 -ascii;
save 'ap/tel_1283.ap' ap -ascii;
save 'sp/tel_1283.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1284.wav\n');
[x,fs]=wavread('wav/tel_1284.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1284.f0' f0 -ascii;
save 'ap/tel_1284.ap' ap -ascii;
save 'sp/tel_1284.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1285.wav\n');
[x,fs]=wavread('wav/tel_1285.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1285.f0' f0 -ascii;
save 'ap/tel_1285.ap' ap -ascii;
save 'sp/tel_1285.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1286.wav\n');
[x,fs]=wavread('wav/tel_1286.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1286.f0' f0 -ascii;
save 'ap/tel_1286.ap' ap -ascii;
save 'sp/tel_1286.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1287.wav\n');
[x,fs]=wavread('wav/tel_1287.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1287.f0' f0 -ascii;
save 'ap/tel_1287.ap' ap -ascii;
save 'sp/tel_1287.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1288.wav\n');
[x,fs]=wavread('wav/tel_1288.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1288.f0' f0 -ascii;
save 'ap/tel_1288.ap' ap -ascii;
save 'sp/tel_1288.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1289.wav\n');
[x,fs]=wavread('wav/tel_1289.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1289.f0' f0 -ascii;
save 'ap/tel_1289.ap' ap -ascii;
save 'sp/tel_1289.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1290.wav\n');
[x,fs]=wavread('wav/tel_1290.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1290.f0' f0 -ascii;
save 'ap/tel_1290.ap' ap -ascii;
save 'sp/tel_1290.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1291.wav\n');
[x,fs]=wavread('wav/tel_1291.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1291.f0' f0 -ascii;
save 'ap/tel_1291.ap' ap -ascii;
save 'sp/tel_1291.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1292.wav\n');
[x,fs]=wavread('wav/tel_1292.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1292.f0' f0 -ascii;
save 'ap/tel_1292.ap' ap -ascii;
save 'sp/tel_1292.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1293.wav\n');
[x,fs]=wavread('wav/tel_1293.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1293.f0' f0 -ascii;
save 'ap/tel_1293.ap' ap -ascii;
save 'sp/tel_1293.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1294.wav\n');
[x,fs]=wavread('wav/tel_1294.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1294.f0' f0 -ascii;
save 'ap/tel_1294.ap' ap -ascii;
save 'sp/tel_1294.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1295.wav\n');
[x,fs]=wavread('wav/tel_1295.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1295.f0' f0 -ascii;
save 'ap/tel_1295.ap' ap -ascii;
save 'sp/tel_1295.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1296.wav\n');
[x,fs]=wavread('wav/tel_1296.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1296.f0' f0 -ascii;
save 'ap/tel_1296.ap' ap -ascii;
save 'sp/tel_1296.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1297.wav\n');
[x,fs]=wavread('wav/tel_1297.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1297.f0' f0 -ascii;
save 'ap/tel_1297.ap' ap -ascii;
save 'sp/tel_1297.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1298.wav\n');
[x,fs]=wavread('wav/tel_1298.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1298.f0' f0 -ascii;
save 'ap/tel_1298.ap' ap -ascii;
save 'sp/tel_1298.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1299.wav\n');
[x,fs]=wavread('wav/tel_1299.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1299.f0' f0 -ascii;
save 'ap/tel_1299.ap' ap -ascii;
save 'sp/tel_1299.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1300.wav\n');
[x,fs]=wavread('wav/tel_1300.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1300.f0' f0 -ascii;
save 'ap/tel_1300.ap' ap -ascii;
save 'sp/tel_1300.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1301.wav\n');
[x,fs]=wavread('wav/tel_1301.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1301.f0' f0 -ascii;
save 'ap/tel_1301.ap' ap -ascii;
save 'sp/tel_1301.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1302.wav\n');
[x,fs]=wavread('wav/tel_1302.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1302.f0' f0 -ascii;
save 'ap/tel_1302.ap' ap -ascii;
save 'sp/tel_1302.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1303.wav\n');
[x,fs]=wavread('wav/tel_1303.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1303.f0' f0 -ascii;
save 'ap/tel_1303.ap' ap -ascii;
save 'sp/tel_1303.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1304.wav\n');
[x,fs]=wavread('wav/tel_1304.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1304.f0' f0 -ascii;
save 'ap/tel_1304.ap' ap -ascii;
save 'sp/tel_1304.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1305.wav\n');
[x,fs]=wavread('wav/tel_1305.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1305.f0' f0 -ascii;
save 'ap/tel_1305.ap' ap -ascii;
save 'sp/tel_1305.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1306.wav\n');
[x,fs]=wavread('wav/tel_1306.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1306.f0' f0 -ascii;
save 'ap/tel_1306.ap' ap -ascii;
save 'sp/tel_1306.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1307.wav\n');
[x,fs]=wavread('wav/tel_1307.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1307.f0' f0 -ascii;
save 'ap/tel_1307.ap' ap -ascii;
save 'sp/tel_1307.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1308.wav\n');
[x,fs]=wavread('wav/tel_1308.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1308.f0' f0 -ascii;
save 'ap/tel_1308.ap' ap -ascii;
save 'sp/tel_1308.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1309.wav\n');
[x,fs]=wavread('wav/tel_1309.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1309.f0' f0 -ascii;
save 'ap/tel_1309.ap' ap -ascii;
save 'sp/tel_1309.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1310.wav\n');
[x,fs]=wavread('wav/tel_1310.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1310.f0' f0 -ascii;
save 'ap/tel_1310.ap' ap -ascii;
save 'sp/tel_1310.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1311.wav\n');
[x,fs]=wavread('wav/tel_1311.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1311.f0' f0 -ascii;
save 'ap/tel_1311.ap' ap -ascii;
save 'sp/tel_1311.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1312.wav\n');
[x,fs]=wavread('wav/tel_1312.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1312.f0' f0 -ascii;
save 'ap/tel_1312.ap' ap -ascii;
save 'sp/tel_1312.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1313.wav\n');
[x,fs]=wavread('wav/tel_1313.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1313.f0' f0 -ascii;
save 'ap/tel_1313.ap' ap -ascii;
save 'sp/tel_1313.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1314.wav\n');
[x,fs]=wavread('wav/tel_1314.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1314.f0' f0 -ascii;
save 'ap/tel_1314.ap' ap -ascii;
save 'sp/tel_1314.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1315.wav\n');
[x,fs]=wavread('wav/tel_1315.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1315.f0' f0 -ascii;
save 'ap/tel_1315.ap' ap -ascii;
save 'sp/tel_1315.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1316.wav\n');
[x,fs]=wavread('wav/tel_1316.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1316.f0' f0 -ascii;
save 'ap/tel_1316.ap' ap -ascii;
save 'sp/tel_1316.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1317.wav\n');
[x,fs]=wavread('wav/tel_1317.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1317.f0' f0 -ascii;
save 'ap/tel_1317.ap' ap -ascii;
save 'sp/tel_1317.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1318.wav\n');
[x,fs]=wavread('wav/tel_1318.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1318.f0' f0 -ascii;
save 'ap/tel_1318.ap' ap -ascii;
save 'sp/tel_1318.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1319.wav\n');
[x,fs]=wavread('wav/tel_1319.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1319.f0' f0 -ascii;
save 'ap/tel_1319.ap' ap -ascii;
save 'sp/tel_1319.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1320.wav\n');
[x,fs]=wavread('wav/tel_1320.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1320.f0' f0 -ascii;
save 'ap/tel_1320.ap' ap -ascii;
save 'sp/tel_1320.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1321.wav\n');
[x,fs]=wavread('wav/tel_1321.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1321.f0' f0 -ascii;
save 'ap/tel_1321.ap' ap -ascii;
save 'sp/tel_1321.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1322.wav\n');
[x,fs]=wavread('wav/tel_1322.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1322.f0' f0 -ascii;
save 'ap/tel_1322.ap' ap -ascii;
save 'sp/tel_1322.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1323.wav\n');
[x,fs]=wavread('wav/tel_1323.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1323.f0' f0 -ascii;
save 'ap/tel_1323.ap' ap -ascii;
save 'sp/tel_1323.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1324.wav\n');
[x,fs]=wavread('wav/tel_1324.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1324.f0' f0 -ascii;
save 'ap/tel_1324.ap' ap -ascii;
save 'sp/tel_1324.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1325.wav\n');
[x,fs]=wavread('wav/tel_1325.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1325.f0' f0 -ascii;
save 'ap/tel_1325.ap' ap -ascii;
save 'sp/tel_1325.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1326.wav\n');
[x,fs]=wavread('wav/tel_1326.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1326.f0' f0 -ascii;
save 'ap/tel_1326.ap' ap -ascii;
save 'sp/tel_1326.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1327.wav\n');
[x,fs]=wavread('wav/tel_1327.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1327.f0' f0 -ascii;
save 'ap/tel_1327.ap' ap -ascii;
save 'sp/tel_1327.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1328.wav\n');
[x,fs]=wavread('wav/tel_1328.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1328.f0' f0 -ascii;
save 'ap/tel_1328.ap' ap -ascii;
save 'sp/tel_1328.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1329.wav\n');
[x,fs]=wavread('wav/tel_1329.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1329.f0' f0 -ascii;
save 'ap/tel_1329.ap' ap -ascii;
save 'sp/tel_1329.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1330.wav\n');
[x,fs]=wavread('wav/tel_1330.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1330.f0' f0 -ascii;
save 'ap/tel_1330.ap' ap -ascii;
save 'sp/tel_1330.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1331.wav\n');
[x,fs]=wavread('wav/tel_1331.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1331.f0' f0 -ascii;
save 'ap/tel_1331.ap' ap -ascii;
save 'sp/tel_1331.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1332.wav\n');
[x,fs]=wavread('wav/tel_1332.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1332.f0' f0 -ascii;
save 'ap/tel_1332.ap' ap -ascii;
save 'sp/tel_1332.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1333.wav\n');
[x,fs]=wavread('wav/tel_1333.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1333.f0' f0 -ascii;
save 'ap/tel_1333.ap' ap -ascii;
save 'sp/tel_1333.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1334.wav\n');
[x,fs]=wavread('wav/tel_1334.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1334.f0' f0 -ascii;
save 'ap/tel_1334.ap' ap -ascii;
save 'sp/tel_1334.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1335.wav\n');
[x,fs]=wavread('wav/tel_1335.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1335.f0' f0 -ascii;
save 'ap/tel_1335.ap' ap -ascii;
save 'sp/tel_1335.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1336.wav\n');
[x,fs]=wavread('wav/tel_1336.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1336.f0' f0 -ascii;
save 'ap/tel_1336.ap' ap -ascii;
save 'sp/tel_1336.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1337.wav\n');
[x,fs]=wavread('wav/tel_1337.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1337.f0' f0 -ascii;
save 'ap/tel_1337.ap' ap -ascii;
save 'sp/tel_1337.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1338.wav\n');
[x,fs]=wavread('wav/tel_1338.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1338.f0' f0 -ascii;
save 'ap/tel_1338.ap' ap -ascii;
save 'sp/tel_1338.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1339.wav\n');
[x,fs]=wavread('wav/tel_1339.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1339.f0' f0 -ascii;
save 'ap/tel_1339.ap' ap -ascii;
save 'sp/tel_1339.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1340.wav\n');
[x,fs]=wavread('wav/tel_1340.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1340.f0' f0 -ascii;
save 'ap/tel_1340.ap' ap -ascii;
save 'sp/tel_1340.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1341.wav\n');
[x,fs]=wavread('wav/tel_1341.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1341.f0' f0 -ascii;
save 'ap/tel_1341.ap' ap -ascii;
save 'sp/tel_1341.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1342.wav\n');
[x,fs]=wavread('wav/tel_1342.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1342.f0' f0 -ascii;
save 'ap/tel_1342.ap' ap -ascii;
save 'sp/tel_1342.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1343.wav\n');
[x,fs]=wavread('wav/tel_1343.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1343.f0' f0 -ascii;
save 'ap/tel_1343.ap' ap -ascii;
save 'sp/tel_1343.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1344.wav\n');
[x,fs]=wavread('wav/tel_1344.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1344.f0' f0 -ascii;
save 'ap/tel_1344.ap' ap -ascii;
save 'sp/tel_1344.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1345.wav\n');
[x,fs]=wavread('wav/tel_1345.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1345.f0' f0 -ascii;
save 'ap/tel_1345.ap' ap -ascii;
save 'sp/tel_1345.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1346.wav\n');
[x,fs]=wavread('wav/tel_1346.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1346.f0' f0 -ascii;
save 'ap/tel_1346.ap' ap -ascii;
save 'sp/tel_1346.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1347.wav\n');
[x,fs]=wavread('wav/tel_1347.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1347.f0' f0 -ascii;
save 'ap/tel_1347.ap' ap -ascii;
save 'sp/tel_1347.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1348.wav\n');
[x,fs]=wavread('wav/tel_1348.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1348.f0' f0 -ascii;
save 'ap/tel_1348.ap' ap -ascii;
save 'sp/tel_1348.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1349.wav\n');
[x,fs]=wavread('wav/tel_1349.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1349.f0' f0 -ascii;
save 'ap/tel_1349.ap' ap -ascii;
save 'sp/tel_1349.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1350.wav\n');
[x,fs]=wavread('wav/tel_1350.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1350.f0' f0 -ascii;
save 'ap/tel_1350.ap' ap -ascii;
save 'sp/tel_1350.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1351.wav\n');
[x,fs]=wavread('wav/tel_1351.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1351.f0' f0 -ascii;
save 'ap/tel_1351.ap' ap -ascii;
save 'sp/tel_1351.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1352.wav\n');
[x,fs]=wavread('wav/tel_1352.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1352.f0' f0 -ascii;
save 'ap/tel_1352.ap' ap -ascii;
save 'sp/tel_1352.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1353.wav\n');
[x,fs]=wavread('wav/tel_1353.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1353.f0' f0 -ascii;
save 'ap/tel_1353.ap' ap -ascii;
save 'sp/tel_1353.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1354.wav\n');
[x,fs]=wavread('wav/tel_1354.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1354.f0' f0 -ascii;
save 'ap/tel_1354.ap' ap -ascii;
save 'sp/tel_1354.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1355.wav\n');
[x,fs]=wavread('wav/tel_1355.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1355.f0' f0 -ascii;
save 'ap/tel_1355.ap' ap -ascii;
save 'sp/tel_1355.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1356.wav\n');
[x,fs]=wavread('wav/tel_1356.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1356.f0' f0 -ascii;
save 'ap/tel_1356.ap' ap -ascii;
save 'sp/tel_1356.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1357.wav\n');
[x,fs]=wavread('wav/tel_1357.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1357.f0' f0 -ascii;
save 'ap/tel_1357.ap' ap -ascii;
save 'sp/tel_1357.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1358.wav\n');
[x,fs]=wavread('wav/tel_1358.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1358.f0' f0 -ascii;
save 'ap/tel_1358.ap' ap -ascii;
save 'sp/tel_1358.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1359.wav\n');
[x,fs]=wavread('wav/tel_1359.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1359.f0' f0 -ascii;
save 'ap/tel_1359.ap' ap -ascii;
save 'sp/tel_1359.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1360.wav\n');
[x,fs]=wavread('wav/tel_1360.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1360.f0' f0 -ascii;
save 'ap/tel_1360.ap' ap -ascii;
save 'sp/tel_1360.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1361.wav\n');
[x,fs]=wavread('wav/tel_1361.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1361.f0' f0 -ascii;
save 'ap/tel_1361.ap' ap -ascii;
save 'sp/tel_1361.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1362.wav\n');
[x,fs]=wavread('wav/tel_1362.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1362.f0' f0 -ascii;
save 'ap/tel_1362.ap' ap -ascii;
save 'sp/tel_1362.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1363.wav\n');
[x,fs]=wavread('wav/tel_1363.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1363.f0' f0 -ascii;
save 'ap/tel_1363.ap' ap -ascii;
save 'sp/tel_1363.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1364.wav\n');
[x,fs]=wavread('wav/tel_1364.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1364.f0' f0 -ascii;
save 'ap/tel_1364.ap' ap -ascii;
save 'sp/tel_1364.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1365.wav\n');
[x,fs]=wavread('wav/tel_1365.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1365.f0' f0 -ascii;
save 'ap/tel_1365.ap' ap -ascii;
save 'sp/tel_1365.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1366.wav\n');
[x,fs]=wavread('wav/tel_1366.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1366.f0' f0 -ascii;
save 'ap/tel_1366.ap' ap -ascii;
save 'sp/tel_1366.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1367.wav\n');
[x,fs]=wavread('wav/tel_1367.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1367.f0' f0 -ascii;
save 'ap/tel_1367.ap' ap -ascii;
save 'sp/tel_1367.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1368.wav\n');
[x,fs]=wavread('wav/tel_1368.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1368.f0' f0 -ascii;
save 'ap/tel_1368.ap' ap -ascii;
save 'sp/tel_1368.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1369.wav\n');
[x,fs]=wavread('wav/tel_1369.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1369.f0' f0 -ascii;
save 'ap/tel_1369.ap' ap -ascii;
save 'sp/tel_1369.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1370.wav\n');
[x,fs]=wavread('wav/tel_1370.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1370.f0' f0 -ascii;
save 'ap/tel_1370.ap' ap -ascii;
save 'sp/tel_1370.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1371.wav\n');
[x,fs]=wavread('wav/tel_1371.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1371.f0' f0 -ascii;
save 'ap/tel_1371.ap' ap -ascii;
save 'sp/tel_1371.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1372.wav\n');
[x,fs]=wavread('wav/tel_1372.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1372.f0' f0 -ascii;
save 'ap/tel_1372.ap' ap -ascii;
save 'sp/tel_1372.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1373.wav\n');
[x,fs]=wavread('wav/tel_1373.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1373.f0' f0 -ascii;
save 'ap/tel_1373.ap' ap -ascii;
save 'sp/tel_1373.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1374.wav\n');
[x,fs]=wavread('wav/tel_1374.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1374.f0' f0 -ascii;
save 'ap/tel_1374.ap' ap -ascii;
save 'sp/tel_1374.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1375.wav\n');
[x,fs]=wavread('wav/tel_1375.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1375.f0' f0 -ascii;
save 'ap/tel_1375.ap' ap -ascii;
save 'sp/tel_1375.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1376.wav\n');
[x,fs]=wavread('wav/tel_1376.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1376.f0' f0 -ascii;
save 'ap/tel_1376.ap' ap -ascii;
save 'sp/tel_1376.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1377.wav\n');
[x,fs]=wavread('wav/tel_1377.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1377.f0' f0 -ascii;
save 'ap/tel_1377.ap' ap -ascii;
save 'sp/tel_1377.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1378.wav\n');
[x,fs]=wavread('wav/tel_1378.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1378.f0' f0 -ascii;
save 'ap/tel_1378.ap' ap -ascii;
save 'sp/tel_1378.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1379.wav\n');
[x,fs]=wavread('wav/tel_1379.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1379.f0' f0 -ascii;
save 'ap/tel_1379.ap' ap -ascii;
save 'sp/tel_1379.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1380.wav\n');
[x,fs]=wavread('wav/tel_1380.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1380.f0' f0 -ascii;
save 'ap/tel_1380.ap' ap -ascii;
save 'sp/tel_1380.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1381.wav\n');
[x,fs]=wavread('wav/tel_1381.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1381.f0' f0 -ascii;
save 'ap/tel_1381.ap' ap -ascii;
save 'sp/tel_1381.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1382.wav\n');
[x,fs]=wavread('wav/tel_1382.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1382.f0' f0 -ascii;
save 'ap/tel_1382.ap' ap -ascii;
save 'sp/tel_1382.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1383.wav\n');
[x,fs]=wavread('wav/tel_1383.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1383.f0' f0 -ascii;
save 'ap/tel_1383.ap' ap -ascii;
save 'sp/tel_1383.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1384.wav\n');
[x,fs]=wavread('wav/tel_1384.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1384.f0' f0 -ascii;
save 'ap/tel_1384.ap' ap -ascii;
save 'sp/tel_1384.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1385.wav\n');
[x,fs]=wavread('wav/tel_1385.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1385.f0' f0 -ascii;
save 'ap/tel_1385.ap' ap -ascii;
save 'sp/tel_1385.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1386.wav\n');
[x,fs]=wavread('wav/tel_1386.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1386.f0' f0 -ascii;
save 'ap/tel_1386.ap' ap -ascii;
save 'sp/tel_1386.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1387.wav\n');
[x,fs]=wavread('wav/tel_1387.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1387.f0' f0 -ascii;
save 'ap/tel_1387.ap' ap -ascii;
save 'sp/tel_1387.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1388.wav\n');
[x,fs]=wavread('wav/tel_1388.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1388.f0' f0 -ascii;
save 'ap/tel_1388.ap' ap -ascii;
save 'sp/tel_1388.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1389.wav\n');
[x,fs]=wavread('wav/tel_1389.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1389.f0' f0 -ascii;
save 'ap/tel_1389.ap' ap -ascii;
save 'sp/tel_1389.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1390.wav\n');
[x,fs]=wavread('wav/tel_1390.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1390.f0' f0 -ascii;
save 'ap/tel_1390.ap' ap -ascii;
save 'sp/tel_1390.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1391.wav\n');
[x,fs]=wavread('wav/tel_1391.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1391.f0' f0 -ascii;
save 'ap/tel_1391.ap' ap -ascii;
save 'sp/tel_1391.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1392.wav\n');
[x,fs]=wavread('wav/tel_1392.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1392.f0' f0 -ascii;
save 'ap/tel_1392.ap' ap -ascii;
save 'sp/tel_1392.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1393.wav\n');
[x,fs]=wavread('wav/tel_1393.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1393.f0' f0 -ascii;
save 'ap/tel_1393.ap' ap -ascii;
save 'sp/tel_1393.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1394.wav\n');
[x,fs]=wavread('wav/tel_1394.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1394.f0' f0 -ascii;
save 'ap/tel_1394.ap' ap -ascii;
save 'sp/tel_1394.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1395.wav\n');
[x,fs]=wavread('wav/tel_1395.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1395.f0' f0 -ascii;
save 'ap/tel_1395.ap' ap -ascii;
save 'sp/tel_1395.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1396.wav\n');
[x,fs]=wavread('wav/tel_1396.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1396.f0' f0 -ascii;
save 'ap/tel_1396.ap' ap -ascii;
save 'sp/tel_1396.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1397.wav\n');
[x,fs]=wavread('wav/tel_1397.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1397.f0' f0 -ascii;
save 'ap/tel_1397.ap' ap -ascii;
save 'sp/tel_1397.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1398.wav\n');
[x,fs]=wavread('wav/tel_1398.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1398.f0' f0 -ascii;
save 'ap/tel_1398.ap' ap -ascii;
save 'sp/tel_1398.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1399.wav\n');
[x,fs]=wavread('wav/tel_1399.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1399.f0' f0 -ascii;
save 'ap/tel_1399.ap' ap -ascii;
save 'sp/tel_1399.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1400.wav\n');
[x,fs]=wavread('wav/tel_1400.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1400.f0' f0 -ascii;
save 'ap/tel_1400.ap' ap -ascii;
save 'sp/tel_1400.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1401.wav\n');
[x,fs]=wavread('wav/tel_1401.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1401.f0' f0 -ascii;
save 'ap/tel_1401.ap' ap -ascii;
save 'sp/tel_1401.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1402.wav\n');
[x,fs]=wavread('wav/tel_1402.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1402.f0' f0 -ascii;
save 'ap/tel_1402.ap' ap -ascii;
save 'sp/tel_1402.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1403.wav\n');
[x,fs]=wavread('wav/tel_1403.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1403.f0' f0 -ascii;
save 'ap/tel_1403.ap' ap -ascii;
save 'sp/tel_1403.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1404.wav\n');
[x,fs]=wavread('wav/tel_1404.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1404.f0' f0 -ascii;
save 'ap/tel_1404.ap' ap -ascii;
save 'sp/tel_1404.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1405.wav\n');
[x,fs]=wavread('wav/tel_1405.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1405.f0' f0 -ascii;
save 'ap/tel_1405.ap' ap -ascii;
save 'sp/tel_1405.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1406.wav\n');
[x,fs]=wavread('wav/tel_1406.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1406.f0' f0 -ascii;
save 'ap/tel_1406.ap' ap -ascii;
save 'sp/tel_1406.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1407.wav\n');
[x,fs]=wavread('wav/tel_1407.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1407.f0' f0 -ascii;
save 'ap/tel_1407.ap' ap -ascii;
save 'sp/tel_1407.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1408.wav\n');
[x,fs]=wavread('wav/tel_1408.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1408.f0' f0 -ascii;
save 'ap/tel_1408.ap' ap -ascii;
save 'sp/tel_1408.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1409.wav\n');
[x,fs]=wavread('wav/tel_1409.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1409.f0' f0 -ascii;
save 'ap/tel_1409.ap' ap -ascii;
save 'sp/tel_1409.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1410.wav\n');
[x,fs]=wavread('wav/tel_1410.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1410.f0' f0 -ascii;
save 'ap/tel_1410.ap' ap -ascii;
save 'sp/tel_1410.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1411.wav\n');
[x,fs]=wavread('wav/tel_1411.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1411.f0' f0 -ascii;
save 'ap/tel_1411.ap' ap -ascii;
save 'sp/tel_1411.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1412.wav\n');
[x,fs]=wavread('wav/tel_1412.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1412.f0' f0 -ascii;
save 'ap/tel_1412.ap' ap -ascii;
save 'sp/tel_1412.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1413.wav\n');
[x,fs]=wavread('wav/tel_1413.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1413.f0' f0 -ascii;
save 'ap/tel_1413.ap' ap -ascii;
save 'sp/tel_1413.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1414.wav\n');
[x,fs]=wavread('wav/tel_1414.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1414.f0' f0 -ascii;
save 'ap/tel_1414.ap' ap -ascii;
save 'sp/tel_1414.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1415.wav\n');
[x,fs]=wavread('wav/tel_1415.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1415.f0' f0 -ascii;
save 'ap/tel_1415.ap' ap -ascii;
save 'sp/tel_1415.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1416.wav\n');
[x,fs]=wavread('wav/tel_1416.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1416.f0' f0 -ascii;
save 'ap/tel_1416.ap' ap -ascii;
save 'sp/tel_1416.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1417.wav\n');
[x,fs]=wavread('wav/tel_1417.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1417.f0' f0 -ascii;
save 'ap/tel_1417.ap' ap -ascii;
save 'sp/tel_1417.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1418.wav\n');
[x,fs]=wavread('wav/tel_1418.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1418.f0' f0 -ascii;
save 'ap/tel_1418.ap' ap -ascii;
save 'sp/tel_1418.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1419.wav\n');
[x,fs]=wavread('wav/tel_1419.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1419.f0' f0 -ascii;
save 'ap/tel_1419.ap' ap -ascii;
save 'sp/tel_1419.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1420.wav\n');
[x,fs]=wavread('wav/tel_1420.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1420.f0' f0 -ascii;
save 'ap/tel_1420.ap' ap -ascii;
save 'sp/tel_1420.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1421.wav\n');
[x,fs]=wavread('wav/tel_1421.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1421.f0' f0 -ascii;
save 'ap/tel_1421.ap' ap -ascii;
save 'sp/tel_1421.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1422.wav\n');
[x,fs]=wavread('wav/tel_1422.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1422.f0' f0 -ascii;
save 'ap/tel_1422.ap' ap -ascii;
save 'sp/tel_1422.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1423.wav\n');
[x,fs]=wavread('wav/tel_1423.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1423.f0' f0 -ascii;
save 'ap/tel_1423.ap' ap -ascii;
save 'sp/tel_1423.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1424.wav\n');
[x,fs]=wavread('wav/tel_1424.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1424.f0' f0 -ascii;
save 'ap/tel_1424.ap' ap -ascii;
save 'sp/tel_1424.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1425.wav\n');
[x,fs]=wavread('wav/tel_1425.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1425.f0' f0 -ascii;
save 'ap/tel_1425.ap' ap -ascii;
save 'sp/tel_1425.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1426.wav\n');
[x,fs]=wavread('wav/tel_1426.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1426.f0' f0 -ascii;
save 'ap/tel_1426.ap' ap -ascii;
save 'sp/tel_1426.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1427.wav\n');
[x,fs]=wavread('wav/tel_1427.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1427.f0' f0 -ascii;
save 'ap/tel_1427.ap' ap -ascii;
save 'sp/tel_1427.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1428.wav\n');
[x,fs]=wavread('wav/tel_1428.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1428.f0' f0 -ascii;
save 'ap/tel_1428.ap' ap -ascii;
save 'sp/tel_1428.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1429.wav\n');
[x,fs]=wavread('wav/tel_1429.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1429.f0' f0 -ascii;
save 'ap/tel_1429.ap' ap -ascii;
save 'sp/tel_1429.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1430.wav\n');
[x,fs]=wavread('wav/tel_1430.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1430.f0' f0 -ascii;
save 'ap/tel_1430.ap' ap -ascii;
save 'sp/tel_1430.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1431.wav\n');
[x,fs]=wavread('wav/tel_1431.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1431.f0' f0 -ascii;
save 'ap/tel_1431.ap' ap -ascii;
save 'sp/tel_1431.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1432.wav\n');
[x,fs]=wavread('wav/tel_1432.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1432.f0' f0 -ascii;
save 'ap/tel_1432.ap' ap -ascii;
save 'sp/tel_1432.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1433.wav\n');
[x,fs]=wavread('wav/tel_1433.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1433.f0' f0 -ascii;
save 'ap/tel_1433.ap' ap -ascii;
save 'sp/tel_1433.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1434.wav\n');
[x,fs]=wavread('wav/tel_1434.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1434.f0' f0 -ascii;
save 'ap/tel_1434.ap' ap -ascii;
save 'sp/tel_1434.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1435.wav\n');
[x,fs]=wavread('wav/tel_1435.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1435.f0' f0 -ascii;
save 'ap/tel_1435.ap' ap -ascii;
save 'sp/tel_1435.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1436.wav\n');
[x,fs]=wavread('wav/tel_1436.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1436.f0' f0 -ascii;
save 'ap/tel_1436.ap' ap -ascii;
save 'sp/tel_1436.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1437.wav\n');
[x,fs]=wavread('wav/tel_1437.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1437.f0' f0 -ascii;
save 'ap/tel_1437.ap' ap -ascii;
save 'sp/tel_1437.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1438.wav\n');
[x,fs]=wavread('wav/tel_1438.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1438.f0' f0 -ascii;
save 'ap/tel_1438.ap' ap -ascii;
save 'sp/tel_1438.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1439.wav\n');
[x,fs]=wavread('wav/tel_1439.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1439.f0' f0 -ascii;
save 'ap/tel_1439.ap' ap -ascii;
save 'sp/tel_1439.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1440.wav\n');
[x,fs]=wavread('wav/tel_1440.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1440.f0' f0 -ascii;
save 'ap/tel_1440.ap' ap -ascii;
save 'sp/tel_1440.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1441.wav\n');
[x,fs]=wavread('wav/tel_1441.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1441.f0' f0 -ascii;
save 'ap/tel_1441.ap' ap -ascii;
save 'sp/tel_1441.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1442.wav\n');
[x,fs]=wavread('wav/tel_1442.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1442.f0' f0 -ascii;
save 'ap/tel_1442.ap' ap -ascii;
save 'sp/tel_1442.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1443.wav\n');
[x,fs]=wavread('wav/tel_1443.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1443.f0' f0 -ascii;
save 'ap/tel_1443.ap' ap -ascii;
save 'sp/tel_1443.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1444.wav\n');
[x,fs]=wavread('wav/tel_1444.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1444.f0' f0 -ascii;
save 'ap/tel_1444.ap' ap -ascii;
save 'sp/tel_1444.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1445.wav\n');
[x,fs]=wavread('wav/tel_1445.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1445.f0' f0 -ascii;
save 'ap/tel_1445.ap' ap -ascii;
save 'sp/tel_1445.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1446.wav\n');
[x,fs]=wavread('wav/tel_1446.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1446.f0' f0 -ascii;
save 'ap/tel_1446.ap' ap -ascii;
save 'sp/tel_1446.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1447.wav\n');
[x,fs]=wavread('wav/tel_1447.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1447.f0' f0 -ascii;
save 'ap/tel_1447.ap' ap -ascii;
save 'sp/tel_1447.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1448.wav\n');
[x,fs]=wavread('wav/tel_1448.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1448.f0' f0 -ascii;
save 'ap/tel_1448.ap' ap -ascii;
save 'sp/tel_1448.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1449.wav\n');
[x,fs]=wavread('wav/tel_1449.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1449.f0' f0 -ascii;
save 'ap/tel_1449.ap' ap -ascii;
save 'sp/tel_1449.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1450.wav\n');
[x,fs]=wavread('wav/tel_1450.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1450.f0' f0 -ascii;
save 'ap/tel_1450.ap' ap -ascii;
save 'sp/tel_1450.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1451.wav\n');
[x,fs]=wavread('wav/tel_1451.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1451.f0' f0 -ascii;
save 'ap/tel_1451.ap' ap -ascii;
save 'sp/tel_1451.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1452.wav\n');
[x,fs]=wavread('wav/tel_1452.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1452.f0' f0 -ascii;
save 'ap/tel_1452.ap' ap -ascii;
save 'sp/tel_1452.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1453.wav\n');
[x,fs]=wavread('wav/tel_1453.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1453.f0' f0 -ascii;
save 'ap/tel_1453.ap' ap -ascii;
save 'sp/tel_1453.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1454.wav\n');
[x,fs]=wavread('wav/tel_1454.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1454.f0' f0 -ascii;
save 'ap/tel_1454.ap' ap -ascii;
save 'sp/tel_1454.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1455.wav\n');
[x,fs]=wavread('wav/tel_1455.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1455.f0' f0 -ascii;
save 'ap/tel_1455.ap' ap -ascii;
save 'sp/tel_1455.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1456.wav\n');
[x,fs]=wavread('wav/tel_1456.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1456.f0' f0 -ascii;
save 'ap/tel_1456.ap' ap -ascii;
save 'sp/tel_1456.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1457.wav\n');
[x,fs]=wavread('wav/tel_1457.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1457.f0' f0 -ascii;
save 'ap/tel_1457.ap' ap -ascii;
save 'sp/tel_1457.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1458.wav\n');
[x,fs]=wavread('wav/tel_1458.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1458.f0' f0 -ascii;
save 'ap/tel_1458.ap' ap -ascii;
save 'sp/tel_1458.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1459.wav\n');
[x,fs]=wavread('wav/tel_1459.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1459.f0' f0 -ascii;
save 'ap/tel_1459.ap' ap -ascii;
save 'sp/tel_1459.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1460.wav\n');
[x,fs]=wavread('wav/tel_1460.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1460.f0' f0 -ascii;
save 'ap/tel_1460.ap' ap -ascii;
save 'sp/tel_1460.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1461.wav\n');
[x,fs]=wavread('wav/tel_1461.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1461.f0' f0 -ascii;
save 'ap/tel_1461.ap' ap -ascii;
save 'sp/tel_1461.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1462.wav\n');
[x,fs]=wavread('wav/tel_1462.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1462.f0' f0 -ascii;
save 'ap/tel_1462.ap' ap -ascii;
save 'sp/tel_1462.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1463.wav\n');
[x,fs]=wavread('wav/tel_1463.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1463.f0' f0 -ascii;
save 'ap/tel_1463.ap' ap -ascii;
save 'sp/tel_1463.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1464.wav\n');
[x,fs]=wavread('wav/tel_1464.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1464.f0' f0 -ascii;
save 'ap/tel_1464.ap' ap -ascii;
save 'sp/tel_1464.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1465.wav\n');
[x,fs]=wavread('wav/tel_1465.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1465.f0' f0 -ascii;
save 'ap/tel_1465.ap' ap -ascii;
save 'sp/tel_1465.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1466.wav\n');
[x,fs]=wavread('wav/tel_1466.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1466.f0' f0 -ascii;
save 'ap/tel_1466.ap' ap -ascii;
save 'sp/tel_1466.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1467.wav\n');
[x,fs]=wavread('wav/tel_1467.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1467.f0' f0 -ascii;
save 'ap/tel_1467.ap' ap -ascii;
save 'sp/tel_1467.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1468.wav\n');
[x,fs]=wavread('wav/tel_1468.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1468.f0' f0 -ascii;
save 'ap/tel_1468.ap' ap -ascii;
save 'sp/tel_1468.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1469.wav\n');
[x,fs]=wavread('wav/tel_1469.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1469.f0' f0 -ascii;
save 'ap/tel_1469.ap' ap -ascii;
save 'sp/tel_1469.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1470.wav\n');
[x,fs]=wavread('wav/tel_1470.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1470.f0' f0 -ascii;
save 'ap/tel_1470.ap' ap -ascii;
save 'sp/tel_1470.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1471.wav\n');
[x,fs]=wavread('wav/tel_1471.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1471.f0' f0 -ascii;
save 'ap/tel_1471.ap' ap -ascii;
save 'sp/tel_1471.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1472.wav\n');
[x,fs]=wavread('wav/tel_1472.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1472.f0' f0 -ascii;
save 'ap/tel_1472.ap' ap -ascii;
save 'sp/tel_1472.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1473.wav\n');
[x,fs]=wavread('wav/tel_1473.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1473.f0' f0 -ascii;
save 'ap/tel_1473.ap' ap -ascii;
save 'sp/tel_1473.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1474.wav\n');
[x,fs]=wavread('wav/tel_1474.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1474.f0' f0 -ascii;
save 'ap/tel_1474.ap' ap -ascii;
save 'sp/tel_1474.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1475.wav\n');
[x,fs]=wavread('wav/tel_1475.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1475.f0' f0 -ascii;
save 'ap/tel_1475.ap' ap -ascii;
save 'sp/tel_1475.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1476.wav\n');
[x,fs]=wavread('wav/tel_1476.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1476.f0' f0 -ascii;
save 'ap/tel_1476.ap' ap -ascii;
save 'sp/tel_1476.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1477.wav\n');
[x,fs]=wavread('wav/tel_1477.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1477.f0' f0 -ascii;
save 'ap/tel_1477.ap' ap -ascii;
save 'sp/tel_1477.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1478.wav\n');
[x,fs]=wavread('wav/tel_1478.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1478.f0' f0 -ascii;
save 'ap/tel_1478.ap' ap -ascii;
save 'sp/tel_1478.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1479.wav\n');
[x,fs]=wavread('wav/tel_1479.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1479.f0' f0 -ascii;
save 'ap/tel_1479.ap' ap -ascii;
save 'sp/tel_1479.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1480.wav\n');
[x,fs]=wavread('wav/tel_1480.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1480.f0' f0 -ascii;
save 'ap/tel_1480.ap' ap -ascii;
save 'sp/tel_1480.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1481.wav\n');
[x,fs]=wavread('wav/tel_1481.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1481.f0' f0 -ascii;
save 'ap/tel_1481.ap' ap -ascii;
save 'sp/tel_1481.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1482.wav\n');
[x,fs]=wavread('wav/tel_1482.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1482.f0' f0 -ascii;
save 'ap/tel_1482.ap' ap -ascii;
save 'sp/tel_1482.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1483.wav\n');
[x,fs]=wavread('wav/tel_1483.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1483.f0' f0 -ascii;
save 'ap/tel_1483.ap' ap -ascii;
save 'sp/tel_1483.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1484.wav\n');
[x,fs]=wavread('wav/tel_1484.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1484.f0' f0 -ascii;
save 'ap/tel_1484.ap' ap -ascii;
save 'sp/tel_1484.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1485.wav\n');
[x,fs]=wavread('wav/tel_1485.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1485.f0' f0 -ascii;
save 'ap/tel_1485.ap' ap -ascii;
save 'sp/tel_1485.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1486.wav\n');
[x,fs]=wavread('wav/tel_1486.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1486.f0' f0 -ascii;
save 'ap/tel_1486.ap' ap -ascii;
save 'sp/tel_1486.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1487.wav\n');
[x,fs]=wavread('wav/tel_1487.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1487.f0' f0 -ascii;
save 'ap/tel_1487.ap' ap -ascii;
save 'sp/tel_1487.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1488.wav\n');
[x,fs]=wavread('wav/tel_1488.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1488.f0' f0 -ascii;
save 'ap/tel_1488.ap' ap -ascii;
save 'sp/tel_1488.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1489.wav\n');
[x,fs]=wavread('wav/tel_1489.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1489.f0' f0 -ascii;
save 'ap/tel_1489.ap' ap -ascii;
save 'sp/tel_1489.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1490.wav\n');
[x,fs]=wavread('wav/tel_1490.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1490.f0' f0 -ascii;
save 'ap/tel_1490.ap' ap -ascii;
save 'sp/tel_1490.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1491.wav\n');
[x,fs]=wavread('wav/tel_1491.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1491.f0' f0 -ascii;
save 'ap/tel_1491.ap' ap -ascii;
save 'sp/tel_1491.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1492.wav\n');
[x,fs]=wavread('wav/tel_1492.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1492.f0' f0 -ascii;
save 'ap/tel_1492.ap' ap -ascii;
save 'sp/tel_1492.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1493.wav\n');
[x,fs]=wavread('wav/tel_1493.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1493.f0' f0 -ascii;
save 'ap/tel_1493.ap' ap -ascii;
save 'sp/tel_1493.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1494.wav\n');
[x,fs]=wavread('wav/tel_1494.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1494.f0' f0 -ascii;
save 'ap/tel_1494.ap' ap -ascii;
save 'sp/tel_1494.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1495.wav\n');
[x,fs]=wavread('wav/tel_1495.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1495.f0' f0 -ascii;
save 'ap/tel_1495.ap' ap -ascii;
save 'sp/tel_1495.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1496.wav\n');
[x,fs]=wavread('wav/tel_1496.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1496.f0' f0 -ascii;
save 'ap/tel_1496.ap' ap -ascii;
save 'sp/tel_1496.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1497.wav\n');
[x,fs]=wavread('wav/tel_1497.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1497.f0' f0 -ascii;
save 'ap/tel_1497.ap' ap -ascii;
save 'sp/tel_1497.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1498.wav\n');
[x,fs]=wavread('wav/tel_1498.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1498.f0' f0 -ascii;
save 'ap/tel_1498.ap' ap -ascii;
save 'sp/tel_1498.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1499.wav\n');
[x,fs]=wavread('wav/tel_1499.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1499.f0' f0 -ascii;
save 'ap/tel_1499.ap' ap -ascii;
save 'sp/tel_1499.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1500.wav\n');
[x,fs]=wavread('wav/tel_1500.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1500.f0' f0 -ascii;
save 'ap/tel_1500.ap' ap -ascii;
save 'sp/tel_1500.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1501.wav\n');
[x,fs]=wavread('wav/tel_1501.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1501.f0' f0 -ascii;
save 'ap/tel_1501.ap' ap -ascii;
save 'sp/tel_1501.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1502.wav\n');
[x,fs]=wavread('wav/tel_1502.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1502.f0' f0 -ascii;
save 'ap/tel_1502.ap' ap -ascii;
save 'sp/tel_1502.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1503.wav\n');
[x,fs]=wavread('wav/tel_1503.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1503.f0' f0 -ascii;
save 'ap/tel_1503.ap' ap -ascii;
save 'sp/tel_1503.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1504.wav\n');
[x,fs]=wavread('wav/tel_1504.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1504.f0' f0 -ascii;
save 'ap/tel_1504.ap' ap -ascii;
save 'sp/tel_1504.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1505.wav\n');
[x,fs]=wavread('wav/tel_1505.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1505.f0' f0 -ascii;
save 'ap/tel_1505.ap' ap -ascii;
save 'sp/tel_1505.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1506.wav\n');
[x,fs]=wavread('wav/tel_1506.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1506.f0' f0 -ascii;
save 'ap/tel_1506.ap' ap -ascii;
save 'sp/tel_1506.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1507.wav\n');
[x,fs]=wavread('wav/tel_1507.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1507.f0' f0 -ascii;
save 'ap/tel_1507.ap' ap -ascii;
save 'sp/tel_1507.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1508.wav\n');
[x,fs]=wavread('wav/tel_1508.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1508.f0' f0 -ascii;
save 'ap/tel_1508.ap' ap -ascii;
save 'sp/tel_1508.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1509.wav\n');
[x,fs]=wavread('wav/tel_1509.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1509.f0' f0 -ascii;
save 'ap/tel_1509.ap' ap -ascii;
save 'sp/tel_1509.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1510.wav\n');
[x,fs]=wavread('wav/tel_1510.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1510.f0' f0 -ascii;
save 'ap/tel_1510.ap' ap -ascii;
save 'sp/tel_1510.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1511.wav\n');
[x,fs]=wavread('wav/tel_1511.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1511.f0' f0 -ascii;
save 'ap/tel_1511.ap' ap -ascii;
save 'sp/tel_1511.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1512.wav\n');
[x,fs]=wavread('wav/tel_1512.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1512.f0' f0 -ascii;
save 'ap/tel_1512.ap' ap -ascii;
save 'sp/tel_1512.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1513.wav\n');
[x,fs]=wavread('wav/tel_1513.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1513.f0' f0 -ascii;
save 'ap/tel_1513.ap' ap -ascii;
save 'sp/tel_1513.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1514.wav\n');
[x,fs]=wavread('wav/tel_1514.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1514.f0' f0 -ascii;
save 'ap/tel_1514.ap' ap -ascii;
save 'sp/tel_1514.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1515.wav\n');
[x,fs]=wavread('wav/tel_1515.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1515.f0' f0 -ascii;
save 'ap/tel_1515.ap' ap -ascii;
save 'sp/tel_1515.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1516.wav\n');
[x,fs]=wavread('wav/tel_1516.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1516.f0' f0 -ascii;
save 'ap/tel_1516.ap' ap -ascii;
save 'sp/tel_1516.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1517.wav\n');
[x,fs]=wavread('wav/tel_1517.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1517.f0' f0 -ascii;
save 'ap/tel_1517.ap' ap -ascii;
save 'sp/tel_1517.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1518.wav\n');
[x,fs]=wavread('wav/tel_1518.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1518.f0' f0 -ascii;
save 'ap/tel_1518.ap' ap -ascii;
save 'sp/tel_1518.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1519.wav\n');
[x,fs]=wavread('wav/tel_1519.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1519.f0' f0 -ascii;
save 'ap/tel_1519.ap' ap -ascii;
save 'sp/tel_1519.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1520.wav\n');
[x,fs]=wavread('wav/tel_1520.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1520.f0' f0 -ascii;
save 'ap/tel_1520.ap' ap -ascii;
save 'sp/tel_1520.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1521.wav\n');
[x,fs]=wavread('wav/tel_1521.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1521.f0' f0 -ascii;
save 'ap/tel_1521.ap' ap -ascii;
save 'sp/tel_1521.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1522.wav\n');
[x,fs]=wavread('wav/tel_1522.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1522.f0' f0 -ascii;
save 'ap/tel_1522.ap' ap -ascii;
save 'sp/tel_1522.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1523.wav\n');
[x,fs]=wavread('wav/tel_1523.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1523.f0' f0 -ascii;
save 'ap/tel_1523.ap' ap -ascii;
save 'sp/tel_1523.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1524.wav\n');
[x,fs]=wavread('wav/tel_1524.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1524.f0' f0 -ascii;
save 'ap/tel_1524.ap' ap -ascii;
save 'sp/tel_1524.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1525.wav\n');
[x,fs]=wavread('wav/tel_1525.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1525.f0' f0 -ascii;
save 'ap/tel_1525.ap' ap -ascii;
save 'sp/tel_1525.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1526.wav\n');
[x,fs]=wavread('wav/tel_1526.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1526.f0' f0 -ascii;
save 'ap/tel_1526.ap' ap -ascii;
save 'sp/tel_1526.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1527.wav\n');
[x,fs]=wavread('wav/tel_1527.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1527.f0' f0 -ascii;
save 'ap/tel_1527.ap' ap -ascii;
save 'sp/tel_1527.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1528.wav\n');
[x,fs]=wavread('wav/tel_1528.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1528.f0' f0 -ascii;
save 'ap/tel_1528.ap' ap -ascii;
save 'sp/tel_1528.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1529.wav\n');
[x,fs]=wavread('wav/tel_1529.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1529.f0' f0 -ascii;
save 'ap/tel_1529.ap' ap -ascii;
save 'sp/tel_1529.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1530.wav\n');
[x,fs]=wavread('wav/tel_1530.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1530.f0' f0 -ascii;
save 'ap/tel_1530.ap' ap -ascii;
save 'sp/tel_1530.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1531.wav\n');
[x,fs]=wavread('wav/tel_1531.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1531.f0' f0 -ascii;
save 'ap/tel_1531.ap' ap -ascii;
save 'sp/tel_1531.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1532.wav\n');
[x,fs]=wavread('wav/tel_1532.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1532.f0' f0 -ascii;
save 'ap/tel_1532.ap' ap -ascii;
save 'sp/tel_1532.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1533.wav\n');
[x,fs]=wavread('wav/tel_1533.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1533.f0' f0 -ascii;
save 'ap/tel_1533.ap' ap -ascii;
save 'sp/tel_1533.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1534.wav\n');
[x,fs]=wavread('wav/tel_1534.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1534.f0' f0 -ascii;
save 'ap/tel_1534.ap' ap -ascii;
save 'sp/tel_1534.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1535.wav\n');
[x,fs]=wavread('wav/tel_1535.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1535.f0' f0 -ascii;
save 'ap/tel_1535.ap' ap -ascii;
save 'sp/tel_1535.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1536.wav\n');
[x,fs]=wavread('wav/tel_1536.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1536.f0' f0 -ascii;
save 'ap/tel_1536.ap' ap -ascii;
save 'sp/tel_1536.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1537.wav\n');
[x,fs]=wavread('wav/tel_1537.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1537.f0' f0 -ascii;
save 'ap/tel_1537.ap' ap -ascii;
save 'sp/tel_1537.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1538.wav\n');
[x,fs]=wavread('wav/tel_1538.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1538.f0' f0 -ascii;
save 'ap/tel_1538.ap' ap -ascii;
save 'sp/tel_1538.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1539.wav\n');
[x,fs]=wavread('wav/tel_1539.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1539.f0' f0 -ascii;
save 'ap/tel_1539.ap' ap -ascii;
save 'sp/tel_1539.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1540.wav\n');
[x,fs]=wavread('wav/tel_1540.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1540.f0' f0 -ascii;
save 'ap/tel_1540.ap' ap -ascii;
save 'sp/tel_1540.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1541.wav\n');
[x,fs]=wavread('wav/tel_1541.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1541.f0' f0 -ascii;
save 'ap/tel_1541.ap' ap -ascii;
save 'sp/tel_1541.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1542.wav\n');
[x,fs]=wavread('wav/tel_1542.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1542.f0' f0 -ascii;
save 'ap/tel_1542.ap' ap -ascii;
save 'sp/tel_1542.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1543.wav\n');
[x,fs]=wavread('wav/tel_1543.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1543.f0' f0 -ascii;
save 'ap/tel_1543.ap' ap -ascii;
save 'sp/tel_1543.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1544.wav\n');
[x,fs]=wavread('wav/tel_1544.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1544.f0' f0 -ascii;
save 'ap/tel_1544.ap' ap -ascii;
save 'sp/tel_1544.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1545.wav\n');
[x,fs]=wavread('wav/tel_1545.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1545.f0' f0 -ascii;
save 'ap/tel_1545.ap' ap -ascii;
save 'sp/tel_1545.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1546.wav\n');
[x,fs]=wavread('wav/tel_1546.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1546.f0' f0 -ascii;
save 'ap/tel_1546.ap' ap -ascii;
save 'sp/tel_1546.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1547.wav\n');
[x,fs]=wavread('wav/tel_1547.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1547.f0' f0 -ascii;
save 'ap/tel_1547.ap' ap -ascii;
save 'sp/tel_1547.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1548.wav\n');
[x,fs]=wavread('wav/tel_1548.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1548.f0' f0 -ascii;
save 'ap/tel_1548.ap' ap -ascii;
save 'sp/tel_1548.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1549.wav\n');
[x,fs]=wavread('wav/tel_1549.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1549.f0' f0 -ascii;
save 'ap/tel_1549.ap' ap -ascii;
save 'sp/tel_1549.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1550.wav\n');
[x,fs]=wavread('wav/tel_1550.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1550.f0' f0 -ascii;
save 'ap/tel_1550.ap' ap -ascii;
save 'sp/tel_1550.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1551.wav\n');
[x,fs]=wavread('wav/tel_1551.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1551.f0' f0 -ascii;
save 'ap/tel_1551.ap' ap -ascii;
save 'sp/tel_1551.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1552.wav\n');
[x,fs]=wavread('wav/tel_1552.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1552.f0' f0 -ascii;
save 'ap/tel_1552.ap' ap -ascii;
save 'sp/tel_1552.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1553.wav\n');
[x,fs]=wavread('wav/tel_1553.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1553.f0' f0 -ascii;
save 'ap/tel_1553.ap' ap -ascii;
save 'sp/tel_1553.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1554.wav\n');
[x,fs]=wavread('wav/tel_1554.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1554.f0' f0 -ascii;
save 'ap/tel_1554.ap' ap -ascii;
save 'sp/tel_1554.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1555.wav\n');
[x,fs]=wavread('wav/tel_1555.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1555.f0' f0 -ascii;
save 'ap/tel_1555.ap' ap -ascii;
save 'sp/tel_1555.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1556.wav\n');
[x,fs]=wavread('wav/tel_1556.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1556.f0' f0 -ascii;
save 'ap/tel_1556.ap' ap -ascii;
save 'sp/tel_1556.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1557.wav\n');
[x,fs]=wavread('wav/tel_1557.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1557.f0' f0 -ascii;
save 'ap/tel_1557.ap' ap -ascii;
save 'sp/tel_1557.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1558.wav\n');
[x,fs]=wavread('wav/tel_1558.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1558.f0' f0 -ascii;
save 'ap/tel_1558.ap' ap -ascii;
save 'sp/tel_1558.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1559.wav\n');
[x,fs]=wavread('wav/tel_1559.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1559.f0' f0 -ascii;
save 'ap/tel_1559.ap' ap -ascii;
save 'sp/tel_1559.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1560.wav\n');
[x,fs]=wavread('wav/tel_1560.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1560.f0' f0 -ascii;
save 'ap/tel_1560.ap' ap -ascii;
save 'sp/tel_1560.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1561.wav\n');
[x,fs]=wavread('wav/tel_1561.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1561.f0' f0 -ascii;
save 'ap/tel_1561.ap' ap -ascii;
save 'sp/tel_1561.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1562.wav\n');
[x,fs]=wavread('wav/tel_1562.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1562.f0' f0 -ascii;
save 'ap/tel_1562.ap' ap -ascii;
save 'sp/tel_1562.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1563.wav\n');
[x,fs]=wavread('wav/tel_1563.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1563.f0' f0 -ascii;
save 'ap/tel_1563.ap' ap -ascii;
save 'sp/tel_1563.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1564.wav\n');
[x,fs]=wavread('wav/tel_1564.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1564.f0' f0 -ascii;
save 'ap/tel_1564.ap' ap -ascii;
save 'sp/tel_1564.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1565.wav\n');
[x,fs]=wavread('wav/tel_1565.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1565.f0' f0 -ascii;
save 'ap/tel_1565.ap' ap -ascii;
save 'sp/tel_1565.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1566.wav\n');
[x,fs]=wavread('wav/tel_1566.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1566.f0' f0 -ascii;
save 'ap/tel_1566.ap' ap -ascii;
save 'sp/tel_1566.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1567.wav\n');
[x,fs]=wavread('wav/tel_1567.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1567.f0' f0 -ascii;
save 'ap/tel_1567.ap' ap -ascii;
save 'sp/tel_1567.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1568.wav\n');
[x,fs]=wavread('wav/tel_1568.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1568.f0' f0 -ascii;
save 'ap/tel_1568.ap' ap -ascii;
save 'sp/tel_1568.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1569.wav\n');
[x,fs]=wavread('wav/tel_1569.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1569.f0' f0 -ascii;
save 'ap/tel_1569.ap' ap -ascii;
save 'sp/tel_1569.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1570.wav\n');
[x,fs]=wavread('wav/tel_1570.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1570.f0' f0 -ascii;
save 'ap/tel_1570.ap' ap -ascii;
save 'sp/tel_1570.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1571.wav\n');
[x,fs]=wavread('wav/tel_1571.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1571.f0' f0 -ascii;
save 'ap/tel_1571.ap' ap -ascii;
save 'sp/tel_1571.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1572.wav\n');
[x,fs]=wavread('wav/tel_1572.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1572.f0' f0 -ascii;
save 'ap/tel_1572.ap' ap -ascii;
save 'sp/tel_1572.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1573.wav\n');
[x,fs]=wavread('wav/tel_1573.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1573.f0' f0 -ascii;
save 'ap/tel_1573.ap' ap -ascii;
save 'sp/tel_1573.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1574.wav\n');
[x,fs]=wavread('wav/tel_1574.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1574.f0' f0 -ascii;
save 'ap/tel_1574.ap' ap -ascii;
save 'sp/tel_1574.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1575.wav\n');
[x,fs]=wavread('wav/tel_1575.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1575.f0' f0 -ascii;
save 'ap/tel_1575.ap' ap -ascii;
save 'sp/tel_1575.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1576.wav\n');
[x,fs]=wavread('wav/tel_1576.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1576.f0' f0 -ascii;
save 'ap/tel_1576.ap' ap -ascii;
save 'sp/tel_1576.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1577.wav\n');
[x,fs]=wavread('wav/tel_1577.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1577.f0' f0 -ascii;
save 'ap/tel_1577.ap' ap -ascii;
save 'sp/tel_1577.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1578.wav\n');
[x,fs]=wavread('wav/tel_1578.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1578.f0' f0 -ascii;
save 'ap/tel_1578.ap' ap -ascii;
save 'sp/tel_1578.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1579.wav\n');
[x,fs]=wavread('wav/tel_1579.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1579.f0' f0 -ascii;
save 'ap/tel_1579.ap' ap -ascii;
save 'sp/tel_1579.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1580.wav\n');
[x,fs]=wavread('wav/tel_1580.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1580.f0' f0 -ascii;
save 'ap/tel_1580.ap' ap -ascii;
save 'sp/tel_1580.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1581.wav\n');
[x,fs]=wavread('wav/tel_1581.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1581.f0' f0 -ascii;
save 'ap/tel_1581.ap' ap -ascii;
save 'sp/tel_1581.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1582.wav\n');
[x,fs]=wavread('wav/tel_1582.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1582.f0' f0 -ascii;
save 'ap/tel_1582.ap' ap -ascii;
save 'sp/tel_1582.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1583.wav\n');
[x,fs]=wavread('wav/tel_1583.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1583.f0' f0 -ascii;
save 'ap/tel_1583.ap' ap -ascii;
save 'sp/tel_1583.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1584.wav\n');
[x,fs]=wavread('wav/tel_1584.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1584.f0' f0 -ascii;
save 'ap/tel_1584.ap' ap -ascii;
save 'sp/tel_1584.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1585.wav\n');
[x,fs]=wavread('wav/tel_1585.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1585.f0' f0 -ascii;
save 'ap/tel_1585.ap' ap -ascii;
save 'sp/tel_1585.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1586.wav\n');
[x,fs]=wavread('wav/tel_1586.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1586.f0' f0 -ascii;
save 'ap/tel_1586.ap' ap -ascii;
save 'sp/tel_1586.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1587.wav\n');
[x,fs]=wavread('wav/tel_1587.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1587.f0' f0 -ascii;
save 'ap/tel_1587.ap' ap -ascii;
save 'sp/tel_1587.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1588.wav\n');
[x,fs]=wavread('wav/tel_1588.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1588.f0' f0 -ascii;
save 'ap/tel_1588.ap' ap -ascii;
save 'sp/tel_1588.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1589.wav\n');
[x,fs]=wavread('wav/tel_1589.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1589.f0' f0 -ascii;
save 'ap/tel_1589.ap' ap -ascii;
save 'sp/tel_1589.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1590.wav\n');
[x,fs]=wavread('wav/tel_1590.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1590.f0' f0 -ascii;
save 'ap/tel_1590.ap' ap -ascii;
save 'sp/tel_1590.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1591.wav\n');
[x,fs]=wavread('wav/tel_1591.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1591.f0' f0 -ascii;
save 'ap/tel_1591.ap' ap -ascii;
save 'sp/tel_1591.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1592.wav\n');
[x,fs]=wavread('wav/tel_1592.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1592.f0' f0 -ascii;
save 'ap/tel_1592.ap' ap -ascii;
save 'sp/tel_1592.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1593.wav\n');
[x,fs]=wavread('wav/tel_1593.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1593.f0' f0 -ascii;
save 'ap/tel_1593.ap' ap -ascii;
save 'sp/tel_1593.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1594.wav\n');
[x,fs]=wavread('wav/tel_1594.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1594.f0' f0 -ascii;
save 'ap/tel_1594.ap' ap -ascii;
save 'sp/tel_1594.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1595.wav\n');
[x,fs]=wavread('wav/tel_1595.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1595.f0' f0 -ascii;
save 'ap/tel_1595.ap' ap -ascii;
save 'sp/tel_1595.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1596.wav\n');
[x,fs]=wavread('wav/tel_1596.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1596.f0' f0 -ascii;
save 'ap/tel_1596.ap' ap -ascii;
save 'sp/tel_1596.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1597.wav\n');
[x,fs]=wavread('wav/tel_1597.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1597.f0' f0 -ascii;
save 'ap/tel_1597.ap' ap -ascii;
save 'sp/tel_1597.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1598.wav\n');
[x,fs]=wavread('wav/tel_1598.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1598.f0' f0 -ascii;
save 'ap/tel_1598.ap' ap -ascii;
save 'sp/tel_1598.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1599.wav\n');
[x,fs]=wavread('wav/tel_1599.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1599.f0' f0 -ascii;
save 'ap/tel_1599.ap' ap -ascii;
save 'sp/tel_1599.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1600.wav\n');
[x,fs]=wavread('wav/tel_1600.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1600.f0' f0 -ascii;
save 'ap/tel_1600.ap' ap -ascii;
save 'sp/tel_1600.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1601.wav\n');
[x,fs]=wavread('wav/tel_1601.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1601.f0' f0 -ascii;
save 'ap/tel_1601.ap' ap -ascii;
save 'sp/tel_1601.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1602.wav\n');
[x,fs]=wavread('wav/tel_1602.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1602.f0' f0 -ascii;
save 'ap/tel_1602.ap' ap -ascii;
save 'sp/tel_1602.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1603.wav\n');
[x,fs]=wavread('wav/tel_1603.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1603.f0' f0 -ascii;
save 'ap/tel_1603.ap' ap -ascii;
save 'sp/tel_1603.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1604.wav\n');
[x,fs]=wavread('wav/tel_1604.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1604.f0' f0 -ascii;
save 'ap/tel_1604.ap' ap -ascii;
save 'sp/tel_1604.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1605.wav\n');
[x,fs]=wavread('wav/tel_1605.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1605.f0' f0 -ascii;
save 'ap/tel_1605.ap' ap -ascii;
save 'sp/tel_1605.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1606.wav\n');
[x,fs]=wavread('wav/tel_1606.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1606.f0' f0 -ascii;
save 'ap/tel_1606.ap' ap -ascii;
save 'sp/tel_1606.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1607.wav\n');
[x,fs]=wavread('wav/tel_1607.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1607.f0' f0 -ascii;
save 'ap/tel_1607.ap' ap -ascii;
save 'sp/tel_1607.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1608.wav\n');
[x,fs]=wavread('wav/tel_1608.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1608.f0' f0 -ascii;
save 'ap/tel_1608.ap' ap -ascii;
save 'sp/tel_1608.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1609.wav\n');
[x,fs]=wavread('wav/tel_1609.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1609.f0' f0 -ascii;
save 'ap/tel_1609.ap' ap -ascii;
save 'sp/tel_1609.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1610.wav\n');
[x,fs]=wavread('wav/tel_1610.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1610.f0' f0 -ascii;
save 'ap/tel_1610.ap' ap -ascii;
save 'sp/tel_1610.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1611.wav\n');
[x,fs]=wavread('wav/tel_1611.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1611.f0' f0 -ascii;
save 'ap/tel_1611.ap' ap -ascii;
save 'sp/tel_1611.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1612.wav\n');
[x,fs]=wavread('wav/tel_1612.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1612.f0' f0 -ascii;
save 'ap/tel_1612.ap' ap -ascii;
save 'sp/tel_1612.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1613.wav\n');
[x,fs]=wavread('wav/tel_1613.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1613.f0' f0 -ascii;
save 'ap/tel_1613.ap' ap -ascii;
save 'sp/tel_1613.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1614.wav\n');
[x,fs]=wavread('wav/tel_1614.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1614.f0' f0 -ascii;
save 'ap/tel_1614.ap' ap -ascii;
save 'sp/tel_1614.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1615.wav\n');
[x,fs]=wavread('wav/tel_1615.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1615.f0' f0 -ascii;
save 'ap/tel_1615.ap' ap -ascii;
save 'sp/tel_1615.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1616.wav\n');
[x,fs]=wavread('wav/tel_1616.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1616.f0' f0 -ascii;
save 'ap/tel_1616.ap' ap -ascii;
save 'sp/tel_1616.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1617.wav\n');
[x,fs]=wavread('wav/tel_1617.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1617.f0' f0 -ascii;
save 'ap/tel_1617.ap' ap -ascii;
save 'sp/tel_1617.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1618.wav\n');
[x,fs]=wavread('wav/tel_1618.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1618.f0' f0 -ascii;
save 'ap/tel_1618.ap' ap -ascii;
save 'sp/tel_1618.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1619.wav\n');
[x,fs]=wavread('wav/tel_1619.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1619.f0' f0 -ascii;
save 'ap/tel_1619.ap' ap -ascii;
save 'sp/tel_1619.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1620.wav\n');
[x,fs]=wavread('wav/tel_1620.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1620.f0' f0 -ascii;
save 'ap/tel_1620.ap' ap -ascii;
save 'sp/tel_1620.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1621.wav\n');
[x,fs]=wavread('wav/tel_1621.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1621.f0' f0 -ascii;
save 'ap/tel_1621.ap' ap -ascii;
save 'sp/tel_1621.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1622.wav\n');
[x,fs]=wavread('wav/tel_1622.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1622.f0' f0 -ascii;
save 'ap/tel_1622.ap' ap -ascii;
save 'sp/tel_1622.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1623.wav\n');
[x,fs]=wavread('wav/tel_1623.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1623.f0' f0 -ascii;
save 'ap/tel_1623.ap' ap -ascii;
save 'sp/tel_1623.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1624.wav\n');
[x,fs]=wavread('wav/tel_1624.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1624.f0' f0 -ascii;
save 'ap/tel_1624.ap' ap -ascii;
save 'sp/tel_1624.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1625.wav\n');
[x,fs]=wavread('wav/tel_1625.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1625.f0' f0 -ascii;
save 'ap/tel_1625.ap' ap -ascii;
save 'sp/tel_1625.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1626.wav\n');
[x,fs]=wavread('wav/tel_1626.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1626.f0' f0 -ascii;
save 'ap/tel_1626.ap' ap -ascii;
save 'sp/tel_1626.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1627.wav\n');
[x,fs]=wavread('wav/tel_1627.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1627.f0' f0 -ascii;
save 'ap/tel_1627.ap' ap -ascii;
save 'sp/tel_1627.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1628.wav\n');
[x,fs]=wavread('wav/tel_1628.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1628.f0' f0 -ascii;
save 'ap/tel_1628.ap' ap -ascii;
save 'sp/tel_1628.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1629.wav\n');
[x,fs]=wavread('wav/tel_1629.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1629.f0' f0 -ascii;
save 'ap/tel_1629.ap' ap -ascii;
save 'sp/tel_1629.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1630.wav\n');
[x,fs]=wavread('wav/tel_1630.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1630.f0' f0 -ascii;
save 'ap/tel_1630.ap' ap -ascii;
save 'sp/tel_1630.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1631.wav\n');
[x,fs]=wavread('wav/tel_1631.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1631.f0' f0 -ascii;
save 'ap/tel_1631.ap' ap -ascii;
save 'sp/tel_1631.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1632.wav\n');
[x,fs]=wavread('wav/tel_1632.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1632.f0' f0 -ascii;
save 'ap/tel_1632.ap' ap -ascii;
save 'sp/tel_1632.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1633.wav\n');
[x,fs]=wavread('wav/tel_1633.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1633.f0' f0 -ascii;
save 'ap/tel_1633.ap' ap -ascii;
save 'sp/tel_1633.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1634.wav\n');
[x,fs]=wavread('wav/tel_1634.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1634.f0' f0 -ascii;
save 'ap/tel_1634.ap' ap -ascii;
save 'sp/tel_1634.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1635.wav\n');
[x,fs]=wavread('wav/tel_1635.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1635.f0' f0 -ascii;
save 'ap/tel_1635.ap' ap -ascii;
save 'sp/tel_1635.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1636.wav\n');
[x,fs]=wavread('wav/tel_1636.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1636.f0' f0 -ascii;
save 'ap/tel_1636.ap' ap -ascii;
save 'sp/tel_1636.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1637.wav\n');
[x,fs]=wavread('wav/tel_1637.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1637.f0' f0 -ascii;
save 'ap/tel_1637.ap' ap -ascii;
save 'sp/tel_1637.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1638.wav\n');
[x,fs]=wavread('wav/tel_1638.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1638.f0' f0 -ascii;
save 'ap/tel_1638.ap' ap -ascii;
save 'sp/tel_1638.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1639.wav\n');
[x,fs]=wavread('wav/tel_1639.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1639.f0' f0 -ascii;
save 'ap/tel_1639.ap' ap -ascii;
save 'sp/tel_1639.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1640.wav\n');
[x,fs]=wavread('wav/tel_1640.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1640.f0' f0 -ascii;
save 'ap/tel_1640.ap' ap -ascii;
save 'sp/tel_1640.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1641.wav\n');
[x,fs]=wavread('wav/tel_1641.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1641.f0' f0 -ascii;
save 'ap/tel_1641.ap' ap -ascii;
save 'sp/tel_1641.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1642.wav\n');
[x,fs]=wavread('wav/tel_1642.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1642.f0' f0 -ascii;
save 'ap/tel_1642.ap' ap -ascii;
save 'sp/tel_1642.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1643.wav\n');
[x,fs]=wavread('wav/tel_1643.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1643.f0' f0 -ascii;
save 'ap/tel_1643.ap' ap -ascii;
save 'sp/tel_1643.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1644.wav\n');
[x,fs]=wavread('wav/tel_1644.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1644.f0' f0 -ascii;
save 'ap/tel_1644.ap' ap -ascii;
save 'sp/tel_1644.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1645.wav\n');
[x,fs]=wavread('wav/tel_1645.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1645.f0' f0 -ascii;
save 'ap/tel_1645.ap' ap -ascii;
save 'sp/tel_1645.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1646.wav\n');
[x,fs]=wavread('wav/tel_1646.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1646.f0' f0 -ascii;
save 'ap/tel_1646.ap' ap -ascii;
save 'sp/tel_1646.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1647.wav\n');
[x,fs]=wavread('wav/tel_1647.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1647.f0' f0 -ascii;
save 'ap/tel_1647.ap' ap -ascii;
save 'sp/tel_1647.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1648.wav\n');
[x,fs]=wavread('wav/tel_1648.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1648.f0' f0 -ascii;
save 'ap/tel_1648.ap' ap -ascii;
save 'sp/tel_1648.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1649.wav\n');
[x,fs]=wavread('wav/tel_1649.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1649.f0' f0 -ascii;
save 'ap/tel_1649.ap' ap -ascii;
save 'sp/tel_1649.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1650.wav\n');
[x,fs]=wavread('wav/tel_1650.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1650.f0' f0 -ascii;
save 'ap/tel_1650.ap' ap -ascii;
save 'sp/tel_1650.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1651.wav\n');
[x,fs]=wavread('wav/tel_1651.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1651.f0' f0 -ascii;
save 'ap/tel_1651.ap' ap -ascii;
save 'sp/tel_1651.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1652.wav\n');
[x,fs]=wavread('wav/tel_1652.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1652.f0' f0 -ascii;
save 'ap/tel_1652.ap' ap -ascii;
save 'sp/tel_1652.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1653.wav\n');
[x,fs]=wavread('wav/tel_1653.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1653.f0' f0 -ascii;
save 'ap/tel_1653.ap' ap -ascii;
save 'sp/tel_1653.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1654.wav\n');
[x,fs]=wavread('wav/tel_1654.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1654.f0' f0 -ascii;
save 'ap/tel_1654.ap' ap -ascii;
save 'sp/tel_1654.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1655.wav\n');
[x,fs]=wavread('wav/tel_1655.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1655.f0' f0 -ascii;
save 'ap/tel_1655.ap' ap -ascii;
save 'sp/tel_1655.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1656.wav\n');
[x,fs]=wavread('wav/tel_1656.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1656.f0' f0 -ascii;
save 'ap/tel_1656.ap' ap -ascii;
save 'sp/tel_1656.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1657.wav\n');
[x,fs]=wavread('wav/tel_1657.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1657.f0' f0 -ascii;
save 'ap/tel_1657.ap' ap -ascii;
save 'sp/tel_1657.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1658.wav\n');
[x,fs]=wavread('wav/tel_1658.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1658.f0' f0 -ascii;
save 'ap/tel_1658.ap' ap -ascii;
save 'sp/tel_1658.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1659.wav\n');
[x,fs]=wavread('wav/tel_1659.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1659.f0' f0 -ascii;
save 'ap/tel_1659.ap' ap -ascii;
save 'sp/tel_1659.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1660.wav\n');
[x,fs]=wavread('wav/tel_1660.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1660.f0' f0 -ascii;
save 'ap/tel_1660.ap' ap -ascii;
save 'sp/tel_1660.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1661.wav\n');
[x,fs]=wavread('wav/tel_1661.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1661.f0' f0 -ascii;
save 'ap/tel_1661.ap' ap -ascii;
save 'sp/tel_1661.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1662.wav\n');
[x,fs]=wavread('wav/tel_1662.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1662.f0' f0 -ascii;
save 'ap/tel_1662.ap' ap -ascii;
save 'sp/tel_1662.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1663.wav\n');
[x,fs]=wavread('wav/tel_1663.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1663.f0' f0 -ascii;
save 'ap/tel_1663.ap' ap -ascii;
save 'sp/tel_1663.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1664.wav\n');
[x,fs]=wavread('wav/tel_1664.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1664.f0' f0 -ascii;
save 'ap/tel_1664.ap' ap -ascii;
save 'sp/tel_1664.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1665.wav\n');
[x,fs]=wavread('wav/tel_1665.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1665.f0' f0 -ascii;
save 'ap/tel_1665.ap' ap -ascii;
save 'sp/tel_1665.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1666.wav\n');
[x,fs]=wavread('wav/tel_1666.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1666.f0' f0 -ascii;
save 'ap/tel_1666.ap' ap -ascii;
save 'sp/tel_1666.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1667.wav\n');
[x,fs]=wavread('wav/tel_1667.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1667.f0' f0 -ascii;
save 'ap/tel_1667.ap' ap -ascii;
save 'sp/tel_1667.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1668.wav\n');
[x,fs]=wavread('wav/tel_1668.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1668.f0' f0 -ascii;
save 'ap/tel_1668.ap' ap -ascii;
save 'sp/tel_1668.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1669.wav\n');
[x,fs]=wavread('wav/tel_1669.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1669.f0' f0 -ascii;
save 'ap/tel_1669.ap' ap -ascii;
save 'sp/tel_1669.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1670.wav\n');
[x,fs]=wavread('wav/tel_1670.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1670.f0' f0 -ascii;
save 'ap/tel_1670.ap' ap -ascii;
save 'sp/tel_1670.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1671.wav\n');
[x,fs]=wavread('wav/tel_1671.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1671.f0' f0 -ascii;
save 'ap/tel_1671.ap' ap -ascii;
save 'sp/tel_1671.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1672.wav\n');
[x,fs]=wavread('wav/tel_1672.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1672.f0' f0 -ascii;
save 'ap/tel_1672.ap' ap -ascii;
save 'sp/tel_1672.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1673.wav\n');
[x,fs]=wavread('wav/tel_1673.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1673.f0' f0 -ascii;
save 'ap/tel_1673.ap' ap -ascii;
save 'sp/tel_1673.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1674.wav\n');
[x,fs]=wavread('wav/tel_1674.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1674.f0' f0 -ascii;
save 'ap/tel_1674.ap' ap -ascii;
save 'sp/tel_1674.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1675.wav\n');
[x,fs]=wavread('wav/tel_1675.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1675.f0' f0 -ascii;
save 'ap/tel_1675.ap' ap -ascii;
save 'sp/tel_1675.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1676.wav\n');
[x,fs]=wavread('wav/tel_1676.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1676.f0' f0 -ascii;
save 'ap/tel_1676.ap' ap -ascii;
save 'sp/tel_1676.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1677.wav\n');
[x,fs]=wavread('wav/tel_1677.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1677.f0' f0 -ascii;
save 'ap/tel_1677.ap' ap -ascii;
save 'sp/tel_1677.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1678.wav\n');
[x,fs]=wavread('wav/tel_1678.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1678.f0' f0 -ascii;
save 'ap/tel_1678.ap' ap -ascii;
save 'sp/tel_1678.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1679.wav\n');
[x,fs]=wavread('wav/tel_1679.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1679.f0' f0 -ascii;
save 'ap/tel_1679.ap' ap -ascii;
save 'sp/tel_1679.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1680.wav\n');
[x,fs]=wavread('wav/tel_1680.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1680.f0' f0 -ascii;
save 'ap/tel_1680.ap' ap -ascii;
save 'sp/tel_1680.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1681.wav\n');
[x,fs]=wavread('wav/tel_1681.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1681.f0' f0 -ascii;
save 'ap/tel_1681.ap' ap -ascii;
save 'sp/tel_1681.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1682.wav\n');
[x,fs]=wavread('wav/tel_1682.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1682.f0' f0 -ascii;
save 'ap/tel_1682.ap' ap -ascii;
save 'sp/tel_1682.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1683.wav\n');
[x,fs]=wavread('wav/tel_1683.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1683.f0' f0 -ascii;
save 'ap/tel_1683.ap' ap -ascii;
save 'sp/tel_1683.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1684.wav\n');
[x,fs]=wavread('wav/tel_1684.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1684.f0' f0 -ascii;
save 'ap/tel_1684.ap' ap -ascii;
save 'sp/tel_1684.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1685.wav\n');
[x,fs]=wavread('wav/tel_1685.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1685.f0' f0 -ascii;
save 'ap/tel_1685.ap' ap -ascii;
save 'sp/tel_1685.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1686.wav\n');
[x,fs]=wavread('wav/tel_1686.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1686.f0' f0 -ascii;
save 'ap/tel_1686.ap' ap -ascii;
save 'sp/tel_1686.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1687.wav\n');
[x,fs]=wavread('wav/tel_1687.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1687.f0' f0 -ascii;
save 'ap/tel_1687.ap' ap -ascii;
save 'sp/tel_1687.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1688.wav\n');
[x,fs]=wavread('wav/tel_1688.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1688.f0' f0 -ascii;
save 'ap/tel_1688.ap' ap -ascii;
save 'sp/tel_1688.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1689.wav\n');
[x,fs]=wavread('wav/tel_1689.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1689.f0' f0 -ascii;
save 'ap/tel_1689.ap' ap -ascii;
save 'sp/tel_1689.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1690.wav\n');
[x,fs]=wavread('wav/tel_1690.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1690.f0' f0 -ascii;
save 'ap/tel_1690.ap' ap -ascii;
save 'sp/tel_1690.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1691.wav\n');
[x,fs]=wavread('wav/tel_1691.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1691.f0' f0 -ascii;
save 'ap/tel_1691.ap' ap -ascii;
save 'sp/tel_1691.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1692.wav\n');
[x,fs]=wavread('wav/tel_1692.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1692.f0' f0 -ascii;
save 'ap/tel_1692.ap' ap -ascii;
save 'sp/tel_1692.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1693.wav\n');
[x,fs]=wavread('wav/tel_1693.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1693.f0' f0 -ascii;
save 'ap/tel_1693.ap' ap -ascii;
save 'sp/tel_1693.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1694.wav\n');
[x,fs]=wavread('wav/tel_1694.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1694.f0' f0 -ascii;
save 'ap/tel_1694.ap' ap -ascii;
save 'sp/tel_1694.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1695.wav\n');
[x,fs]=wavread('wav/tel_1695.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1695.f0' f0 -ascii;
save 'ap/tel_1695.ap' ap -ascii;
save 'sp/tel_1695.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1696.wav\n');
[x,fs]=wavread('wav/tel_1696.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1696.f0' f0 -ascii;
save 'ap/tel_1696.ap' ap -ascii;
save 'sp/tel_1696.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1697.wav\n');
[x,fs]=wavread('wav/tel_1697.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1697.f0' f0 -ascii;
save 'ap/tel_1697.ap' ap -ascii;
save 'sp/tel_1697.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1698.wav\n');
[x,fs]=wavread('wav/tel_1698.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1698.f0' f0 -ascii;
save 'ap/tel_1698.ap' ap -ascii;
save 'sp/tel_1698.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1699.wav\n');
[x,fs]=wavread('wav/tel_1699.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1699.f0' f0 -ascii;
save 'ap/tel_1699.ap' ap -ascii;
save 'sp/tel_1699.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1700.wav\n');
[x,fs]=wavread('wav/tel_1700.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1700.f0' f0 -ascii;
save 'ap/tel_1700.ap' ap -ascii;
save 'sp/tel_1700.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1701.wav\n');
[x,fs]=wavread('wav/tel_1701.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1701.f0' f0 -ascii;
save 'ap/tel_1701.ap' ap -ascii;
save 'sp/tel_1701.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1702.wav\n');
[x,fs]=wavread('wav/tel_1702.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1702.f0' f0 -ascii;
save 'ap/tel_1702.ap' ap -ascii;
save 'sp/tel_1702.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1703.wav\n');
[x,fs]=wavread('wav/tel_1703.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1703.f0' f0 -ascii;
save 'ap/tel_1703.ap' ap -ascii;
save 'sp/tel_1703.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1704.wav\n');
[x,fs]=wavread('wav/tel_1704.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1704.f0' f0 -ascii;
save 'ap/tel_1704.ap' ap -ascii;
save 'sp/tel_1704.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1705.wav\n');
[x,fs]=wavread('wav/tel_1705.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1705.f0' f0 -ascii;
save 'ap/tel_1705.ap' ap -ascii;
save 'sp/tel_1705.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1706.wav\n');
[x,fs]=wavread('wav/tel_1706.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1706.f0' f0 -ascii;
save 'ap/tel_1706.ap' ap -ascii;
save 'sp/tel_1706.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1707.wav\n');
[x,fs]=wavread('wav/tel_1707.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1707.f0' f0 -ascii;
save 'ap/tel_1707.ap' ap -ascii;
save 'sp/tel_1707.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1708.wav\n');
[x,fs]=wavread('wav/tel_1708.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1708.f0' f0 -ascii;
save 'ap/tel_1708.ap' ap -ascii;
save 'sp/tel_1708.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1709.wav\n');
[x,fs]=wavread('wav/tel_1709.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1709.f0' f0 -ascii;
save 'ap/tel_1709.ap' ap -ascii;
save 'sp/tel_1709.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1710.wav\n');
[x,fs]=wavread('wav/tel_1710.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1710.f0' f0 -ascii;
save 'ap/tel_1710.ap' ap -ascii;
save 'sp/tel_1710.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1711.wav\n');
[x,fs]=wavread('wav/tel_1711.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1711.f0' f0 -ascii;
save 'ap/tel_1711.ap' ap -ascii;
save 'sp/tel_1711.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1712.wav\n');
[x,fs]=wavread('wav/tel_1712.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1712.f0' f0 -ascii;
save 'ap/tel_1712.ap' ap -ascii;
save 'sp/tel_1712.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1713.wav\n');
[x,fs]=wavread('wav/tel_1713.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1713.f0' f0 -ascii;
save 'ap/tel_1713.ap' ap -ascii;
save 'sp/tel_1713.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1714.wav\n');
[x,fs]=wavread('wav/tel_1714.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1714.f0' f0 -ascii;
save 'ap/tel_1714.ap' ap -ascii;
save 'sp/tel_1714.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1715.wav\n');
[x,fs]=wavread('wav/tel_1715.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1715.f0' f0 -ascii;
save 'ap/tel_1715.ap' ap -ascii;
save 'sp/tel_1715.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1716.wav\n');
[x,fs]=wavread('wav/tel_1716.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1716.f0' f0 -ascii;
save 'ap/tel_1716.ap' ap -ascii;
save 'sp/tel_1716.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1717.wav\n');
[x,fs]=wavread('wav/tel_1717.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1717.f0' f0 -ascii;
save 'ap/tel_1717.ap' ap -ascii;
save 'sp/tel_1717.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1718.wav\n');
[x,fs]=wavread('wav/tel_1718.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1718.f0' f0 -ascii;
save 'ap/tel_1718.ap' ap -ascii;
save 'sp/tel_1718.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1719.wav\n');
[x,fs]=wavread('wav/tel_1719.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1719.f0' f0 -ascii;
save 'ap/tel_1719.ap' ap -ascii;
save 'sp/tel_1719.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1720.wav\n');
[x,fs]=wavread('wav/tel_1720.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1720.f0' f0 -ascii;
save 'ap/tel_1720.ap' ap -ascii;
save 'sp/tel_1720.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1721.wav\n');
[x,fs]=wavread('wav/tel_1721.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1721.f0' f0 -ascii;
save 'ap/tel_1721.ap' ap -ascii;
save 'sp/tel_1721.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1722.wav\n');
[x,fs]=wavread('wav/tel_1722.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1722.f0' f0 -ascii;
save 'ap/tel_1722.ap' ap -ascii;
save 'sp/tel_1722.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1723.wav\n');
[x,fs]=wavread('wav/tel_1723.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1723.f0' f0 -ascii;
save 'ap/tel_1723.ap' ap -ascii;
save 'sp/tel_1723.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1724.wav\n');
[x,fs]=wavread('wav/tel_1724.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1724.f0' f0 -ascii;
save 'ap/tel_1724.ap' ap -ascii;
save 'sp/tel_1724.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1725.wav\n');
[x,fs]=wavread('wav/tel_1725.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1725.f0' f0 -ascii;
save 'ap/tel_1725.ap' ap -ascii;
save 'sp/tel_1725.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1726.wav\n');
[x,fs]=wavread('wav/tel_1726.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1726.f0' f0 -ascii;
save 'ap/tel_1726.ap' ap -ascii;
save 'sp/tel_1726.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1727.wav\n');
[x,fs]=wavread('wav/tel_1727.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1727.f0' f0 -ascii;
save 'ap/tel_1727.ap' ap -ascii;
save 'sp/tel_1727.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1728.wav\n');
[x,fs]=wavread('wav/tel_1728.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1728.f0' f0 -ascii;
save 'ap/tel_1728.ap' ap -ascii;
save 'sp/tel_1728.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1729.wav\n');
[x,fs]=wavread('wav/tel_1729.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1729.f0' f0 -ascii;
save 'ap/tel_1729.ap' ap -ascii;
save 'sp/tel_1729.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1730.wav\n');
[x,fs]=wavread('wav/tel_1730.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1730.f0' f0 -ascii;
save 'ap/tel_1730.ap' ap -ascii;
save 'sp/tel_1730.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1731.wav\n');
[x,fs]=wavread('wav/tel_1731.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1731.f0' f0 -ascii;
save 'ap/tel_1731.ap' ap -ascii;
save 'sp/tel_1731.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1732.wav\n');
[x,fs]=wavread('wav/tel_1732.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1732.f0' f0 -ascii;
save 'ap/tel_1732.ap' ap -ascii;
save 'sp/tel_1732.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1733.wav\n');
[x,fs]=wavread('wav/tel_1733.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1733.f0' f0 -ascii;
save 'ap/tel_1733.ap' ap -ascii;
save 'sp/tel_1733.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1734.wav\n');
[x,fs]=wavread('wav/tel_1734.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1734.f0' f0 -ascii;
save 'ap/tel_1734.ap' ap -ascii;
save 'sp/tel_1734.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1735.wav\n');
[x,fs]=wavread('wav/tel_1735.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1735.f0' f0 -ascii;
save 'ap/tel_1735.ap' ap -ascii;
save 'sp/tel_1735.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1736.wav\n');
[x,fs]=wavread('wav/tel_1736.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1736.f0' f0 -ascii;
save 'ap/tel_1736.ap' ap -ascii;
save 'sp/tel_1736.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1737.wav\n');
[x,fs]=wavread('wav/tel_1737.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1737.f0' f0 -ascii;
save 'ap/tel_1737.ap' ap -ascii;
save 'sp/tel_1737.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1738.wav\n');
[x,fs]=wavread('wav/tel_1738.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1738.f0' f0 -ascii;
save 'ap/tel_1738.ap' ap -ascii;
save 'sp/tel_1738.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1739.wav\n');
[x,fs]=wavread('wav/tel_1739.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1739.f0' f0 -ascii;
save 'ap/tel_1739.ap' ap -ascii;
save 'sp/tel_1739.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1740.wav\n');
[x,fs]=wavread('wav/tel_1740.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1740.f0' f0 -ascii;
save 'ap/tel_1740.ap' ap -ascii;
save 'sp/tel_1740.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1741.wav\n');
[x,fs]=wavread('wav/tel_1741.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1741.f0' f0 -ascii;
save 'ap/tel_1741.ap' ap -ascii;
save 'sp/tel_1741.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1742.wav\n');
[x,fs]=wavread('wav/tel_1742.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1742.f0' f0 -ascii;
save 'ap/tel_1742.ap' ap -ascii;
save 'sp/tel_1742.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1743.wav\n');
[x,fs]=wavread('wav/tel_1743.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1743.f0' f0 -ascii;
save 'ap/tel_1743.ap' ap -ascii;
save 'sp/tel_1743.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1744.wav\n');
[x,fs]=wavread('wav/tel_1744.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1744.f0' f0 -ascii;
save 'ap/tel_1744.ap' ap -ascii;
save 'sp/tel_1744.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1745.wav\n');
[x,fs]=wavread('wav/tel_1745.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1745.f0' f0 -ascii;
save 'ap/tel_1745.ap' ap -ascii;
save 'sp/tel_1745.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1746.wav\n');
[x,fs]=wavread('wav/tel_1746.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1746.f0' f0 -ascii;
save 'ap/tel_1746.ap' ap -ascii;
save 'sp/tel_1746.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1747.wav\n');
[x,fs]=wavread('wav/tel_1747.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1747.f0' f0 -ascii;
save 'ap/tel_1747.ap' ap -ascii;
save 'sp/tel_1747.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1748.wav\n');
[x,fs]=wavread('wav/tel_1748.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1748.f0' f0 -ascii;
save 'ap/tel_1748.ap' ap -ascii;
save 'sp/tel_1748.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1749.wav\n');
[x,fs]=wavread('wav/tel_1749.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1749.f0' f0 -ascii;
save 'ap/tel_1749.ap' ap -ascii;
save 'sp/tel_1749.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1750.wav\n');
[x,fs]=wavread('wav/tel_1750.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1750.f0' f0 -ascii;
save 'ap/tel_1750.ap' ap -ascii;
save 'sp/tel_1750.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1751.wav\n');
[x,fs]=wavread('wav/tel_1751.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1751.f0' f0 -ascii;
save 'ap/tel_1751.ap' ap -ascii;
save 'sp/tel_1751.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1752.wav\n');
[x,fs]=wavread('wav/tel_1752.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1752.f0' f0 -ascii;
save 'ap/tel_1752.ap' ap -ascii;
save 'sp/tel_1752.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1753.wav\n');
[x,fs]=wavread('wav/tel_1753.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1753.f0' f0 -ascii;
save 'ap/tel_1753.ap' ap -ascii;
save 'sp/tel_1753.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1754.wav\n');
[x,fs]=wavread('wav/tel_1754.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1754.f0' f0 -ascii;
save 'ap/tel_1754.ap' ap -ascii;
save 'sp/tel_1754.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1755.wav\n');
[x,fs]=wavread('wav/tel_1755.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1755.f0' f0 -ascii;
save 'ap/tel_1755.ap' ap -ascii;
save 'sp/tel_1755.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1756.wav\n');
[x,fs]=wavread('wav/tel_1756.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1756.f0' f0 -ascii;
save 'ap/tel_1756.ap' ap -ascii;
save 'sp/tel_1756.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1757.wav\n');
[x,fs]=wavread('wav/tel_1757.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1757.f0' f0 -ascii;
save 'ap/tel_1757.ap' ap -ascii;
save 'sp/tel_1757.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1758.wav\n');
[x,fs]=wavread('wav/tel_1758.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1758.f0' f0 -ascii;
save 'ap/tel_1758.ap' ap -ascii;
save 'sp/tel_1758.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1759.wav\n');
[x,fs]=wavread('wav/tel_1759.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1759.f0' f0 -ascii;
save 'ap/tel_1759.ap' ap -ascii;
save 'sp/tel_1759.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1760.wav\n');
[x,fs]=wavread('wav/tel_1760.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1760.f0' f0 -ascii;
save 'ap/tel_1760.ap' ap -ascii;
save 'sp/tel_1760.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1761.wav\n');
[x,fs]=wavread('wav/tel_1761.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1761.f0' f0 -ascii;
save 'ap/tel_1761.ap' ap -ascii;
save 'sp/tel_1761.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1762.wav\n');
[x,fs]=wavread('wav/tel_1762.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1762.f0' f0 -ascii;
save 'ap/tel_1762.ap' ap -ascii;
save 'sp/tel_1762.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1763.wav\n');
[x,fs]=wavread('wav/tel_1763.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1763.f0' f0 -ascii;
save 'ap/tel_1763.ap' ap -ascii;
save 'sp/tel_1763.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1764.wav\n');
[x,fs]=wavread('wav/tel_1764.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1764.f0' f0 -ascii;
save 'ap/tel_1764.ap' ap -ascii;
save 'sp/tel_1764.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1765.wav\n');
[x,fs]=wavread('wav/tel_1765.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1765.f0' f0 -ascii;
save 'ap/tel_1765.ap' ap -ascii;
save 'sp/tel_1765.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1766.wav\n');
[x,fs]=wavread('wav/tel_1766.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1766.f0' f0 -ascii;
save 'ap/tel_1766.ap' ap -ascii;
save 'sp/tel_1766.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1767.wav\n');
[x,fs]=wavread('wav/tel_1767.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1767.f0' f0 -ascii;
save 'ap/tel_1767.ap' ap -ascii;
save 'sp/tel_1767.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1768.wav\n');
[x,fs]=wavread('wav/tel_1768.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1768.f0' f0 -ascii;
save 'ap/tel_1768.ap' ap -ascii;
save 'sp/tel_1768.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1769.wav\n');
[x,fs]=wavread('wav/tel_1769.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1769.f0' f0 -ascii;
save 'ap/tel_1769.ap' ap -ascii;
save 'sp/tel_1769.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1770.wav\n');
[x,fs]=wavread('wav/tel_1770.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1770.f0' f0 -ascii;
save 'ap/tel_1770.ap' ap -ascii;
save 'sp/tel_1770.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1771.wav\n');
[x,fs]=wavread('wav/tel_1771.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1771.f0' f0 -ascii;
save 'ap/tel_1771.ap' ap -ascii;
save 'sp/tel_1771.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1772.wav\n');
[x,fs]=wavread('wav/tel_1772.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1772.f0' f0 -ascii;
save 'ap/tel_1772.ap' ap -ascii;
save 'sp/tel_1772.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1773.wav\n');
[x,fs]=wavread('wav/tel_1773.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1773.f0' f0 -ascii;
save 'ap/tel_1773.ap' ap -ascii;
save 'sp/tel_1773.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1774.wav\n');
[x,fs]=wavread('wav/tel_1774.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1774.f0' f0 -ascii;
save 'ap/tel_1774.ap' ap -ascii;
save 'sp/tel_1774.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1775.wav\n');
[x,fs]=wavread('wav/tel_1775.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1775.f0' f0 -ascii;
save 'ap/tel_1775.ap' ap -ascii;
save 'sp/tel_1775.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1776.wav\n');
[x,fs]=wavread('wav/tel_1776.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1776.f0' f0 -ascii;
save 'ap/tel_1776.ap' ap -ascii;
save 'sp/tel_1776.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1777.wav\n');
[x,fs]=wavread('wav/tel_1777.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1777.f0' f0 -ascii;
save 'ap/tel_1777.ap' ap -ascii;
save 'sp/tel_1777.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1778.wav\n');
[x,fs]=wavread('wav/tel_1778.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1778.f0' f0 -ascii;
save 'ap/tel_1778.ap' ap -ascii;
save 'sp/tel_1778.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1779.wav\n');
[x,fs]=wavread('wav/tel_1779.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1779.f0' f0 -ascii;
save 'ap/tel_1779.ap' ap -ascii;
save 'sp/tel_1779.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1780.wav\n');
[x,fs]=wavread('wav/tel_1780.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1780.f0' f0 -ascii;
save 'ap/tel_1780.ap' ap -ascii;
save 'sp/tel_1780.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1781.wav\n');
[x,fs]=wavread('wav/tel_1781.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1781.f0' f0 -ascii;
save 'ap/tel_1781.ap' ap -ascii;
save 'sp/tel_1781.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1782.wav\n');
[x,fs]=wavread('wav/tel_1782.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1782.f0' f0 -ascii;
save 'ap/tel_1782.ap' ap -ascii;
save 'sp/tel_1782.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1783.wav\n');
[x,fs]=wavread('wav/tel_1783.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1783.f0' f0 -ascii;
save 'ap/tel_1783.ap' ap -ascii;
save 'sp/tel_1783.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1784.wav\n');
[x,fs]=wavread('wav/tel_1784.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1784.f0' f0 -ascii;
save 'ap/tel_1784.ap' ap -ascii;
save 'sp/tel_1784.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1785.wav\n');
[x,fs]=wavread('wav/tel_1785.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1785.f0' f0 -ascii;
save 'ap/tel_1785.ap' ap -ascii;
save 'sp/tel_1785.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1786.wav\n');
[x,fs]=wavread('wav/tel_1786.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1786.f0' f0 -ascii;
save 'ap/tel_1786.ap' ap -ascii;
save 'sp/tel_1786.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1787.wav\n');
[x,fs]=wavread('wav/tel_1787.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1787.f0' f0 -ascii;
save 'ap/tel_1787.ap' ap -ascii;
save 'sp/tel_1787.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1788.wav\n');
[x,fs]=wavread('wav/tel_1788.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1788.f0' f0 -ascii;
save 'ap/tel_1788.ap' ap -ascii;
save 'sp/tel_1788.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1789.wav\n');
[x,fs]=wavread('wav/tel_1789.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1789.f0' f0 -ascii;
save 'ap/tel_1789.ap' ap -ascii;
save 'sp/tel_1789.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1790.wav\n');
[x,fs]=wavread('wav/tel_1790.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1790.f0' f0 -ascii;
save 'ap/tel_1790.ap' ap -ascii;
save 'sp/tel_1790.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1791.wav\n');
[x,fs]=wavread('wav/tel_1791.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1791.f0' f0 -ascii;
save 'ap/tel_1791.ap' ap -ascii;
save 'sp/tel_1791.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1792.wav\n');
[x,fs]=wavread('wav/tel_1792.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1792.f0' f0 -ascii;
save 'ap/tel_1792.ap' ap -ascii;
save 'sp/tel_1792.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1793.wav\n');
[x,fs]=wavread('wav/tel_1793.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1793.f0' f0 -ascii;
save 'ap/tel_1793.ap' ap -ascii;
save 'sp/tel_1793.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1794.wav\n');
[x,fs]=wavread('wav/tel_1794.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1794.f0' f0 -ascii;
save 'ap/tel_1794.ap' ap -ascii;
save 'sp/tel_1794.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1795.wav\n');
[x,fs]=wavread('wav/tel_1795.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1795.f0' f0 -ascii;
save 'ap/tel_1795.ap' ap -ascii;
save 'sp/tel_1795.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1796.wav\n');
[x,fs]=wavread('wav/tel_1796.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1796.f0' f0 -ascii;
save 'ap/tel_1796.ap' ap -ascii;
save 'sp/tel_1796.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1797.wav\n');
[x,fs]=wavread('wav/tel_1797.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1797.f0' f0 -ascii;
save 'ap/tel_1797.ap' ap -ascii;
save 'sp/tel_1797.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1798.wav\n');
[x,fs]=wavread('wav/tel_1798.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1798.f0' f0 -ascii;
save 'ap/tel_1798.ap' ap -ascii;
save 'sp/tel_1798.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1799.wav\n');
[x,fs]=wavread('wav/tel_1799.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1799.f0' f0 -ascii;
save 'ap/tel_1799.ap' ap -ascii;
save 'sp/tel_1799.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1800.wav\n');
[x,fs]=wavread('wav/tel_1800.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1800.f0' f0 -ascii;
save 'ap/tel_1800.ap' ap -ascii;
save 'sp/tel_1800.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1801.wav\n');
[x,fs]=wavread('wav/tel_1801.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1801.f0' f0 -ascii;
save 'ap/tel_1801.ap' ap -ascii;
save 'sp/tel_1801.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1802.wav\n');
[x,fs]=wavread('wav/tel_1802.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1802.f0' f0 -ascii;
save 'ap/tel_1802.ap' ap -ascii;
save 'sp/tel_1802.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1803.wav\n');
[x,fs]=wavread('wav/tel_1803.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1803.f0' f0 -ascii;
save 'ap/tel_1803.ap' ap -ascii;
save 'sp/tel_1803.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1804.wav\n');
[x,fs]=wavread('wav/tel_1804.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1804.f0' f0 -ascii;
save 'ap/tel_1804.ap' ap -ascii;
save 'sp/tel_1804.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1805.wav\n');
[x,fs]=wavread('wav/tel_1805.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1805.f0' f0 -ascii;
save 'ap/tel_1805.ap' ap -ascii;
save 'sp/tel_1805.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1806.wav\n');
[x,fs]=wavread('wav/tel_1806.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1806.f0' f0 -ascii;
save 'ap/tel_1806.ap' ap -ascii;
save 'sp/tel_1806.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1807.wav\n');
[x,fs]=wavread('wav/tel_1807.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1807.f0' f0 -ascii;
save 'ap/tel_1807.ap' ap -ascii;
save 'sp/tel_1807.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1808.wav\n');
[x,fs]=wavread('wav/tel_1808.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1808.f0' f0 -ascii;
save 'ap/tel_1808.ap' ap -ascii;
save 'sp/tel_1808.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1809.wav\n');
[x,fs]=wavread('wav/tel_1809.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1809.f0' f0 -ascii;
save 'ap/tel_1809.ap' ap -ascii;
save 'sp/tel_1809.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1810.wav\n');
[x,fs]=wavread('wav/tel_1810.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1810.f0' f0 -ascii;
save 'ap/tel_1810.ap' ap -ascii;
save 'sp/tel_1810.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1811.wav\n');
[x,fs]=wavread('wav/tel_1811.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1811.f0' f0 -ascii;
save 'ap/tel_1811.ap' ap -ascii;
save 'sp/tel_1811.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1812.wav\n');
[x,fs]=wavread('wav/tel_1812.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1812.f0' f0 -ascii;
save 'ap/tel_1812.ap' ap -ascii;
save 'sp/tel_1812.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1813.wav\n');
[x,fs]=wavread('wav/tel_1813.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1813.f0' f0 -ascii;
save 'ap/tel_1813.ap' ap -ascii;
save 'sp/tel_1813.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1814.wav\n');
[x,fs]=wavread('wav/tel_1814.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1814.f0' f0 -ascii;
save 'ap/tel_1814.ap' ap -ascii;
save 'sp/tel_1814.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1815.wav\n');
[x,fs]=wavread('wav/tel_1815.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1815.f0' f0 -ascii;
save 'ap/tel_1815.ap' ap -ascii;
save 'sp/tel_1815.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1816.wav\n');
[x,fs]=wavread('wav/tel_1816.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1816.f0' f0 -ascii;
save 'ap/tel_1816.ap' ap -ascii;
save 'sp/tel_1816.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1817.wav\n');
[x,fs]=wavread('wav/tel_1817.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1817.f0' f0 -ascii;
save 'ap/tel_1817.ap' ap -ascii;
save 'sp/tel_1817.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1818.wav\n');
[x,fs]=wavread('wav/tel_1818.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1818.f0' f0 -ascii;
save 'ap/tel_1818.ap' ap -ascii;
save 'sp/tel_1818.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1819.wav\n');
[x,fs]=wavread('wav/tel_1819.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1819.f0' f0 -ascii;
save 'ap/tel_1819.ap' ap -ascii;
save 'sp/tel_1819.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1820.wav\n');
[x,fs]=wavread('wav/tel_1820.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1820.f0' f0 -ascii;
save 'ap/tel_1820.ap' ap -ascii;
save 'sp/tel_1820.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1821.wav\n');
[x,fs]=wavread('wav/tel_1821.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1821.f0' f0 -ascii;
save 'ap/tel_1821.ap' ap -ascii;
save 'sp/tel_1821.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1822.wav\n');
[x,fs]=wavread('wav/tel_1822.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1822.f0' f0 -ascii;
save 'ap/tel_1822.ap' ap -ascii;
save 'sp/tel_1822.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1823.wav\n');
[x,fs]=wavread('wav/tel_1823.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1823.f0' f0 -ascii;
save 'ap/tel_1823.ap' ap -ascii;
save 'sp/tel_1823.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1824.wav\n');
[x,fs]=wavread('wav/tel_1824.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1824.f0' f0 -ascii;
save 'ap/tel_1824.ap' ap -ascii;
save 'sp/tel_1824.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1825.wav\n');
[x,fs]=wavread('wav/tel_1825.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1825.f0' f0 -ascii;
save 'ap/tel_1825.ap' ap -ascii;
save 'sp/tel_1825.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1826.wav\n');
[x,fs]=wavread('wav/tel_1826.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1826.f0' f0 -ascii;
save 'ap/tel_1826.ap' ap -ascii;
save 'sp/tel_1826.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1827.wav\n');
[x,fs]=wavread('wav/tel_1827.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1827.f0' f0 -ascii;
save 'ap/tel_1827.ap' ap -ascii;
save 'sp/tel_1827.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1828.wav\n');
[x,fs]=wavread('wav/tel_1828.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1828.f0' f0 -ascii;
save 'ap/tel_1828.ap' ap -ascii;
save 'sp/tel_1828.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1829.wav\n');
[x,fs]=wavread('wav/tel_1829.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1829.f0' f0 -ascii;
save 'ap/tel_1829.ap' ap -ascii;
save 'sp/tel_1829.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1830.wav\n');
[x,fs]=wavread('wav/tel_1830.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1830.f0' f0 -ascii;
save 'ap/tel_1830.ap' ap -ascii;
save 'sp/tel_1830.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1831.wav\n');
[x,fs]=wavread('wav/tel_1831.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1831.f0' f0 -ascii;
save 'ap/tel_1831.ap' ap -ascii;
save 'sp/tel_1831.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1832.wav\n');
[x,fs]=wavread('wav/tel_1832.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1832.f0' f0 -ascii;
save 'ap/tel_1832.ap' ap -ascii;
save 'sp/tel_1832.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1833.wav\n');
[x,fs]=wavread('wav/tel_1833.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1833.f0' f0 -ascii;
save 'ap/tel_1833.ap' ap -ascii;
save 'sp/tel_1833.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1834.wav\n');
[x,fs]=wavread('wav/tel_1834.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1834.f0' f0 -ascii;
save 'ap/tel_1834.ap' ap -ascii;
save 'sp/tel_1834.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1835.wav\n');
[x,fs]=wavread('wav/tel_1835.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1835.f0' f0 -ascii;
save 'ap/tel_1835.ap' ap -ascii;
save 'sp/tel_1835.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1836.wav\n');
[x,fs]=wavread('wav/tel_1836.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1836.f0' f0 -ascii;
save 'ap/tel_1836.ap' ap -ascii;
save 'sp/tel_1836.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1837.wav\n');
[x,fs]=wavread('wav/tel_1837.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1837.f0' f0 -ascii;
save 'ap/tel_1837.ap' ap -ascii;
save 'sp/tel_1837.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1838.wav\n');
[x,fs]=wavread('wav/tel_1838.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1838.f0' f0 -ascii;
save 'ap/tel_1838.ap' ap -ascii;
save 'sp/tel_1838.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1839.wav\n');
[x,fs]=wavread('wav/tel_1839.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1839.f0' f0 -ascii;
save 'ap/tel_1839.ap' ap -ascii;
save 'sp/tel_1839.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1840.wav\n');
[x,fs]=wavread('wav/tel_1840.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1840.f0' f0 -ascii;
save 'ap/tel_1840.ap' ap -ascii;
save 'sp/tel_1840.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1841.wav\n');
[x,fs]=wavread('wav/tel_1841.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1841.f0' f0 -ascii;
save 'ap/tel_1841.ap' ap -ascii;
save 'sp/tel_1841.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1842.wav\n');
[x,fs]=wavread('wav/tel_1842.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1842.f0' f0 -ascii;
save 'ap/tel_1842.ap' ap -ascii;
save 'sp/tel_1842.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1843.wav\n');
[x,fs]=wavread('wav/tel_1843.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1843.f0' f0 -ascii;
save 'ap/tel_1843.ap' ap -ascii;
save 'sp/tel_1843.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1844.wav\n');
[x,fs]=wavread('wav/tel_1844.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1844.f0' f0 -ascii;
save 'ap/tel_1844.ap' ap -ascii;
save 'sp/tel_1844.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1845.wav\n');
[x,fs]=wavread('wav/tel_1845.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1845.f0' f0 -ascii;
save 'ap/tel_1845.ap' ap -ascii;
save 'sp/tel_1845.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1846.wav\n');
[x,fs]=wavread('wav/tel_1846.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1846.f0' f0 -ascii;
save 'ap/tel_1846.ap' ap -ascii;
save 'sp/tel_1846.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1847.wav\n');
[x,fs]=wavread('wav/tel_1847.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1847.f0' f0 -ascii;
save 'ap/tel_1847.ap' ap -ascii;
save 'sp/tel_1847.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1848.wav\n');
[x,fs]=wavread('wav/tel_1848.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1848.f0' f0 -ascii;
save 'ap/tel_1848.ap' ap -ascii;
save 'sp/tel_1848.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1849.wav\n');
[x,fs]=wavread('wav/tel_1849.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1849.f0' f0 -ascii;
save 'ap/tel_1849.ap' ap -ascii;
save 'sp/tel_1849.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1850.wav\n');
[x,fs]=wavread('wav/tel_1850.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1850.f0' f0 -ascii;
save 'ap/tel_1850.ap' ap -ascii;
save 'sp/tel_1850.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1851.wav\n');
[x,fs]=wavread('wav/tel_1851.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1851.f0' f0 -ascii;
save 'ap/tel_1851.ap' ap -ascii;
save 'sp/tel_1851.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1852.wav\n');
[x,fs]=wavread('wav/tel_1852.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1852.f0' f0 -ascii;
save 'ap/tel_1852.ap' ap -ascii;
save 'sp/tel_1852.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1853.wav\n');
[x,fs]=wavread('wav/tel_1853.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1853.f0' f0 -ascii;
save 'ap/tel_1853.ap' ap -ascii;
save 'sp/tel_1853.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1854.wav\n');
[x,fs]=wavread('wav/tel_1854.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1854.f0' f0 -ascii;
save 'ap/tel_1854.ap' ap -ascii;
save 'sp/tel_1854.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1855.wav\n');
[x,fs]=wavread('wav/tel_1855.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1855.f0' f0 -ascii;
save 'ap/tel_1855.ap' ap -ascii;
save 'sp/tel_1855.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1856.wav\n');
[x,fs]=wavread('wav/tel_1856.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1856.f0' f0 -ascii;
save 'ap/tel_1856.ap' ap -ascii;
save 'sp/tel_1856.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1857.wav\n');
[x,fs]=wavread('wav/tel_1857.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1857.f0' f0 -ascii;
save 'ap/tel_1857.ap' ap -ascii;
save 'sp/tel_1857.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1858.wav\n');
[x,fs]=wavread('wav/tel_1858.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1858.f0' f0 -ascii;
save 'ap/tel_1858.ap' ap -ascii;
save 'sp/tel_1858.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1859.wav\n');
[x,fs]=wavread('wav/tel_1859.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1859.f0' f0 -ascii;
save 'ap/tel_1859.ap' ap -ascii;
save 'sp/tel_1859.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1860.wav\n');
[x,fs]=wavread('wav/tel_1860.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1860.f0' f0 -ascii;
save 'ap/tel_1860.ap' ap -ascii;
save 'sp/tel_1860.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1861.wav\n');
[x,fs]=wavread('wav/tel_1861.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1861.f0' f0 -ascii;
save 'ap/tel_1861.ap' ap -ascii;
save 'sp/tel_1861.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1862.wav\n');
[x,fs]=wavread('wav/tel_1862.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1862.f0' f0 -ascii;
save 'ap/tel_1862.ap' ap -ascii;
save 'sp/tel_1862.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1863.wav\n');
[x,fs]=wavread('wav/tel_1863.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1863.f0' f0 -ascii;
save 'ap/tel_1863.ap' ap -ascii;
save 'sp/tel_1863.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1864.wav\n');
[x,fs]=wavread('wav/tel_1864.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1864.f0' f0 -ascii;
save 'ap/tel_1864.ap' ap -ascii;
save 'sp/tel_1864.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1865.wav\n');
[x,fs]=wavread('wav/tel_1865.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1865.f0' f0 -ascii;
save 'ap/tel_1865.ap' ap -ascii;
save 'sp/tel_1865.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1866.wav\n');
[x,fs]=wavread('wav/tel_1866.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1866.f0' f0 -ascii;
save 'ap/tel_1866.ap' ap -ascii;
save 'sp/tel_1866.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1867.wav\n');
[x,fs]=wavread('wav/tel_1867.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1867.f0' f0 -ascii;
save 'ap/tel_1867.ap' ap -ascii;
save 'sp/tel_1867.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1868.wav\n');
[x,fs]=wavread('wav/tel_1868.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1868.f0' f0 -ascii;
save 'ap/tel_1868.ap' ap -ascii;
save 'sp/tel_1868.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1869.wav\n');
[x,fs]=wavread('wav/tel_1869.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1869.f0' f0 -ascii;
save 'ap/tel_1869.ap' ap -ascii;
save 'sp/tel_1869.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1870.wav\n');
[x,fs]=wavread('wav/tel_1870.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1870.f0' f0 -ascii;
save 'ap/tel_1870.ap' ap -ascii;
save 'sp/tel_1870.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1871.wav\n');
[x,fs]=wavread('wav/tel_1871.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1871.f0' f0 -ascii;
save 'ap/tel_1871.ap' ap -ascii;
save 'sp/tel_1871.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1872.wav\n');
[x,fs]=wavread('wav/tel_1872.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1872.f0' f0 -ascii;
save 'ap/tel_1872.ap' ap -ascii;
save 'sp/tel_1872.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1873.wav\n');
[x,fs]=wavread('wav/tel_1873.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1873.f0' f0 -ascii;
save 'ap/tel_1873.ap' ap -ascii;
save 'sp/tel_1873.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1874.wav\n');
[x,fs]=wavread('wav/tel_1874.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1874.f0' f0 -ascii;
save 'ap/tel_1874.ap' ap -ascii;
save 'sp/tel_1874.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1875.wav\n');
[x,fs]=wavread('wav/tel_1875.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1875.f0' f0 -ascii;
save 'ap/tel_1875.ap' ap -ascii;
save 'sp/tel_1875.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1876.wav\n');
[x,fs]=wavread('wav/tel_1876.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1876.f0' f0 -ascii;
save 'ap/tel_1876.ap' ap -ascii;
save 'sp/tel_1876.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1877.wav\n');
[x,fs]=wavread('wav/tel_1877.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1877.f0' f0 -ascii;
save 'ap/tel_1877.ap' ap -ascii;
save 'sp/tel_1877.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1878.wav\n');
[x,fs]=wavread('wav/tel_1878.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1878.f0' f0 -ascii;
save 'ap/tel_1878.ap' ap -ascii;
save 'sp/tel_1878.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1879.wav\n');
[x,fs]=wavread('wav/tel_1879.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1879.f0' f0 -ascii;
save 'ap/tel_1879.ap' ap -ascii;
save 'sp/tel_1879.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1880.wav\n');
[x,fs]=wavread('wav/tel_1880.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1880.f0' f0 -ascii;
save 'ap/tel_1880.ap' ap -ascii;
save 'sp/tel_1880.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1881.wav\n');
[x,fs]=wavread('wav/tel_1881.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1881.f0' f0 -ascii;
save 'ap/tel_1881.ap' ap -ascii;
save 'sp/tel_1881.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1882.wav\n');
[x,fs]=wavread('wav/tel_1882.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1882.f0' f0 -ascii;
save 'ap/tel_1882.ap' ap -ascii;
save 'sp/tel_1882.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1883.wav\n');
[x,fs]=wavread('wav/tel_1883.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1883.f0' f0 -ascii;
save 'ap/tel_1883.ap' ap -ascii;
save 'sp/tel_1883.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1884.wav\n');
[x,fs]=wavread('wav/tel_1884.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1884.f0' f0 -ascii;
save 'ap/tel_1884.ap' ap -ascii;
save 'sp/tel_1884.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1885.wav\n');
[x,fs]=wavread('wav/tel_1885.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1885.f0' f0 -ascii;
save 'ap/tel_1885.ap' ap -ascii;
save 'sp/tel_1885.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1886.wav\n');
[x,fs]=wavread('wav/tel_1886.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1886.f0' f0 -ascii;
save 'ap/tel_1886.ap' ap -ascii;
save 'sp/tel_1886.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1887.wav\n');
[x,fs]=wavread('wav/tel_1887.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1887.f0' f0 -ascii;
save 'ap/tel_1887.ap' ap -ascii;
save 'sp/tel_1887.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1888.wav\n');
[x,fs]=wavread('wav/tel_1888.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1888.f0' f0 -ascii;
save 'ap/tel_1888.ap' ap -ascii;
save 'sp/tel_1888.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1889.wav\n');
[x,fs]=wavread('wav/tel_1889.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1889.f0' f0 -ascii;
save 'ap/tel_1889.ap' ap -ascii;
save 'sp/tel_1889.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1890.wav\n');
[x,fs]=wavread('wav/tel_1890.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1890.f0' f0 -ascii;
save 'ap/tel_1890.ap' ap -ascii;
save 'sp/tel_1890.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1891.wav\n');
[x,fs]=wavread('wav/tel_1891.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1891.f0' f0 -ascii;
save 'ap/tel_1891.ap' ap -ascii;
save 'sp/tel_1891.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1892.wav\n');
[x,fs]=wavread('wav/tel_1892.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1892.f0' f0 -ascii;
save 'ap/tel_1892.ap' ap -ascii;
save 'sp/tel_1892.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1893.wav\n');
[x,fs]=wavread('wav/tel_1893.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1893.f0' f0 -ascii;
save 'ap/tel_1893.ap' ap -ascii;
save 'sp/tel_1893.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1894.wav\n');
[x,fs]=wavread('wav/tel_1894.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1894.f0' f0 -ascii;
save 'ap/tel_1894.ap' ap -ascii;
save 'sp/tel_1894.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1895.wav\n');
[x,fs]=wavread('wav/tel_1895.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1895.f0' f0 -ascii;
save 'ap/tel_1895.ap' ap -ascii;
save 'sp/tel_1895.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1896.wav\n');
[x,fs]=wavread('wav/tel_1896.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1896.f0' f0 -ascii;
save 'ap/tel_1896.ap' ap -ascii;
save 'sp/tel_1896.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1897.wav\n');
[x,fs]=wavread('wav/tel_1897.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1897.f0' f0 -ascii;
save 'ap/tel_1897.ap' ap -ascii;
save 'sp/tel_1897.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1898.wav\n');
[x,fs]=wavread('wav/tel_1898.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1898.f0' f0 -ascii;
save 'ap/tel_1898.ap' ap -ascii;
save 'sp/tel_1898.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1899.wav\n');
[x,fs]=wavread('wav/tel_1899.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1899.f0' f0 -ascii;
save 'ap/tel_1899.ap' ap -ascii;
save 'sp/tel_1899.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1900.wav\n');
[x,fs]=wavread('wav/tel_1900.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1900.f0' f0 -ascii;
save 'ap/tel_1900.ap' ap -ascii;
save 'sp/tel_1900.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1901.wav\n');
[x,fs]=wavread('wav/tel_1901.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1901.f0' f0 -ascii;
save 'ap/tel_1901.ap' ap -ascii;
save 'sp/tel_1901.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1902.wav\n');
[x,fs]=wavread('wav/tel_1902.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1902.f0' f0 -ascii;
save 'ap/tel_1902.ap' ap -ascii;
save 'sp/tel_1902.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1903.wav\n');
[x,fs]=wavread('wav/tel_1903.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1903.f0' f0 -ascii;
save 'ap/tel_1903.ap' ap -ascii;
save 'sp/tel_1903.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1904.wav\n');
[x,fs]=wavread('wav/tel_1904.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1904.f0' f0 -ascii;
save 'ap/tel_1904.ap' ap -ascii;
save 'sp/tel_1904.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1905.wav\n');
[x,fs]=wavread('wav/tel_1905.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1905.f0' f0 -ascii;
save 'ap/tel_1905.ap' ap -ascii;
save 'sp/tel_1905.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1906.wav\n');
[x,fs]=wavread('wav/tel_1906.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1906.f0' f0 -ascii;
save 'ap/tel_1906.ap' ap -ascii;
save 'sp/tel_1906.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1907.wav\n');
[x,fs]=wavread('wav/tel_1907.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1907.f0' f0 -ascii;
save 'ap/tel_1907.ap' ap -ascii;
save 'sp/tel_1907.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1908.wav\n');
[x,fs]=wavread('wav/tel_1908.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1908.f0' f0 -ascii;
save 'ap/tel_1908.ap' ap -ascii;
save 'sp/tel_1908.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1909.wav\n');
[x,fs]=wavread('wav/tel_1909.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1909.f0' f0 -ascii;
save 'ap/tel_1909.ap' ap -ascii;
save 'sp/tel_1909.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1910.wav\n');
[x,fs]=wavread('wav/tel_1910.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1910.f0' f0 -ascii;
save 'ap/tel_1910.ap' ap -ascii;
save 'sp/tel_1910.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1911.wav\n');
[x,fs]=wavread('wav/tel_1911.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1911.f0' f0 -ascii;
save 'ap/tel_1911.ap' ap -ascii;
save 'sp/tel_1911.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1912.wav\n');
[x,fs]=wavread('wav/tel_1912.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1912.f0' f0 -ascii;
save 'ap/tel_1912.ap' ap -ascii;
save 'sp/tel_1912.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1913.wav\n');
[x,fs]=wavread('wav/tel_1913.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1913.f0' f0 -ascii;
save 'ap/tel_1913.ap' ap -ascii;
save 'sp/tel_1913.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1914.wav\n');
[x,fs]=wavread('wav/tel_1914.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1914.f0' f0 -ascii;
save 'ap/tel_1914.ap' ap -ascii;
save 'sp/tel_1914.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1915.wav\n');
[x,fs]=wavread('wav/tel_1915.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1915.f0' f0 -ascii;
save 'ap/tel_1915.ap' ap -ascii;
save 'sp/tel_1915.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1916.wav\n');
[x,fs]=wavread('wav/tel_1916.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1916.f0' f0 -ascii;
save 'ap/tel_1916.ap' ap -ascii;
save 'sp/tel_1916.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1917.wav\n');
[x,fs]=wavread('wav/tel_1917.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1917.f0' f0 -ascii;
save 'ap/tel_1917.ap' ap -ascii;
save 'sp/tel_1917.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1918.wav\n');
[x,fs]=wavread('wav/tel_1918.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1918.f0' f0 -ascii;
save 'ap/tel_1918.ap' ap -ascii;
save 'sp/tel_1918.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1919.wav\n');
[x,fs]=wavread('wav/tel_1919.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1919.f0' f0 -ascii;
save 'ap/tel_1919.ap' ap -ascii;
save 'sp/tel_1919.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1920.wav\n');
[x,fs]=wavread('wav/tel_1920.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1920.f0' f0 -ascii;
save 'ap/tel_1920.ap' ap -ascii;
save 'sp/tel_1920.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1921.wav\n');
[x,fs]=wavread('wav/tel_1921.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1921.f0' f0 -ascii;
save 'ap/tel_1921.ap' ap -ascii;
save 'sp/tel_1921.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1922.wav\n');
[x,fs]=wavread('wav/tel_1922.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1922.f0' f0 -ascii;
save 'ap/tel_1922.ap' ap -ascii;
save 'sp/tel_1922.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1923.wav\n');
[x,fs]=wavread('wav/tel_1923.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1923.f0' f0 -ascii;
save 'ap/tel_1923.ap' ap -ascii;
save 'sp/tel_1923.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1924.wav\n');
[x,fs]=wavread('wav/tel_1924.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1924.f0' f0 -ascii;
save 'ap/tel_1924.ap' ap -ascii;
save 'sp/tel_1924.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1925.wav\n');
[x,fs]=wavread('wav/tel_1925.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1925.f0' f0 -ascii;
save 'ap/tel_1925.ap' ap -ascii;
save 'sp/tel_1925.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1926.wav\n');
[x,fs]=wavread('wav/tel_1926.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1926.f0' f0 -ascii;
save 'ap/tel_1926.ap' ap -ascii;
save 'sp/tel_1926.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1927.wav\n');
[x,fs]=wavread('wav/tel_1927.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1927.f0' f0 -ascii;
save 'ap/tel_1927.ap' ap -ascii;
save 'sp/tel_1927.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1928.wav\n');
[x,fs]=wavread('wav/tel_1928.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1928.f0' f0 -ascii;
save 'ap/tel_1928.ap' ap -ascii;
save 'sp/tel_1928.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1929.wav\n');
[x,fs]=wavread('wav/tel_1929.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1929.f0' f0 -ascii;
save 'ap/tel_1929.ap' ap -ascii;
save 'sp/tel_1929.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1930.wav\n');
[x,fs]=wavread('wav/tel_1930.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1930.f0' f0 -ascii;
save 'ap/tel_1930.ap' ap -ascii;
save 'sp/tel_1930.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1931.wav\n');
[x,fs]=wavread('wav/tel_1931.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1931.f0' f0 -ascii;
save 'ap/tel_1931.ap' ap -ascii;
save 'sp/tel_1931.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1932.wav\n');
[x,fs]=wavread('wav/tel_1932.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1932.f0' f0 -ascii;
save 'ap/tel_1932.ap' ap -ascii;
save 'sp/tel_1932.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1933.wav\n');
[x,fs]=wavread('wav/tel_1933.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1933.f0' f0 -ascii;
save 'ap/tel_1933.ap' ap -ascii;
save 'sp/tel_1933.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1934.wav\n');
[x,fs]=wavread('wav/tel_1934.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1934.f0' f0 -ascii;
save 'ap/tel_1934.ap' ap -ascii;
save 'sp/tel_1934.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1935.wav\n');
[x,fs]=wavread('wav/tel_1935.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1935.f0' f0 -ascii;
save 'ap/tel_1935.ap' ap -ascii;
save 'sp/tel_1935.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1936.wav\n');
[x,fs]=wavread('wav/tel_1936.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1936.f0' f0 -ascii;
save 'ap/tel_1936.ap' ap -ascii;
save 'sp/tel_1936.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1937.wav\n');
[x,fs]=wavread('wav/tel_1937.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1937.f0' f0 -ascii;
save 'ap/tel_1937.ap' ap -ascii;
save 'sp/tel_1937.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1938.wav\n');
[x,fs]=wavread('wav/tel_1938.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1938.f0' f0 -ascii;
save 'ap/tel_1938.ap' ap -ascii;
save 'sp/tel_1938.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1939.wav\n');
[x,fs]=wavread('wav/tel_1939.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1939.f0' f0 -ascii;
save 'ap/tel_1939.ap' ap -ascii;
save 'sp/tel_1939.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1940.wav\n');
[x,fs]=wavread('wav/tel_1940.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1940.f0' f0 -ascii;
save 'ap/tel_1940.ap' ap -ascii;
save 'sp/tel_1940.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1941.wav\n');
[x,fs]=wavread('wav/tel_1941.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1941.f0' f0 -ascii;
save 'ap/tel_1941.ap' ap -ascii;
save 'sp/tel_1941.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1942.wav\n');
[x,fs]=wavread('wav/tel_1942.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1942.f0' f0 -ascii;
save 'ap/tel_1942.ap' ap -ascii;
save 'sp/tel_1942.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1943.wav\n');
[x,fs]=wavread('wav/tel_1943.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1943.f0' f0 -ascii;
save 'ap/tel_1943.ap' ap -ascii;
save 'sp/tel_1943.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1944.wav\n');
[x,fs]=wavread('wav/tel_1944.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1944.f0' f0 -ascii;
save 'ap/tel_1944.ap' ap -ascii;
save 'sp/tel_1944.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1945.wav\n');
[x,fs]=wavread('wav/tel_1945.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1945.f0' f0 -ascii;
save 'ap/tel_1945.ap' ap -ascii;
save 'sp/tel_1945.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1946.wav\n');
[x,fs]=wavread('wav/tel_1946.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1946.f0' f0 -ascii;
save 'ap/tel_1946.ap' ap -ascii;
save 'sp/tel_1946.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1947.wav\n');
[x,fs]=wavread('wav/tel_1947.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1947.f0' f0 -ascii;
save 'ap/tel_1947.ap' ap -ascii;
save 'sp/tel_1947.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1948.wav\n');
[x,fs]=wavread('wav/tel_1948.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1948.f0' f0 -ascii;
save 'ap/tel_1948.ap' ap -ascii;
save 'sp/tel_1948.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1949.wav\n');
[x,fs]=wavread('wav/tel_1949.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1949.f0' f0 -ascii;
save 'ap/tel_1949.ap' ap -ascii;
save 'sp/tel_1949.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1950.wav\n');
[x,fs]=wavread('wav/tel_1950.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1950.f0' f0 -ascii;
save 'ap/tel_1950.ap' ap -ascii;
save 'sp/tel_1950.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1951.wav\n');
[x,fs]=wavread('wav/tel_1951.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1951.f0' f0 -ascii;
save 'ap/tel_1951.ap' ap -ascii;
save 'sp/tel_1951.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1952.wav\n');
[x,fs]=wavread('wav/tel_1952.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1952.f0' f0 -ascii;
save 'ap/tel_1952.ap' ap -ascii;
save 'sp/tel_1952.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1953.wav\n');
[x,fs]=wavread('wav/tel_1953.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1953.f0' f0 -ascii;
save 'ap/tel_1953.ap' ap -ascii;
save 'sp/tel_1953.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1954.wav\n');
[x,fs]=wavread('wav/tel_1954.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1954.f0' f0 -ascii;
save 'ap/tel_1954.ap' ap -ascii;
save 'sp/tel_1954.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1955.wav\n');
[x,fs]=wavread('wav/tel_1955.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1955.f0' f0 -ascii;
save 'ap/tel_1955.ap' ap -ascii;
save 'sp/tel_1955.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1956.wav\n');
[x,fs]=wavread('wav/tel_1956.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1956.f0' f0 -ascii;
save 'ap/tel_1956.ap' ap -ascii;
save 'sp/tel_1956.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1957.wav\n');
[x,fs]=wavread('wav/tel_1957.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1957.f0' f0 -ascii;
save 'ap/tel_1957.ap' ap -ascii;
save 'sp/tel_1957.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1958.wav\n');
[x,fs]=wavread('wav/tel_1958.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1958.f0' f0 -ascii;
save 'ap/tel_1958.ap' ap -ascii;
save 'sp/tel_1958.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1959.wav\n');
[x,fs]=wavread('wav/tel_1959.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1959.f0' f0 -ascii;
save 'ap/tel_1959.ap' ap -ascii;
save 'sp/tel_1959.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1960.wav\n');
[x,fs]=wavread('wav/tel_1960.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1960.f0' f0 -ascii;
save 'ap/tel_1960.ap' ap -ascii;
save 'sp/tel_1960.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1961.wav\n');
[x,fs]=wavread('wav/tel_1961.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1961.f0' f0 -ascii;
save 'ap/tel_1961.ap' ap -ascii;
save 'sp/tel_1961.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1962.wav\n');
[x,fs]=wavread('wav/tel_1962.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1962.f0' f0 -ascii;
save 'ap/tel_1962.ap' ap -ascii;
save 'sp/tel_1962.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1963.wav\n');
[x,fs]=wavread('wav/tel_1963.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1963.f0' f0 -ascii;
save 'ap/tel_1963.ap' ap -ascii;
save 'sp/tel_1963.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1964.wav\n');
[x,fs]=wavread('wav/tel_1964.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1964.f0' f0 -ascii;
save 'ap/tel_1964.ap' ap -ascii;
save 'sp/tel_1964.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1965.wav\n');
[x,fs]=wavread('wav/tel_1965.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1965.f0' f0 -ascii;
save 'ap/tel_1965.ap' ap -ascii;
save 'sp/tel_1965.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1966.wav\n');
[x,fs]=wavread('wav/tel_1966.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1966.f0' f0 -ascii;
save 'ap/tel_1966.ap' ap -ascii;
save 'sp/tel_1966.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1967.wav\n');
[x,fs]=wavread('wav/tel_1967.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1967.f0' f0 -ascii;
save 'ap/tel_1967.ap' ap -ascii;
save 'sp/tel_1967.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1968.wav\n');
[x,fs]=wavread('wav/tel_1968.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1968.f0' f0 -ascii;
save 'ap/tel_1968.ap' ap -ascii;
save 'sp/tel_1968.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1969.wav\n');
[x,fs]=wavread('wav/tel_1969.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1969.f0' f0 -ascii;
save 'ap/tel_1969.ap' ap -ascii;
save 'sp/tel_1969.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1970.wav\n');
[x,fs]=wavread('wav/tel_1970.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1970.f0' f0 -ascii;
save 'ap/tel_1970.ap' ap -ascii;
save 'sp/tel_1970.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1971.wav\n');
[x,fs]=wavread('wav/tel_1971.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1971.f0' f0 -ascii;
save 'ap/tel_1971.ap' ap -ascii;
save 'sp/tel_1971.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1972.wav\n');
[x,fs]=wavread('wav/tel_1972.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1972.f0' f0 -ascii;
save 'ap/tel_1972.ap' ap -ascii;
save 'sp/tel_1972.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1973.wav\n');
[x,fs]=wavread('wav/tel_1973.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1973.f0' f0 -ascii;
save 'ap/tel_1973.ap' ap -ascii;
save 'sp/tel_1973.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1974.wav\n');
[x,fs]=wavread('wav/tel_1974.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1974.f0' f0 -ascii;
save 'ap/tel_1974.ap' ap -ascii;
save 'sp/tel_1974.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1975.wav\n');
[x,fs]=wavread('wav/tel_1975.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1975.f0' f0 -ascii;
save 'ap/tel_1975.ap' ap -ascii;
save 'sp/tel_1975.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1976.wav\n');
[x,fs]=wavread('wav/tel_1976.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1976.f0' f0 -ascii;
save 'ap/tel_1976.ap' ap -ascii;
save 'sp/tel_1976.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1977.wav\n');
[x,fs]=wavread('wav/tel_1977.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1977.f0' f0 -ascii;
save 'ap/tel_1977.ap' ap -ascii;
save 'sp/tel_1977.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1978.wav\n');
[x,fs]=wavread('wav/tel_1978.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1978.f0' f0 -ascii;
save 'ap/tel_1978.ap' ap -ascii;
save 'sp/tel_1978.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1979.wav\n');
[x,fs]=wavread('wav/tel_1979.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1979.f0' f0 -ascii;
save 'ap/tel_1979.ap' ap -ascii;
save 'sp/tel_1979.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1980.wav\n');
[x,fs]=wavread('wav/tel_1980.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1980.f0' f0 -ascii;
save 'ap/tel_1980.ap' ap -ascii;
save 'sp/tel_1980.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1981.wav\n');
[x,fs]=wavread('wav/tel_1981.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1981.f0' f0 -ascii;
save 'ap/tel_1981.ap' ap -ascii;
save 'sp/tel_1981.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1982.wav\n');
[x,fs]=wavread('wav/tel_1982.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1982.f0' f0 -ascii;
save 'ap/tel_1982.ap' ap -ascii;
save 'sp/tel_1982.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1983.wav\n');
[x,fs]=wavread('wav/tel_1983.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1983.f0' f0 -ascii;
save 'ap/tel_1983.ap' ap -ascii;
save 'sp/tel_1983.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1984.wav\n');
[x,fs]=wavread('wav/tel_1984.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1984.f0' f0 -ascii;
save 'ap/tel_1984.ap' ap -ascii;
save 'sp/tel_1984.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1985.wav\n');
[x,fs]=wavread('wav/tel_1985.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1985.f0' f0 -ascii;
save 'ap/tel_1985.ap' ap -ascii;
save 'sp/tel_1985.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1986.wav\n');
[x,fs]=wavread('wav/tel_1986.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1986.f0' f0 -ascii;
save 'ap/tel_1986.ap' ap -ascii;
save 'sp/tel_1986.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1987.wav\n');
[x,fs]=wavread('wav/tel_1987.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1987.f0' f0 -ascii;
save 'ap/tel_1987.ap' ap -ascii;
save 'sp/tel_1987.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1988.wav\n');
[x,fs]=wavread('wav/tel_1988.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1988.f0' f0 -ascii;
save 'ap/tel_1988.ap' ap -ascii;
save 'sp/tel_1988.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1989.wav\n');
[x,fs]=wavread('wav/tel_1989.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1989.f0' f0 -ascii;
save 'ap/tel_1989.ap' ap -ascii;
save 'sp/tel_1989.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1990.wav\n');
[x,fs]=wavread('wav/tel_1990.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1990.f0' f0 -ascii;
save 'ap/tel_1990.ap' ap -ascii;
save 'sp/tel_1990.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1991.wav\n');
[x,fs]=wavread('wav/tel_1991.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1991.f0' f0 -ascii;
save 'ap/tel_1991.ap' ap -ascii;
save 'sp/tel_1991.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1992.wav\n');
[x,fs]=wavread('wav/tel_1992.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1992.f0' f0 -ascii;
save 'ap/tel_1992.ap' ap -ascii;
save 'sp/tel_1992.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1993.wav\n');
[x,fs]=wavread('wav/tel_1993.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1993.f0' f0 -ascii;
save 'ap/tel_1993.ap' ap -ascii;
save 'sp/tel_1993.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1994.wav\n');
[x,fs]=wavread('wav/tel_1994.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1994.f0' f0 -ascii;
save 'ap/tel_1994.ap' ap -ascii;
save 'sp/tel_1994.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1995.wav\n');
[x,fs]=wavread('wav/tel_1995.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1995.f0' f0 -ascii;
save 'ap/tel_1995.ap' ap -ascii;
save 'sp/tel_1995.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1996.wav\n');
[x,fs]=wavread('wav/tel_1996.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1996.f0' f0 -ascii;
save 'ap/tel_1996.ap' ap -ascii;
save 'sp/tel_1996.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1997.wav\n');
[x,fs]=wavread('wav/tel_1997.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1997.f0' f0 -ascii;
save 'ap/tel_1997.ap' ap -ascii;
save 'sp/tel_1997.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1998.wav\n');
[x,fs]=wavread('wav/tel_1998.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1998.f0' f0 -ascii;
save 'ap/tel_1998.ap' ap -ascii;
save 'sp/tel_1998.sp' sp -ascii;

fprintf(1,'Processing wav/tel_1999.wav\n');
[x,fs]=wavread('wav/tel_1999.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_1999.f0' f0 -ascii;
save 'ap/tel_1999.ap' ap -ascii;
save 'sp/tel_1999.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2000.wav\n');
[x,fs]=wavread('wav/tel_2000.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2000.f0' f0 -ascii;
save 'ap/tel_2000.ap' ap -ascii;
save 'sp/tel_2000.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2001.wav\n');
[x,fs]=wavread('wav/tel_2001.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2001.f0' f0 -ascii;
save 'ap/tel_2001.ap' ap -ascii;
save 'sp/tel_2001.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2002.wav\n');
[x,fs]=wavread('wav/tel_2002.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2002.f0' f0 -ascii;
save 'ap/tel_2002.ap' ap -ascii;
save 'sp/tel_2002.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2003.wav\n');
[x,fs]=wavread('wav/tel_2003.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2003.f0' f0 -ascii;
save 'ap/tel_2003.ap' ap -ascii;
save 'sp/tel_2003.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2004.wav\n');
[x,fs]=wavread('wav/tel_2004.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2004.f0' f0 -ascii;
save 'ap/tel_2004.ap' ap -ascii;
save 'sp/tel_2004.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2005.wav\n');
[x,fs]=wavread('wav/tel_2005.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2005.f0' f0 -ascii;
save 'ap/tel_2005.ap' ap -ascii;
save 'sp/tel_2005.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2006.wav\n');
[x,fs]=wavread('wav/tel_2006.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2006.f0' f0 -ascii;
save 'ap/tel_2006.ap' ap -ascii;
save 'sp/tel_2006.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2007.wav\n');
[x,fs]=wavread('wav/tel_2007.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2007.f0' f0 -ascii;
save 'ap/tel_2007.ap' ap -ascii;
save 'sp/tel_2007.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2008.wav\n');
[x,fs]=wavread('wav/tel_2008.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2008.f0' f0 -ascii;
save 'ap/tel_2008.ap' ap -ascii;
save 'sp/tel_2008.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2009.wav\n');
[x,fs]=wavread('wav/tel_2009.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2009.f0' f0 -ascii;
save 'ap/tel_2009.ap' ap -ascii;
save 'sp/tel_2009.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2010.wav\n');
[x,fs]=wavread('wav/tel_2010.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2010.f0' f0 -ascii;
save 'ap/tel_2010.ap' ap -ascii;
save 'sp/tel_2010.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2011.wav\n');
[x,fs]=wavread('wav/tel_2011.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2011.f0' f0 -ascii;
save 'ap/tel_2011.ap' ap -ascii;
save 'sp/tel_2011.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2012.wav\n');
[x,fs]=wavread('wav/tel_2012.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2012.f0' f0 -ascii;
save 'ap/tel_2012.ap' ap -ascii;
save 'sp/tel_2012.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2013.wav\n');
[x,fs]=wavread('wav/tel_2013.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2013.f0' f0 -ascii;
save 'ap/tel_2013.ap' ap -ascii;
save 'sp/tel_2013.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2014.wav\n');
[x,fs]=wavread('wav/tel_2014.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2014.f0' f0 -ascii;
save 'ap/tel_2014.ap' ap -ascii;
save 'sp/tel_2014.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2015.wav\n');
[x,fs]=wavread('wav/tel_2015.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2015.f0' f0 -ascii;
save 'ap/tel_2015.ap' ap -ascii;
save 'sp/tel_2015.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2016.wav\n');
[x,fs]=wavread('wav/tel_2016.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2016.f0' f0 -ascii;
save 'ap/tel_2016.ap' ap -ascii;
save 'sp/tel_2016.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2017.wav\n');
[x,fs]=wavread('wav/tel_2017.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2017.f0' f0 -ascii;
save 'ap/tel_2017.ap' ap -ascii;
save 'sp/tel_2017.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2018.wav\n');
[x,fs]=wavread('wav/tel_2018.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2018.f0' f0 -ascii;
save 'ap/tel_2018.ap' ap -ascii;
save 'sp/tel_2018.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2019.wav\n');
[x,fs]=wavread('wav/tel_2019.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2019.f0' f0 -ascii;
save 'ap/tel_2019.ap' ap -ascii;
save 'sp/tel_2019.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2020.wav\n');
[x,fs]=wavread('wav/tel_2020.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2020.f0' f0 -ascii;
save 'ap/tel_2020.ap' ap -ascii;
save 'sp/tel_2020.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2021.wav\n');
[x,fs]=wavread('wav/tel_2021.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2021.f0' f0 -ascii;
save 'ap/tel_2021.ap' ap -ascii;
save 'sp/tel_2021.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2022.wav\n');
[x,fs]=wavread('wav/tel_2022.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2022.f0' f0 -ascii;
save 'ap/tel_2022.ap' ap -ascii;
save 'sp/tel_2022.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2023.wav\n');
[x,fs]=wavread('wav/tel_2023.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2023.f0' f0 -ascii;
save 'ap/tel_2023.ap' ap -ascii;
save 'sp/tel_2023.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2024.wav\n');
[x,fs]=wavread('wav/tel_2024.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2024.f0' f0 -ascii;
save 'ap/tel_2024.ap' ap -ascii;
save 'sp/tel_2024.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2025.wav\n');
[x,fs]=wavread('wav/tel_2025.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2025.f0' f0 -ascii;
save 'ap/tel_2025.ap' ap -ascii;
save 'sp/tel_2025.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2026.wav\n');
[x,fs]=wavread('wav/tel_2026.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2026.f0' f0 -ascii;
save 'ap/tel_2026.ap' ap -ascii;
save 'sp/tel_2026.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2027.wav\n');
[x,fs]=wavread('wav/tel_2027.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2027.f0' f0 -ascii;
save 'ap/tel_2027.ap' ap -ascii;
save 'sp/tel_2027.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2028.wav\n');
[x,fs]=wavread('wav/tel_2028.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2028.f0' f0 -ascii;
save 'ap/tel_2028.ap' ap -ascii;
save 'sp/tel_2028.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2029.wav\n');
[x,fs]=wavread('wav/tel_2029.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2029.f0' f0 -ascii;
save 'ap/tel_2029.ap' ap -ascii;
save 'sp/tel_2029.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2030.wav\n');
[x,fs]=wavread('wav/tel_2030.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2030.f0' f0 -ascii;
save 'ap/tel_2030.ap' ap -ascii;
save 'sp/tel_2030.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2031.wav\n');
[x,fs]=wavread('wav/tel_2031.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2031.f0' f0 -ascii;
save 'ap/tel_2031.ap' ap -ascii;
save 'sp/tel_2031.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2032.wav\n');
[x,fs]=wavread('wav/tel_2032.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2032.f0' f0 -ascii;
save 'ap/tel_2032.ap' ap -ascii;
save 'sp/tel_2032.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2033.wav\n');
[x,fs]=wavread('wav/tel_2033.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2033.f0' f0 -ascii;
save 'ap/tel_2033.ap' ap -ascii;
save 'sp/tel_2033.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2034.wav\n');
[x,fs]=wavread('wav/tel_2034.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2034.f0' f0 -ascii;
save 'ap/tel_2034.ap' ap -ascii;
save 'sp/tel_2034.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2035.wav\n');
[x,fs]=wavread('wav/tel_2035.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2035.f0' f0 -ascii;
save 'ap/tel_2035.ap' ap -ascii;
save 'sp/tel_2035.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2036.wav\n');
[x,fs]=wavread('wav/tel_2036.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2036.f0' f0 -ascii;
save 'ap/tel_2036.ap' ap -ascii;
save 'sp/tel_2036.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2037.wav\n');
[x,fs]=wavread('wav/tel_2037.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2037.f0' f0 -ascii;
save 'ap/tel_2037.ap' ap -ascii;
save 'sp/tel_2037.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2038.wav\n');
[x,fs]=wavread('wav/tel_2038.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2038.f0' f0 -ascii;
save 'ap/tel_2038.ap' ap -ascii;
save 'sp/tel_2038.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2039.wav\n');
[x,fs]=wavread('wav/tel_2039.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2039.f0' f0 -ascii;
save 'ap/tel_2039.ap' ap -ascii;
save 'sp/tel_2039.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2040.wav\n');
[x,fs]=wavread('wav/tel_2040.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2040.f0' f0 -ascii;
save 'ap/tel_2040.ap' ap -ascii;
save 'sp/tel_2040.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2041.wav\n');
[x,fs]=wavread('wav/tel_2041.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2041.f0' f0 -ascii;
save 'ap/tel_2041.ap' ap -ascii;
save 'sp/tel_2041.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2042.wav\n');
[x,fs]=wavread('wav/tel_2042.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2042.f0' f0 -ascii;
save 'ap/tel_2042.ap' ap -ascii;
save 'sp/tel_2042.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2043.wav\n');
[x,fs]=wavread('wav/tel_2043.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2043.f0' f0 -ascii;
save 'ap/tel_2043.ap' ap -ascii;
save 'sp/tel_2043.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2044.wav\n');
[x,fs]=wavread('wav/tel_2044.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2044.f0' f0 -ascii;
save 'ap/tel_2044.ap' ap -ascii;
save 'sp/tel_2044.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2045.wav\n');
[x,fs]=wavread('wav/tel_2045.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2045.f0' f0 -ascii;
save 'ap/tel_2045.ap' ap -ascii;
save 'sp/tel_2045.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2046.wav\n');
[x,fs]=wavread('wav/tel_2046.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2046.f0' f0 -ascii;
save 'ap/tel_2046.ap' ap -ascii;
save 'sp/tel_2046.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2047.wav\n');
[x,fs]=wavread('wav/tel_2047.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2047.f0' f0 -ascii;
save 'ap/tel_2047.ap' ap -ascii;
save 'sp/tel_2047.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2048.wav\n');
[x,fs]=wavread('wav/tel_2048.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2048.f0' f0 -ascii;
save 'ap/tel_2048.ap' ap -ascii;
save 'sp/tel_2048.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2049.wav\n');
[x,fs]=wavread('wav/tel_2049.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2049.f0' f0 -ascii;
save 'ap/tel_2049.ap' ap -ascii;
save 'sp/tel_2049.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2050.wav\n');
[x,fs]=wavread('wav/tel_2050.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2050.f0' f0 -ascii;
save 'ap/tel_2050.ap' ap -ascii;
save 'sp/tel_2050.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2051.wav\n');
[x,fs]=wavread('wav/tel_2051.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2051.f0' f0 -ascii;
save 'ap/tel_2051.ap' ap -ascii;
save 'sp/tel_2051.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2052.wav\n');
[x,fs]=wavread('wav/tel_2052.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2052.f0' f0 -ascii;
save 'ap/tel_2052.ap' ap -ascii;
save 'sp/tel_2052.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2053.wav\n');
[x,fs]=wavread('wav/tel_2053.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2053.f0' f0 -ascii;
save 'ap/tel_2053.ap' ap -ascii;
save 'sp/tel_2053.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2054.wav\n');
[x,fs]=wavread('wav/tel_2054.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2054.f0' f0 -ascii;
save 'ap/tel_2054.ap' ap -ascii;
save 'sp/tel_2054.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2055.wav\n');
[x,fs]=wavread('wav/tel_2055.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2055.f0' f0 -ascii;
save 'ap/tel_2055.ap' ap -ascii;
save 'sp/tel_2055.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2056.wav\n');
[x,fs]=wavread('wav/tel_2056.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2056.f0' f0 -ascii;
save 'ap/tel_2056.ap' ap -ascii;
save 'sp/tel_2056.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2057.wav\n');
[x,fs]=wavread('wav/tel_2057.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2057.f0' f0 -ascii;
save 'ap/tel_2057.ap' ap -ascii;
save 'sp/tel_2057.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2058.wav\n');
[x,fs]=wavread('wav/tel_2058.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2058.f0' f0 -ascii;
save 'ap/tel_2058.ap' ap -ascii;
save 'sp/tel_2058.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2059.wav\n');
[x,fs]=wavread('wav/tel_2059.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2059.f0' f0 -ascii;
save 'ap/tel_2059.ap' ap -ascii;
save 'sp/tel_2059.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2060.wav\n');
[x,fs]=wavread('wav/tel_2060.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2060.f0' f0 -ascii;
save 'ap/tel_2060.ap' ap -ascii;
save 'sp/tel_2060.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2061.wav\n');
[x,fs]=wavread('wav/tel_2061.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2061.f0' f0 -ascii;
save 'ap/tel_2061.ap' ap -ascii;
save 'sp/tel_2061.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2062.wav\n');
[x,fs]=wavread('wav/tel_2062.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2062.f0' f0 -ascii;
save 'ap/tel_2062.ap' ap -ascii;
save 'sp/tel_2062.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2063.wav\n');
[x,fs]=wavread('wav/tel_2063.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2063.f0' f0 -ascii;
save 'ap/tel_2063.ap' ap -ascii;
save 'sp/tel_2063.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2064.wav\n');
[x,fs]=wavread('wav/tel_2064.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2064.f0' f0 -ascii;
save 'ap/tel_2064.ap' ap -ascii;
save 'sp/tel_2064.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2065.wav\n');
[x,fs]=wavread('wav/tel_2065.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2065.f0' f0 -ascii;
save 'ap/tel_2065.ap' ap -ascii;
save 'sp/tel_2065.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2066.wav\n');
[x,fs]=wavread('wav/tel_2066.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2066.f0' f0 -ascii;
save 'ap/tel_2066.ap' ap -ascii;
save 'sp/tel_2066.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2067.wav\n');
[x,fs]=wavread('wav/tel_2067.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2067.f0' f0 -ascii;
save 'ap/tel_2067.ap' ap -ascii;
save 'sp/tel_2067.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2068.wav\n');
[x,fs]=wavread('wav/tel_2068.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2068.f0' f0 -ascii;
save 'ap/tel_2068.ap' ap -ascii;
save 'sp/tel_2068.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2069.wav\n');
[x,fs]=wavread('wav/tel_2069.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2069.f0' f0 -ascii;
save 'ap/tel_2069.ap' ap -ascii;
save 'sp/tel_2069.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2070.wav\n');
[x,fs]=wavread('wav/tel_2070.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2070.f0' f0 -ascii;
save 'ap/tel_2070.ap' ap -ascii;
save 'sp/tel_2070.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2071.wav\n');
[x,fs]=wavread('wav/tel_2071.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2071.f0' f0 -ascii;
save 'ap/tel_2071.ap' ap -ascii;
save 'sp/tel_2071.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2072.wav\n');
[x,fs]=wavread('wav/tel_2072.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2072.f0' f0 -ascii;
save 'ap/tel_2072.ap' ap -ascii;
save 'sp/tel_2072.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2073.wav\n');
[x,fs]=wavread('wav/tel_2073.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2073.f0' f0 -ascii;
save 'ap/tel_2073.ap' ap -ascii;
save 'sp/tel_2073.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2074.wav\n');
[x,fs]=wavread('wav/tel_2074.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2074.f0' f0 -ascii;
save 'ap/tel_2074.ap' ap -ascii;
save 'sp/tel_2074.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2075.wav\n');
[x,fs]=wavread('wav/tel_2075.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2075.f0' f0 -ascii;
save 'ap/tel_2075.ap' ap -ascii;
save 'sp/tel_2075.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2076.wav\n');
[x,fs]=wavread('wav/tel_2076.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2076.f0' f0 -ascii;
save 'ap/tel_2076.ap' ap -ascii;
save 'sp/tel_2076.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2077.wav\n');
[x,fs]=wavread('wav/tel_2077.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2077.f0' f0 -ascii;
save 'ap/tel_2077.ap' ap -ascii;
save 'sp/tel_2077.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2078.wav\n');
[x,fs]=wavread('wav/tel_2078.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2078.f0' f0 -ascii;
save 'ap/tel_2078.ap' ap -ascii;
save 'sp/tel_2078.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2079.wav\n');
[x,fs]=wavread('wav/tel_2079.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2079.f0' f0 -ascii;
save 'ap/tel_2079.ap' ap -ascii;
save 'sp/tel_2079.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2080.wav\n');
[x,fs]=wavread('wav/tel_2080.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2080.f0' f0 -ascii;
save 'ap/tel_2080.ap' ap -ascii;
save 'sp/tel_2080.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2081.wav\n');
[x,fs]=wavread('wav/tel_2081.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2081.f0' f0 -ascii;
save 'ap/tel_2081.ap' ap -ascii;
save 'sp/tel_2081.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2082.wav\n');
[x,fs]=wavread('wav/tel_2082.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2082.f0' f0 -ascii;
save 'ap/tel_2082.ap' ap -ascii;
save 'sp/tel_2082.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2083.wav\n');
[x,fs]=wavread('wav/tel_2083.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2083.f0' f0 -ascii;
save 'ap/tel_2083.ap' ap -ascii;
save 'sp/tel_2083.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2084.wav\n');
[x,fs]=wavread('wav/tel_2084.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2084.f0' f0 -ascii;
save 'ap/tel_2084.ap' ap -ascii;
save 'sp/tel_2084.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2085.wav\n');
[x,fs]=wavread('wav/tel_2085.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2085.f0' f0 -ascii;
save 'ap/tel_2085.ap' ap -ascii;
save 'sp/tel_2085.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2086.wav\n');
[x,fs]=wavread('wav/tel_2086.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2086.f0' f0 -ascii;
save 'ap/tel_2086.ap' ap -ascii;
save 'sp/tel_2086.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2087.wav\n');
[x,fs]=wavread('wav/tel_2087.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2087.f0' f0 -ascii;
save 'ap/tel_2087.ap' ap -ascii;
save 'sp/tel_2087.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2088.wav\n');
[x,fs]=wavread('wav/tel_2088.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2088.f0' f0 -ascii;
save 'ap/tel_2088.ap' ap -ascii;
save 'sp/tel_2088.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2089.wav\n');
[x,fs]=wavread('wav/tel_2089.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2089.f0' f0 -ascii;
save 'ap/tel_2089.ap' ap -ascii;
save 'sp/tel_2089.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2090.wav\n');
[x,fs]=wavread('wav/tel_2090.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2090.f0' f0 -ascii;
save 'ap/tel_2090.ap' ap -ascii;
save 'sp/tel_2090.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2091.wav\n');
[x,fs]=wavread('wav/tel_2091.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2091.f0' f0 -ascii;
save 'ap/tel_2091.ap' ap -ascii;
save 'sp/tel_2091.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2092.wav\n');
[x,fs]=wavread('wav/tel_2092.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2092.f0' f0 -ascii;
save 'ap/tel_2092.ap' ap -ascii;
save 'sp/tel_2092.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2093.wav\n');
[x,fs]=wavread('wav/tel_2093.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2093.f0' f0 -ascii;
save 'ap/tel_2093.ap' ap -ascii;
save 'sp/tel_2093.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2094.wav\n');
[x,fs]=wavread('wav/tel_2094.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2094.f0' f0 -ascii;
save 'ap/tel_2094.ap' ap -ascii;
save 'sp/tel_2094.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2095.wav\n');
[x,fs]=wavread('wav/tel_2095.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2095.f0' f0 -ascii;
save 'ap/tel_2095.ap' ap -ascii;
save 'sp/tel_2095.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2096.wav\n');
[x,fs]=wavread('wav/tel_2096.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2096.f0' f0 -ascii;
save 'ap/tel_2096.ap' ap -ascii;
save 'sp/tel_2096.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2097.wav\n');
[x,fs]=wavread('wav/tel_2097.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2097.f0' f0 -ascii;
save 'ap/tel_2097.ap' ap -ascii;
save 'sp/tel_2097.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2098.wav\n');
[x,fs]=wavread('wav/tel_2098.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2098.f0' f0 -ascii;
save 'ap/tel_2098.ap' ap -ascii;
save 'sp/tel_2098.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2099.wav\n');
[x,fs]=wavread('wav/tel_2099.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2099.f0' f0 -ascii;
save 'ap/tel_2099.ap' ap -ascii;
save 'sp/tel_2099.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2100.wav\n');
[x,fs]=wavread('wav/tel_2100.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2100.f0' f0 -ascii;
save 'ap/tel_2100.ap' ap -ascii;
save 'sp/tel_2100.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2101.wav\n');
[x,fs]=wavread('wav/tel_2101.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2101.f0' f0 -ascii;
save 'ap/tel_2101.ap' ap -ascii;
save 'sp/tel_2101.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2102.wav\n');
[x,fs]=wavread('wav/tel_2102.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2102.f0' f0 -ascii;
save 'ap/tel_2102.ap' ap -ascii;
save 'sp/tel_2102.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2103.wav\n');
[x,fs]=wavread('wav/tel_2103.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2103.f0' f0 -ascii;
save 'ap/tel_2103.ap' ap -ascii;
save 'sp/tel_2103.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2104.wav\n');
[x,fs]=wavread('wav/tel_2104.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2104.f0' f0 -ascii;
save 'ap/tel_2104.ap' ap -ascii;
save 'sp/tel_2104.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2105.wav\n');
[x,fs]=wavread('wav/tel_2105.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2105.f0' f0 -ascii;
save 'ap/tel_2105.ap' ap -ascii;
save 'sp/tel_2105.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2106.wav\n');
[x,fs]=wavread('wav/tel_2106.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2106.f0' f0 -ascii;
save 'ap/tel_2106.ap' ap -ascii;
save 'sp/tel_2106.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2107.wav\n');
[x,fs]=wavread('wav/tel_2107.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2107.f0' f0 -ascii;
save 'ap/tel_2107.ap' ap -ascii;
save 'sp/tel_2107.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2108.wav\n');
[x,fs]=wavread('wav/tel_2108.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2108.f0' f0 -ascii;
save 'ap/tel_2108.ap' ap -ascii;
save 'sp/tel_2108.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2109.wav\n');
[x,fs]=wavread('wav/tel_2109.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2109.f0' f0 -ascii;
save 'ap/tel_2109.ap' ap -ascii;
save 'sp/tel_2109.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2110.wav\n');
[x,fs]=wavread('wav/tel_2110.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2110.f0' f0 -ascii;
save 'ap/tel_2110.ap' ap -ascii;
save 'sp/tel_2110.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2111.wav\n');
[x,fs]=wavread('wav/tel_2111.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2111.f0' f0 -ascii;
save 'ap/tel_2111.ap' ap -ascii;
save 'sp/tel_2111.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2112.wav\n');
[x,fs]=wavread('wav/tel_2112.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2112.f0' f0 -ascii;
save 'ap/tel_2112.ap' ap -ascii;
save 'sp/tel_2112.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2113.wav\n');
[x,fs]=wavread('wav/tel_2113.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2113.f0' f0 -ascii;
save 'ap/tel_2113.ap' ap -ascii;
save 'sp/tel_2113.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2114.wav\n');
[x,fs]=wavread('wav/tel_2114.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2114.f0' f0 -ascii;
save 'ap/tel_2114.ap' ap -ascii;
save 'sp/tel_2114.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2115.wav\n');
[x,fs]=wavread('wav/tel_2115.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2115.f0' f0 -ascii;
save 'ap/tel_2115.ap' ap -ascii;
save 'sp/tel_2115.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2116.wav\n');
[x,fs]=wavread('wav/tel_2116.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2116.f0' f0 -ascii;
save 'ap/tel_2116.ap' ap -ascii;
save 'sp/tel_2116.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2117.wav\n');
[x,fs]=wavread('wav/tel_2117.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2117.f0' f0 -ascii;
save 'ap/tel_2117.ap' ap -ascii;
save 'sp/tel_2117.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2118.wav\n');
[x,fs]=wavread('wav/tel_2118.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2118.f0' f0 -ascii;
save 'ap/tel_2118.ap' ap -ascii;
save 'sp/tel_2118.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2119.wav\n');
[x,fs]=wavread('wav/tel_2119.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2119.f0' f0 -ascii;
save 'ap/tel_2119.ap' ap -ascii;
save 'sp/tel_2119.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2120.wav\n');
[x,fs]=wavread('wav/tel_2120.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2120.f0' f0 -ascii;
save 'ap/tel_2120.ap' ap -ascii;
save 'sp/tel_2120.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2121.wav\n');
[x,fs]=wavread('wav/tel_2121.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2121.f0' f0 -ascii;
save 'ap/tel_2121.ap' ap -ascii;
save 'sp/tel_2121.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2122.wav\n');
[x,fs]=wavread('wav/tel_2122.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2122.f0' f0 -ascii;
save 'ap/tel_2122.ap' ap -ascii;
save 'sp/tel_2122.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2123.wav\n');
[x,fs]=wavread('wav/tel_2123.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2123.f0' f0 -ascii;
save 'ap/tel_2123.ap' ap -ascii;
save 'sp/tel_2123.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2124.wav\n');
[x,fs]=wavread('wav/tel_2124.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2124.f0' f0 -ascii;
save 'ap/tel_2124.ap' ap -ascii;
save 'sp/tel_2124.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2125.wav\n');
[x,fs]=wavread('wav/tel_2125.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2125.f0' f0 -ascii;
save 'ap/tel_2125.ap' ap -ascii;
save 'sp/tel_2125.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2126.wav\n');
[x,fs]=wavread('wav/tel_2126.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2126.f0' f0 -ascii;
save 'ap/tel_2126.ap' ap -ascii;
save 'sp/tel_2126.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2127.wav\n');
[x,fs]=wavread('wav/tel_2127.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2127.f0' f0 -ascii;
save 'ap/tel_2127.ap' ap -ascii;
save 'sp/tel_2127.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2128.wav\n');
[x,fs]=wavread('wav/tel_2128.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2128.f0' f0 -ascii;
save 'ap/tel_2128.ap' ap -ascii;
save 'sp/tel_2128.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2129.wav\n');
[x,fs]=wavread('wav/tel_2129.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2129.f0' f0 -ascii;
save 'ap/tel_2129.ap' ap -ascii;
save 'sp/tel_2129.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2130.wav\n');
[x,fs]=wavread('wav/tel_2130.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2130.f0' f0 -ascii;
save 'ap/tel_2130.ap' ap -ascii;
save 'sp/tel_2130.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2131.wav\n');
[x,fs]=wavread('wav/tel_2131.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2131.f0' f0 -ascii;
save 'ap/tel_2131.ap' ap -ascii;
save 'sp/tel_2131.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2132.wav\n');
[x,fs]=wavread('wav/tel_2132.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2132.f0' f0 -ascii;
save 'ap/tel_2132.ap' ap -ascii;
save 'sp/tel_2132.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2133.wav\n');
[x,fs]=wavread('wav/tel_2133.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2133.f0' f0 -ascii;
save 'ap/tel_2133.ap' ap -ascii;
save 'sp/tel_2133.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2134.wav\n');
[x,fs]=wavread('wav/tel_2134.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2134.f0' f0 -ascii;
save 'ap/tel_2134.ap' ap -ascii;
save 'sp/tel_2134.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2135.wav\n');
[x,fs]=wavread('wav/tel_2135.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2135.f0' f0 -ascii;
save 'ap/tel_2135.ap' ap -ascii;
save 'sp/tel_2135.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2136.wav\n');
[x,fs]=wavread('wav/tel_2136.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2136.f0' f0 -ascii;
save 'ap/tel_2136.ap' ap -ascii;
save 'sp/tel_2136.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2137.wav\n');
[x,fs]=wavread('wav/tel_2137.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2137.f0' f0 -ascii;
save 'ap/tel_2137.ap' ap -ascii;
save 'sp/tel_2137.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2138.wav\n');
[x,fs]=wavread('wav/tel_2138.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2138.f0' f0 -ascii;
save 'ap/tel_2138.ap' ap -ascii;
save 'sp/tel_2138.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2139.wav\n');
[x,fs]=wavread('wav/tel_2139.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2139.f0' f0 -ascii;
save 'ap/tel_2139.ap' ap -ascii;
save 'sp/tel_2139.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2140.wav\n');
[x,fs]=wavread('wav/tel_2140.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2140.f0' f0 -ascii;
save 'ap/tel_2140.ap' ap -ascii;
save 'sp/tel_2140.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2141.wav\n');
[x,fs]=wavread('wav/tel_2141.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2141.f0' f0 -ascii;
save 'ap/tel_2141.ap' ap -ascii;
save 'sp/tel_2141.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2142.wav\n');
[x,fs]=wavread('wav/tel_2142.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2142.f0' f0 -ascii;
save 'ap/tel_2142.ap' ap -ascii;
save 'sp/tel_2142.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2143.wav\n');
[x,fs]=wavread('wav/tel_2143.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2143.f0' f0 -ascii;
save 'ap/tel_2143.ap' ap -ascii;
save 'sp/tel_2143.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2144.wav\n');
[x,fs]=wavread('wav/tel_2144.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2144.f0' f0 -ascii;
save 'ap/tel_2144.ap' ap -ascii;
save 'sp/tel_2144.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2145.wav\n');
[x,fs]=wavread('wav/tel_2145.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2145.f0' f0 -ascii;
save 'ap/tel_2145.ap' ap -ascii;
save 'sp/tel_2145.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2146.wav\n');
[x,fs]=wavread('wav/tel_2146.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2146.f0' f0 -ascii;
save 'ap/tel_2146.ap' ap -ascii;
save 'sp/tel_2146.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2147.wav\n');
[x,fs]=wavread('wav/tel_2147.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2147.f0' f0 -ascii;
save 'ap/tel_2147.ap' ap -ascii;
save 'sp/tel_2147.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2148.wav\n');
[x,fs]=wavread('wav/tel_2148.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2148.f0' f0 -ascii;
save 'ap/tel_2148.ap' ap -ascii;
save 'sp/tel_2148.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2149.wav\n');
[x,fs]=wavread('wav/tel_2149.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2149.f0' f0 -ascii;
save 'ap/tel_2149.ap' ap -ascii;
save 'sp/tel_2149.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2150.wav\n');
[x,fs]=wavread('wav/tel_2150.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2150.f0' f0 -ascii;
save 'ap/tel_2150.ap' ap -ascii;
save 'sp/tel_2150.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2151.wav\n');
[x,fs]=wavread('wav/tel_2151.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2151.f0' f0 -ascii;
save 'ap/tel_2151.ap' ap -ascii;
save 'sp/tel_2151.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2152.wav\n');
[x,fs]=wavread('wav/tel_2152.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2152.f0' f0 -ascii;
save 'ap/tel_2152.ap' ap -ascii;
save 'sp/tel_2152.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2153.wav\n');
[x,fs]=wavread('wav/tel_2153.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2153.f0' f0 -ascii;
save 'ap/tel_2153.ap' ap -ascii;
save 'sp/tel_2153.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2154.wav\n');
[x,fs]=wavread('wav/tel_2154.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2154.f0' f0 -ascii;
save 'ap/tel_2154.ap' ap -ascii;
save 'sp/tel_2154.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2155.wav\n');
[x,fs]=wavread('wav/tel_2155.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2155.f0' f0 -ascii;
save 'ap/tel_2155.ap' ap -ascii;
save 'sp/tel_2155.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2156.wav\n');
[x,fs]=wavread('wav/tel_2156.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2156.f0' f0 -ascii;
save 'ap/tel_2156.ap' ap -ascii;
save 'sp/tel_2156.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2157.wav\n');
[x,fs]=wavread('wav/tel_2157.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2157.f0' f0 -ascii;
save 'ap/tel_2157.ap' ap -ascii;
save 'sp/tel_2157.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2158.wav\n');
[x,fs]=wavread('wav/tel_2158.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2158.f0' f0 -ascii;
save 'ap/tel_2158.ap' ap -ascii;
save 'sp/tel_2158.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2159.wav\n');
[x,fs]=wavread('wav/tel_2159.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2159.f0' f0 -ascii;
save 'ap/tel_2159.ap' ap -ascii;
save 'sp/tel_2159.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2160.wav\n');
[x,fs]=wavread('wav/tel_2160.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2160.f0' f0 -ascii;
save 'ap/tel_2160.ap' ap -ascii;
save 'sp/tel_2160.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2161.wav\n');
[x,fs]=wavread('wav/tel_2161.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2161.f0' f0 -ascii;
save 'ap/tel_2161.ap' ap -ascii;
save 'sp/tel_2161.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2162.wav\n');
[x,fs]=wavread('wav/tel_2162.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2162.f0' f0 -ascii;
save 'ap/tel_2162.ap' ap -ascii;
save 'sp/tel_2162.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2163.wav\n');
[x,fs]=wavread('wav/tel_2163.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2163.f0' f0 -ascii;
save 'ap/tel_2163.ap' ap -ascii;
save 'sp/tel_2163.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2164.wav\n');
[x,fs]=wavread('wav/tel_2164.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2164.f0' f0 -ascii;
save 'ap/tel_2164.ap' ap -ascii;
save 'sp/tel_2164.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2165.wav\n');
[x,fs]=wavread('wav/tel_2165.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2165.f0' f0 -ascii;
save 'ap/tel_2165.ap' ap -ascii;
save 'sp/tel_2165.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2166.wav\n');
[x,fs]=wavread('wav/tel_2166.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2166.f0' f0 -ascii;
save 'ap/tel_2166.ap' ap -ascii;
save 'sp/tel_2166.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2167.wav\n');
[x,fs]=wavread('wav/tel_2167.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2167.f0' f0 -ascii;
save 'ap/tel_2167.ap' ap -ascii;
save 'sp/tel_2167.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2168.wav\n');
[x,fs]=wavread('wav/tel_2168.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2168.f0' f0 -ascii;
save 'ap/tel_2168.ap' ap -ascii;
save 'sp/tel_2168.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2169.wav\n');
[x,fs]=wavread('wav/tel_2169.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2169.f0' f0 -ascii;
save 'ap/tel_2169.ap' ap -ascii;
save 'sp/tel_2169.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2170.wav\n');
[x,fs]=wavread('wav/tel_2170.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2170.f0' f0 -ascii;
save 'ap/tel_2170.ap' ap -ascii;
save 'sp/tel_2170.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2171.wav\n');
[x,fs]=wavread('wav/tel_2171.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2171.f0' f0 -ascii;
save 'ap/tel_2171.ap' ap -ascii;
save 'sp/tel_2171.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2172.wav\n');
[x,fs]=wavread('wav/tel_2172.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2172.f0' f0 -ascii;
save 'ap/tel_2172.ap' ap -ascii;
save 'sp/tel_2172.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2173.wav\n');
[x,fs]=wavread('wav/tel_2173.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2173.f0' f0 -ascii;
save 'ap/tel_2173.ap' ap -ascii;
save 'sp/tel_2173.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2174.wav\n');
[x,fs]=wavread('wav/tel_2174.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2174.f0' f0 -ascii;
save 'ap/tel_2174.ap' ap -ascii;
save 'sp/tel_2174.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2175.wav\n');
[x,fs]=wavread('wav/tel_2175.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2175.f0' f0 -ascii;
save 'ap/tel_2175.ap' ap -ascii;
save 'sp/tel_2175.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2176.wav\n');
[x,fs]=wavread('wav/tel_2176.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2176.f0' f0 -ascii;
save 'ap/tel_2176.ap' ap -ascii;
save 'sp/tel_2176.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2177.wav\n');
[x,fs]=wavread('wav/tel_2177.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2177.f0' f0 -ascii;
save 'ap/tel_2177.ap' ap -ascii;
save 'sp/tel_2177.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2178.wav\n');
[x,fs]=wavread('wav/tel_2178.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2178.f0' f0 -ascii;
save 'ap/tel_2178.ap' ap -ascii;
save 'sp/tel_2178.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2179.wav\n');
[x,fs]=wavread('wav/tel_2179.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2179.f0' f0 -ascii;
save 'ap/tel_2179.ap' ap -ascii;
save 'sp/tel_2179.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2180.wav\n');
[x,fs]=wavread('wav/tel_2180.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2180.f0' f0 -ascii;
save 'ap/tel_2180.ap' ap -ascii;
save 'sp/tel_2180.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2181.wav\n');
[x,fs]=wavread('wav/tel_2181.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2181.f0' f0 -ascii;
save 'ap/tel_2181.ap' ap -ascii;
save 'sp/tel_2181.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2182.wav\n');
[x,fs]=wavread('wav/tel_2182.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2182.f0' f0 -ascii;
save 'ap/tel_2182.ap' ap -ascii;
save 'sp/tel_2182.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2183.wav\n');
[x,fs]=wavread('wav/tel_2183.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2183.f0' f0 -ascii;
save 'ap/tel_2183.ap' ap -ascii;
save 'sp/tel_2183.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2184.wav\n');
[x,fs]=wavread('wav/tel_2184.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2184.f0' f0 -ascii;
save 'ap/tel_2184.ap' ap -ascii;
save 'sp/tel_2184.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2185.wav\n');
[x,fs]=wavread('wav/tel_2185.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2185.f0' f0 -ascii;
save 'ap/tel_2185.ap' ap -ascii;
save 'sp/tel_2185.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2186.wav\n');
[x,fs]=wavread('wav/tel_2186.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2186.f0' f0 -ascii;
save 'ap/tel_2186.ap' ap -ascii;
save 'sp/tel_2186.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2187.wav\n');
[x,fs]=wavread('wav/tel_2187.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2187.f0' f0 -ascii;
save 'ap/tel_2187.ap' ap -ascii;
save 'sp/tel_2187.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2188.wav\n');
[x,fs]=wavread('wav/tel_2188.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2188.f0' f0 -ascii;
save 'ap/tel_2188.ap' ap -ascii;
save 'sp/tel_2188.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2189.wav\n');
[x,fs]=wavread('wav/tel_2189.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2189.f0' f0 -ascii;
save 'ap/tel_2189.ap' ap -ascii;
save 'sp/tel_2189.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2190.wav\n');
[x,fs]=wavread('wav/tel_2190.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2190.f0' f0 -ascii;
save 'ap/tel_2190.ap' ap -ascii;
save 'sp/tel_2190.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2191.wav\n');
[x,fs]=wavread('wav/tel_2191.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2191.f0' f0 -ascii;
save 'ap/tel_2191.ap' ap -ascii;
save 'sp/tel_2191.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2192.wav\n');
[x,fs]=wavread('wav/tel_2192.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2192.f0' f0 -ascii;
save 'ap/tel_2192.ap' ap -ascii;
save 'sp/tel_2192.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2193.wav\n');
[x,fs]=wavread('wav/tel_2193.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2193.f0' f0 -ascii;
save 'ap/tel_2193.ap' ap -ascii;
save 'sp/tel_2193.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2194.wav\n');
[x,fs]=wavread('wav/tel_2194.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2194.f0' f0 -ascii;
save 'ap/tel_2194.ap' ap -ascii;
save 'sp/tel_2194.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2195.wav\n');
[x,fs]=wavread('wav/tel_2195.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2195.f0' f0 -ascii;
save 'ap/tel_2195.ap' ap -ascii;
save 'sp/tel_2195.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2196.wav\n');
[x,fs]=wavread('wav/tel_2196.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2196.f0' f0 -ascii;
save 'ap/tel_2196.ap' ap -ascii;
save 'sp/tel_2196.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2197.wav\n');
[x,fs]=wavread('wav/tel_2197.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2197.f0' f0 -ascii;
save 'ap/tel_2197.ap' ap -ascii;
save 'sp/tel_2197.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2198.wav\n');
[x,fs]=wavread('wav/tel_2198.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2198.f0' f0 -ascii;
save 'ap/tel_2198.ap' ap -ascii;
save 'sp/tel_2198.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2199.wav\n');
[x,fs]=wavread('wav/tel_2199.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2199.f0' f0 -ascii;
save 'ap/tel_2199.ap' ap -ascii;
save 'sp/tel_2199.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2200.wav\n');
[x,fs]=wavread('wav/tel_2200.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2200.f0' f0 -ascii;
save 'ap/tel_2200.ap' ap -ascii;
save 'sp/tel_2200.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2201.wav\n');
[x,fs]=wavread('wav/tel_2201.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2201.f0' f0 -ascii;
save 'ap/tel_2201.ap' ap -ascii;
save 'sp/tel_2201.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2202.wav\n');
[x,fs]=wavread('wav/tel_2202.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2202.f0' f0 -ascii;
save 'ap/tel_2202.ap' ap -ascii;
save 'sp/tel_2202.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2203.wav\n');
[x,fs]=wavread('wav/tel_2203.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2203.f0' f0 -ascii;
save 'ap/tel_2203.ap' ap -ascii;
save 'sp/tel_2203.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2204.wav\n');
[x,fs]=wavread('wav/tel_2204.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2204.f0' f0 -ascii;
save 'ap/tel_2204.ap' ap -ascii;
save 'sp/tel_2204.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2205.wav\n');
[x,fs]=wavread('wav/tel_2205.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2205.f0' f0 -ascii;
save 'ap/tel_2205.ap' ap -ascii;
save 'sp/tel_2205.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2206.wav\n');
[x,fs]=wavread('wav/tel_2206.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2206.f0' f0 -ascii;
save 'ap/tel_2206.ap' ap -ascii;
save 'sp/tel_2206.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2207.wav\n');
[x,fs]=wavread('wav/tel_2207.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2207.f0' f0 -ascii;
save 'ap/tel_2207.ap' ap -ascii;
save 'sp/tel_2207.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2208.wav\n');
[x,fs]=wavread('wav/tel_2208.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2208.f0' f0 -ascii;
save 'ap/tel_2208.ap' ap -ascii;
save 'sp/tel_2208.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2209.wav\n');
[x,fs]=wavread('wav/tel_2209.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2209.f0' f0 -ascii;
save 'ap/tel_2209.ap' ap -ascii;
save 'sp/tel_2209.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2210.wav\n');
[x,fs]=wavread('wav/tel_2210.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2210.f0' f0 -ascii;
save 'ap/tel_2210.ap' ap -ascii;
save 'sp/tel_2210.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2211.wav\n');
[x,fs]=wavread('wav/tel_2211.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2211.f0' f0 -ascii;
save 'ap/tel_2211.ap' ap -ascii;
save 'sp/tel_2211.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2212.wav\n');
[x,fs]=wavread('wav/tel_2212.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2212.f0' f0 -ascii;
save 'ap/tel_2212.ap' ap -ascii;
save 'sp/tel_2212.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2213.wav\n');
[x,fs]=wavread('wav/tel_2213.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2213.f0' f0 -ascii;
save 'ap/tel_2213.ap' ap -ascii;
save 'sp/tel_2213.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2214.wav\n');
[x,fs]=wavread('wav/tel_2214.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2214.f0' f0 -ascii;
save 'ap/tel_2214.ap' ap -ascii;
save 'sp/tel_2214.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2215.wav\n');
[x,fs]=wavread('wav/tel_2215.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2215.f0' f0 -ascii;
save 'ap/tel_2215.ap' ap -ascii;
save 'sp/tel_2215.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2216.wav\n');
[x,fs]=wavread('wav/tel_2216.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2216.f0' f0 -ascii;
save 'ap/tel_2216.ap' ap -ascii;
save 'sp/tel_2216.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2217.wav\n');
[x,fs]=wavread('wav/tel_2217.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2217.f0' f0 -ascii;
save 'ap/tel_2217.ap' ap -ascii;
save 'sp/tel_2217.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2218.wav\n');
[x,fs]=wavread('wav/tel_2218.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2218.f0' f0 -ascii;
save 'ap/tel_2218.ap' ap -ascii;
save 'sp/tel_2218.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2219.wav\n');
[x,fs]=wavread('wav/tel_2219.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2219.f0' f0 -ascii;
save 'ap/tel_2219.ap' ap -ascii;
save 'sp/tel_2219.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2220.wav\n');
[x,fs]=wavread('wav/tel_2220.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2220.f0' f0 -ascii;
save 'ap/tel_2220.ap' ap -ascii;
save 'sp/tel_2220.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2221.wav\n');
[x,fs]=wavread('wav/tel_2221.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2221.f0' f0 -ascii;
save 'ap/tel_2221.ap' ap -ascii;
save 'sp/tel_2221.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2222.wav\n');
[x,fs]=wavread('wav/tel_2222.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2222.f0' f0 -ascii;
save 'ap/tel_2222.ap' ap -ascii;
save 'sp/tel_2222.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2223.wav\n');
[x,fs]=wavread('wav/tel_2223.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2223.f0' f0 -ascii;
save 'ap/tel_2223.ap' ap -ascii;
save 'sp/tel_2223.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2224.wav\n');
[x,fs]=wavread('wav/tel_2224.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2224.f0' f0 -ascii;
save 'ap/tel_2224.ap' ap -ascii;
save 'sp/tel_2224.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2225.wav\n');
[x,fs]=wavread('wav/tel_2225.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2225.f0' f0 -ascii;
save 'ap/tel_2225.ap' ap -ascii;
save 'sp/tel_2225.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2226.wav\n');
[x,fs]=wavread('wav/tel_2226.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2226.f0' f0 -ascii;
save 'ap/tel_2226.ap' ap -ascii;
save 'sp/tel_2226.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2227.wav\n');
[x,fs]=wavread('wav/tel_2227.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2227.f0' f0 -ascii;
save 'ap/tel_2227.ap' ap -ascii;
save 'sp/tel_2227.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2228.wav\n');
[x,fs]=wavread('wav/tel_2228.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2228.f0' f0 -ascii;
save 'ap/tel_2228.ap' ap -ascii;
save 'sp/tel_2228.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2229.wav\n');
[x,fs]=wavread('wav/tel_2229.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2229.f0' f0 -ascii;
save 'ap/tel_2229.ap' ap -ascii;
save 'sp/tel_2229.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2230.wav\n');
[x,fs]=wavread('wav/tel_2230.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2230.f0' f0 -ascii;
save 'ap/tel_2230.ap' ap -ascii;
save 'sp/tel_2230.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2231.wav\n');
[x,fs]=wavread('wav/tel_2231.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2231.f0' f0 -ascii;
save 'ap/tel_2231.ap' ap -ascii;
save 'sp/tel_2231.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2232.wav\n');
[x,fs]=wavread('wav/tel_2232.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2232.f0' f0 -ascii;
save 'ap/tel_2232.ap' ap -ascii;
save 'sp/tel_2232.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2233.wav\n');
[x,fs]=wavread('wav/tel_2233.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2233.f0' f0 -ascii;
save 'ap/tel_2233.ap' ap -ascii;
save 'sp/tel_2233.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2234.wav\n');
[x,fs]=wavread('wav/tel_2234.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2234.f0' f0 -ascii;
save 'ap/tel_2234.ap' ap -ascii;
save 'sp/tel_2234.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2235.wav\n');
[x,fs]=wavread('wav/tel_2235.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2235.f0' f0 -ascii;
save 'ap/tel_2235.ap' ap -ascii;
save 'sp/tel_2235.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2236.wav\n');
[x,fs]=wavread('wav/tel_2236.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2236.f0' f0 -ascii;
save 'ap/tel_2236.ap' ap -ascii;
save 'sp/tel_2236.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2237.wav\n');
[x,fs]=wavread('wav/tel_2237.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2237.f0' f0 -ascii;
save 'ap/tel_2237.ap' ap -ascii;
save 'sp/tel_2237.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2238.wav\n');
[x,fs]=wavread('wav/tel_2238.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2238.f0' f0 -ascii;
save 'ap/tel_2238.ap' ap -ascii;
save 'sp/tel_2238.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2239.wav\n');
[x,fs]=wavread('wav/tel_2239.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2239.f0' f0 -ascii;
save 'ap/tel_2239.ap' ap -ascii;
save 'sp/tel_2239.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2240.wav\n');
[x,fs]=wavread('wav/tel_2240.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2240.f0' f0 -ascii;
save 'ap/tel_2240.ap' ap -ascii;
save 'sp/tel_2240.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2241.wav\n');
[x,fs]=wavread('wav/tel_2241.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2241.f0' f0 -ascii;
save 'ap/tel_2241.ap' ap -ascii;
save 'sp/tel_2241.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2242.wav\n');
[x,fs]=wavread('wav/tel_2242.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2242.f0' f0 -ascii;
save 'ap/tel_2242.ap' ap -ascii;
save 'sp/tel_2242.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2243.wav\n');
[x,fs]=wavread('wav/tel_2243.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2243.f0' f0 -ascii;
save 'ap/tel_2243.ap' ap -ascii;
save 'sp/tel_2243.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2244.wav\n');
[x,fs]=wavread('wav/tel_2244.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2244.f0' f0 -ascii;
save 'ap/tel_2244.ap' ap -ascii;
save 'sp/tel_2244.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2245.wav\n');
[x,fs]=wavread('wav/tel_2245.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2245.f0' f0 -ascii;
save 'ap/tel_2245.ap' ap -ascii;
save 'sp/tel_2245.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2246.wav\n');
[x,fs]=wavread('wav/tel_2246.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2246.f0' f0 -ascii;
save 'ap/tel_2246.ap' ap -ascii;
save 'sp/tel_2246.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2247.wav\n');
[x,fs]=wavread('wav/tel_2247.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2247.f0' f0 -ascii;
save 'ap/tel_2247.ap' ap -ascii;
save 'sp/tel_2247.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2248.wav\n');
[x,fs]=wavread('wav/tel_2248.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2248.f0' f0 -ascii;
save 'ap/tel_2248.ap' ap -ascii;
save 'sp/tel_2248.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2249.wav\n');
[x,fs]=wavread('wav/tel_2249.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2249.f0' f0 -ascii;
save 'ap/tel_2249.ap' ap -ascii;
save 'sp/tel_2249.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2250.wav\n');
[x,fs]=wavread('wav/tel_2250.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2250.f0' f0 -ascii;
save 'ap/tel_2250.ap' ap -ascii;
save 'sp/tel_2250.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2251.wav\n');
[x,fs]=wavread('wav/tel_2251.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2251.f0' f0 -ascii;
save 'ap/tel_2251.ap' ap -ascii;
save 'sp/tel_2251.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2252.wav\n');
[x,fs]=wavread('wav/tel_2252.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2252.f0' f0 -ascii;
save 'ap/tel_2252.ap' ap -ascii;
save 'sp/tel_2252.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2253.wav\n');
[x,fs]=wavread('wav/tel_2253.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2253.f0' f0 -ascii;
save 'ap/tel_2253.ap' ap -ascii;
save 'sp/tel_2253.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2254.wav\n');
[x,fs]=wavread('wav/tel_2254.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2254.f0' f0 -ascii;
save 'ap/tel_2254.ap' ap -ascii;
save 'sp/tel_2254.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2255.wav\n');
[x,fs]=wavread('wav/tel_2255.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2255.f0' f0 -ascii;
save 'ap/tel_2255.ap' ap -ascii;
save 'sp/tel_2255.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2256.wav\n');
[x,fs]=wavread('wav/tel_2256.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2256.f0' f0 -ascii;
save 'ap/tel_2256.ap' ap -ascii;
save 'sp/tel_2256.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2257.wav\n');
[x,fs]=wavread('wav/tel_2257.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2257.f0' f0 -ascii;
save 'ap/tel_2257.ap' ap -ascii;
save 'sp/tel_2257.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2258.wav\n');
[x,fs]=wavread('wav/tel_2258.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2258.f0' f0 -ascii;
save 'ap/tel_2258.ap' ap -ascii;
save 'sp/tel_2258.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2259.wav\n');
[x,fs]=wavread('wav/tel_2259.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2259.f0' f0 -ascii;
save 'ap/tel_2259.ap' ap -ascii;
save 'sp/tel_2259.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2260.wav\n');
[x,fs]=wavread('wav/tel_2260.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2260.f0' f0 -ascii;
save 'ap/tel_2260.ap' ap -ascii;
save 'sp/tel_2260.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2261.wav\n');
[x,fs]=wavread('wav/tel_2261.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2261.f0' f0 -ascii;
save 'ap/tel_2261.ap' ap -ascii;
save 'sp/tel_2261.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2262.wav\n');
[x,fs]=wavread('wav/tel_2262.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2262.f0' f0 -ascii;
save 'ap/tel_2262.ap' ap -ascii;
save 'sp/tel_2262.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2263.wav\n');
[x,fs]=wavread('wav/tel_2263.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2263.f0' f0 -ascii;
save 'ap/tel_2263.ap' ap -ascii;
save 'sp/tel_2263.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2264.wav\n');
[x,fs]=wavread('wav/tel_2264.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2264.f0' f0 -ascii;
save 'ap/tel_2264.ap' ap -ascii;
save 'sp/tel_2264.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2265.wav\n');
[x,fs]=wavread('wav/tel_2265.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2265.f0' f0 -ascii;
save 'ap/tel_2265.ap' ap -ascii;
save 'sp/tel_2265.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2266.wav\n');
[x,fs]=wavread('wav/tel_2266.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2266.f0' f0 -ascii;
save 'ap/tel_2266.ap' ap -ascii;
save 'sp/tel_2266.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2267.wav\n');
[x,fs]=wavread('wav/tel_2267.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2267.f0' f0 -ascii;
save 'ap/tel_2267.ap' ap -ascii;
save 'sp/tel_2267.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2268.wav\n');
[x,fs]=wavread('wav/tel_2268.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2268.f0' f0 -ascii;
save 'ap/tel_2268.ap' ap -ascii;
save 'sp/tel_2268.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2269.wav\n');
[x,fs]=wavread('wav/tel_2269.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2269.f0' f0 -ascii;
save 'ap/tel_2269.ap' ap -ascii;
save 'sp/tel_2269.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2270.wav\n');
[x,fs]=wavread('wav/tel_2270.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2270.f0' f0 -ascii;
save 'ap/tel_2270.ap' ap -ascii;
save 'sp/tel_2270.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2271.wav\n');
[x,fs]=wavread('wav/tel_2271.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2271.f0' f0 -ascii;
save 'ap/tel_2271.ap' ap -ascii;
save 'sp/tel_2271.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2272.wav\n');
[x,fs]=wavread('wav/tel_2272.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2272.f0' f0 -ascii;
save 'ap/tel_2272.ap' ap -ascii;
save 'sp/tel_2272.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2273.wav\n');
[x,fs]=wavread('wav/tel_2273.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2273.f0' f0 -ascii;
save 'ap/tel_2273.ap' ap -ascii;
save 'sp/tel_2273.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2274.wav\n');
[x,fs]=wavread('wav/tel_2274.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2274.f0' f0 -ascii;
save 'ap/tel_2274.ap' ap -ascii;
save 'sp/tel_2274.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2275.wav\n');
[x,fs]=wavread('wav/tel_2275.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2275.f0' f0 -ascii;
save 'ap/tel_2275.ap' ap -ascii;
save 'sp/tel_2275.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2276.wav\n');
[x,fs]=wavread('wav/tel_2276.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2276.f0' f0 -ascii;
save 'ap/tel_2276.ap' ap -ascii;
save 'sp/tel_2276.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2277.wav\n');
[x,fs]=wavread('wav/tel_2277.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2277.f0' f0 -ascii;
save 'ap/tel_2277.ap' ap -ascii;
save 'sp/tel_2277.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2278.wav\n');
[x,fs]=wavread('wav/tel_2278.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2278.f0' f0 -ascii;
save 'ap/tel_2278.ap' ap -ascii;
save 'sp/tel_2278.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2279.wav\n');
[x,fs]=wavread('wav/tel_2279.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2279.f0' f0 -ascii;
save 'ap/tel_2279.ap' ap -ascii;
save 'sp/tel_2279.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2280.wav\n');
[x,fs]=wavread('wav/tel_2280.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2280.f0' f0 -ascii;
save 'ap/tel_2280.ap' ap -ascii;
save 'sp/tel_2280.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2281.wav\n');
[x,fs]=wavread('wav/tel_2281.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2281.f0' f0 -ascii;
save 'ap/tel_2281.ap' ap -ascii;
save 'sp/tel_2281.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2282.wav\n');
[x,fs]=wavread('wav/tel_2282.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2282.f0' f0 -ascii;
save 'ap/tel_2282.ap' ap -ascii;
save 'sp/tel_2282.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2283.wav\n');
[x,fs]=wavread('wav/tel_2283.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2283.f0' f0 -ascii;
save 'ap/tel_2283.ap' ap -ascii;
save 'sp/tel_2283.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2284.wav\n');
[x,fs]=wavread('wav/tel_2284.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2284.f0' f0 -ascii;
save 'ap/tel_2284.ap' ap -ascii;
save 'sp/tel_2284.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2285.wav\n');
[x,fs]=wavread('wav/tel_2285.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2285.f0' f0 -ascii;
save 'ap/tel_2285.ap' ap -ascii;
save 'sp/tel_2285.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2286.wav\n');
[x,fs]=wavread('wav/tel_2286.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2286.f0' f0 -ascii;
save 'ap/tel_2286.ap' ap -ascii;
save 'sp/tel_2286.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2287.wav\n');
[x,fs]=wavread('wav/tel_2287.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2287.f0' f0 -ascii;
save 'ap/tel_2287.ap' ap -ascii;
save 'sp/tel_2287.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2288.wav\n');
[x,fs]=wavread('wav/tel_2288.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2288.f0' f0 -ascii;
save 'ap/tel_2288.ap' ap -ascii;
save 'sp/tel_2288.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2289.wav\n');
[x,fs]=wavread('wav/tel_2289.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2289.f0' f0 -ascii;
save 'ap/tel_2289.ap' ap -ascii;
save 'sp/tel_2289.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2290.wav\n');
[x,fs]=wavread('wav/tel_2290.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2290.f0' f0 -ascii;
save 'ap/tel_2290.ap' ap -ascii;
save 'sp/tel_2290.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2291.wav\n');
[x,fs]=wavread('wav/tel_2291.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2291.f0' f0 -ascii;
save 'ap/tel_2291.ap' ap -ascii;
save 'sp/tel_2291.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2292.wav\n');
[x,fs]=wavread('wav/tel_2292.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2292.f0' f0 -ascii;
save 'ap/tel_2292.ap' ap -ascii;
save 'sp/tel_2292.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2293.wav\n');
[x,fs]=wavread('wav/tel_2293.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2293.f0' f0 -ascii;
save 'ap/tel_2293.ap' ap -ascii;
save 'sp/tel_2293.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2294.wav\n');
[x,fs]=wavread('wav/tel_2294.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2294.f0' f0 -ascii;
save 'ap/tel_2294.ap' ap -ascii;
save 'sp/tel_2294.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2295.wav\n');
[x,fs]=wavread('wav/tel_2295.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2295.f0' f0 -ascii;
save 'ap/tel_2295.ap' ap -ascii;
save 'sp/tel_2295.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2296.wav\n');
[x,fs]=wavread('wav/tel_2296.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2296.f0' f0 -ascii;
save 'ap/tel_2296.ap' ap -ascii;
save 'sp/tel_2296.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2297.wav\n');
[x,fs]=wavread('wav/tel_2297.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2297.f0' f0 -ascii;
save 'ap/tel_2297.ap' ap -ascii;
save 'sp/tel_2297.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2298.wav\n');
[x,fs]=wavread('wav/tel_2298.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2298.f0' f0 -ascii;
save 'ap/tel_2298.ap' ap -ascii;
save 'sp/tel_2298.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2299.wav\n');
[x,fs]=wavread('wav/tel_2299.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2299.f0' f0 -ascii;
save 'ap/tel_2299.ap' ap -ascii;
save 'sp/tel_2299.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2300.wav\n');
[x,fs]=wavread('wav/tel_2300.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2300.f0' f0 -ascii;
save 'ap/tel_2300.ap' ap -ascii;
save 'sp/tel_2300.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2301.wav\n');
[x,fs]=wavread('wav/tel_2301.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2301.f0' f0 -ascii;
save 'ap/tel_2301.ap' ap -ascii;
save 'sp/tel_2301.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2302.wav\n');
[x,fs]=wavread('wav/tel_2302.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2302.f0' f0 -ascii;
save 'ap/tel_2302.ap' ap -ascii;
save 'sp/tel_2302.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2303.wav\n');
[x,fs]=wavread('wav/tel_2303.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2303.f0' f0 -ascii;
save 'ap/tel_2303.ap' ap -ascii;
save 'sp/tel_2303.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2304.wav\n');
[x,fs]=wavread('wav/tel_2304.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2304.f0' f0 -ascii;
save 'ap/tel_2304.ap' ap -ascii;
save 'sp/tel_2304.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2305.wav\n');
[x,fs]=wavread('wav/tel_2305.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2305.f0' f0 -ascii;
save 'ap/tel_2305.ap' ap -ascii;
save 'sp/tel_2305.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2306.wav\n');
[x,fs]=wavread('wav/tel_2306.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2306.f0' f0 -ascii;
save 'ap/tel_2306.ap' ap -ascii;
save 'sp/tel_2306.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2307.wav\n');
[x,fs]=wavread('wav/tel_2307.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2307.f0' f0 -ascii;
save 'ap/tel_2307.ap' ap -ascii;
save 'sp/tel_2307.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2308.wav\n');
[x,fs]=wavread('wav/tel_2308.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2308.f0' f0 -ascii;
save 'ap/tel_2308.ap' ap -ascii;
save 'sp/tel_2308.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2309.wav\n');
[x,fs]=wavread('wav/tel_2309.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2309.f0' f0 -ascii;
save 'ap/tel_2309.ap' ap -ascii;
save 'sp/tel_2309.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2310.wav\n');
[x,fs]=wavread('wav/tel_2310.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2310.f0' f0 -ascii;
save 'ap/tel_2310.ap' ap -ascii;
save 'sp/tel_2310.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2311.wav\n');
[x,fs]=wavread('wav/tel_2311.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2311.f0' f0 -ascii;
save 'ap/tel_2311.ap' ap -ascii;
save 'sp/tel_2311.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2312.wav\n');
[x,fs]=wavread('wav/tel_2312.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2312.f0' f0 -ascii;
save 'ap/tel_2312.ap' ap -ascii;
save 'sp/tel_2312.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2313.wav\n');
[x,fs]=wavread('wav/tel_2313.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2313.f0' f0 -ascii;
save 'ap/tel_2313.ap' ap -ascii;
save 'sp/tel_2313.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2314.wav\n');
[x,fs]=wavread('wav/tel_2314.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2314.f0' f0 -ascii;
save 'ap/tel_2314.ap' ap -ascii;
save 'sp/tel_2314.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2315.wav\n');
[x,fs]=wavread('wav/tel_2315.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2315.f0' f0 -ascii;
save 'ap/tel_2315.ap' ap -ascii;
save 'sp/tel_2315.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2316.wav\n');
[x,fs]=wavread('wav/tel_2316.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2316.f0' f0 -ascii;
save 'ap/tel_2316.ap' ap -ascii;
save 'sp/tel_2316.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2317.wav\n');
[x,fs]=wavread('wav/tel_2317.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2317.f0' f0 -ascii;
save 'ap/tel_2317.ap' ap -ascii;
save 'sp/tel_2317.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2318.wav\n');
[x,fs]=wavread('wav/tel_2318.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2318.f0' f0 -ascii;
save 'ap/tel_2318.ap' ap -ascii;
save 'sp/tel_2318.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2319.wav\n');
[x,fs]=wavread('wav/tel_2319.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2319.f0' f0 -ascii;
save 'ap/tel_2319.ap' ap -ascii;
save 'sp/tel_2319.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2320.wav\n');
[x,fs]=wavread('wav/tel_2320.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2320.f0' f0 -ascii;
save 'ap/tel_2320.ap' ap -ascii;
save 'sp/tel_2320.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2321.wav\n');
[x,fs]=wavread('wav/tel_2321.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2321.f0' f0 -ascii;
save 'ap/tel_2321.ap' ap -ascii;
save 'sp/tel_2321.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2322.wav\n');
[x,fs]=wavread('wav/tel_2322.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2322.f0' f0 -ascii;
save 'ap/tel_2322.ap' ap -ascii;
save 'sp/tel_2322.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2323.wav\n');
[x,fs]=wavread('wav/tel_2323.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2323.f0' f0 -ascii;
save 'ap/tel_2323.ap' ap -ascii;
save 'sp/tel_2323.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2324.wav\n');
[x,fs]=wavread('wav/tel_2324.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2324.f0' f0 -ascii;
save 'ap/tel_2324.ap' ap -ascii;
save 'sp/tel_2324.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2325.wav\n');
[x,fs]=wavread('wav/tel_2325.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2325.f0' f0 -ascii;
save 'ap/tel_2325.ap' ap -ascii;
save 'sp/tel_2325.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2326.wav\n');
[x,fs]=wavread('wav/tel_2326.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2326.f0' f0 -ascii;
save 'ap/tel_2326.ap' ap -ascii;
save 'sp/tel_2326.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2327.wav\n');
[x,fs]=wavread('wav/tel_2327.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2327.f0' f0 -ascii;
save 'ap/tel_2327.ap' ap -ascii;
save 'sp/tel_2327.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2328.wav\n');
[x,fs]=wavread('wav/tel_2328.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2328.f0' f0 -ascii;
save 'ap/tel_2328.ap' ap -ascii;
save 'sp/tel_2328.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2329.wav\n');
[x,fs]=wavread('wav/tel_2329.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2329.f0' f0 -ascii;
save 'ap/tel_2329.ap' ap -ascii;
save 'sp/tel_2329.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2330.wav\n');
[x,fs]=wavread('wav/tel_2330.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2330.f0' f0 -ascii;
save 'ap/tel_2330.ap' ap -ascii;
save 'sp/tel_2330.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2331.wav\n');
[x,fs]=wavread('wav/tel_2331.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2331.f0' f0 -ascii;
save 'ap/tel_2331.ap' ap -ascii;
save 'sp/tel_2331.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2332.wav\n');
[x,fs]=wavread('wav/tel_2332.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2332.f0' f0 -ascii;
save 'ap/tel_2332.ap' ap -ascii;
save 'sp/tel_2332.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2333.wav\n');
[x,fs]=wavread('wav/tel_2333.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2333.f0' f0 -ascii;
save 'ap/tel_2333.ap' ap -ascii;
save 'sp/tel_2333.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2334.wav\n');
[x,fs]=wavread('wav/tel_2334.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2334.f0' f0 -ascii;
save 'ap/tel_2334.ap' ap -ascii;
save 'sp/tel_2334.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2335.wav\n');
[x,fs]=wavread('wav/tel_2335.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2335.f0' f0 -ascii;
save 'ap/tel_2335.ap' ap -ascii;
save 'sp/tel_2335.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2336.wav\n');
[x,fs]=wavread('wav/tel_2336.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2336.f0' f0 -ascii;
save 'ap/tel_2336.ap' ap -ascii;
save 'sp/tel_2336.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2337.wav\n');
[x,fs]=wavread('wav/tel_2337.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2337.f0' f0 -ascii;
save 'ap/tel_2337.ap' ap -ascii;
save 'sp/tel_2337.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2338.wav\n');
[x,fs]=wavread('wav/tel_2338.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2338.f0' f0 -ascii;
save 'ap/tel_2338.ap' ap -ascii;
save 'sp/tel_2338.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2339.wav\n');
[x,fs]=wavread('wav/tel_2339.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2339.f0' f0 -ascii;
save 'ap/tel_2339.ap' ap -ascii;
save 'sp/tel_2339.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2340.wav\n');
[x,fs]=wavread('wav/tel_2340.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2340.f0' f0 -ascii;
save 'ap/tel_2340.ap' ap -ascii;
save 'sp/tel_2340.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2341.wav\n');
[x,fs]=wavread('wav/tel_2341.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2341.f0' f0 -ascii;
save 'ap/tel_2341.ap' ap -ascii;
save 'sp/tel_2341.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2342.wav\n');
[x,fs]=wavread('wav/tel_2342.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2342.f0' f0 -ascii;
save 'ap/tel_2342.ap' ap -ascii;
save 'sp/tel_2342.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2343.wav\n');
[x,fs]=wavread('wav/tel_2343.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2343.f0' f0 -ascii;
save 'ap/tel_2343.ap' ap -ascii;
save 'sp/tel_2343.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2344.wav\n');
[x,fs]=wavread('wav/tel_2344.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2344.f0' f0 -ascii;
save 'ap/tel_2344.ap' ap -ascii;
save 'sp/tel_2344.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2345.wav\n');
[x,fs]=wavread('wav/tel_2345.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2345.f0' f0 -ascii;
save 'ap/tel_2345.ap' ap -ascii;
save 'sp/tel_2345.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2346.wav\n');
[x,fs]=wavread('wav/tel_2346.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2346.f0' f0 -ascii;
save 'ap/tel_2346.ap' ap -ascii;
save 'sp/tel_2346.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2347.wav\n');
[x,fs]=wavread('wav/tel_2347.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2347.f0' f0 -ascii;
save 'ap/tel_2347.ap' ap -ascii;
save 'sp/tel_2347.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2348.wav\n');
[x,fs]=wavread('wav/tel_2348.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2348.f0' f0 -ascii;
save 'ap/tel_2348.ap' ap -ascii;
save 'sp/tel_2348.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2349.wav\n');
[x,fs]=wavread('wav/tel_2349.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2349.f0' f0 -ascii;
save 'ap/tel_2349.ap' ap -ascii;
save 'sp/tel_2349.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2350.wav\n');
[x,fs]=wavread('wav/tel_2350.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2350.f0' f0 -ascii;
save 'ap/tel_2350.ap' ap -ascii;
save 'sp/tel_2350.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2351.wav\n');
[x,fs]=wavread('wav/tel_2351.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2351.f0' f0 -ascii;
save 'ap/tel_2351.ap' ap -ascii;
save 'sp/tel_2351.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2352.wav\n');
[x,fs]=wavread('wav/tel_2352.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2352.f0' f0 -ascii;
save 'ap/tel_2352.ap' ap -ascii;
save 'sp/tel_2352.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2353.wav\n');
[x,fs]=wavread('wav/tel_2353.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2353.f0' f0 -ascii;
save 'ap/tel_2353.ap' ap -ascii;
save 'sp/tel_2353.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2354.wav\n');
[x,fs]=wavread('wav/tel_2354.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2354.f0' f0 -ascii;
save 'ap/tel_2354.ap' ap -ascii;
save 'sp/tel_2354.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2355.wav\n');
[x,fs]=wavread('wav/tel_2355.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2355.f0' f0 -ascii;
save 'ap/tel_2355.ap' ap -ascii;
save 'sp/tel_2355.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2356.wav\n');
[x,fs]=wavread('wav/tel_2356.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2356.f0' f0 -ascii;
save 'ap/tel_2356.ap' ap -ascii;
save 'sp/tel_2356.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2357.wav\n');
[x,fs]=wavread('wav/tel_2357.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2357.f0' f0 -ascii;
save 'ap/tel_2357.ap' ap -ascii;
save 'sp/tel_2357.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2358.wav\n');
[x,fs]=wavread('wav/tel_2358.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2358.f0' f0 -ascii;
save 'ap/tel_2358.ap' ap -ascii;
save 'sp/tel_2358.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2359.wav\n');
[x,fs]=wavread('wav/tel_2359.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2359.f0' f0 -ascii;
save 'ap/tel_2359.ap' ap -ascii;
save 'sp/tel_2359.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2360.wav\n');
[x,fs]=wavread('wav/tel_2360.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2360.f0' f0 -ascii;
save 'ap/tel_2360.ap' ap -ascii;
save 'sp/tel_2360.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2361.wav\n');
[x,fs]=wavread('wav/tel_2361.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2361.f0' f0 -ascii;
save 'ap/tel_2361.ap' ap -ascii;
save 'sp/tel_2361.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2362.wav\n');
[x,fs]=wavread('wav/tel_2362.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2362.f0' f0 -ascii;
save 'ap/tel_2362.ap' ap -ascii;
save 'sp/tel_2362.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2363.wav\n');
[x,fs]=wavread('wav/tel_2363.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2363.f0' f0 -ascii;
save 'ap/tel_2363.ap' ap -ascii;
save 'sp/tel_2363.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2364.wav\n');
[x,fs]=wavread('wav/tel_2364.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2364.f0' f0 -ascii;
save 'ap/tel_2364.ap' ap -ascii;
save 'sp/tel_2364.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2365.wav\n');
[x,fs]=wavread('wav/tel_2365.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2365.f0' f0 -ascii;
save 'ap/tel_2365.ap' ap -ascii;
save 'sp/tel_2365.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2366.wav\n');
[x,fs]=wavread('wav/tel_2366.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2366.f0' f0 -ascii;
save 'ap/tel_2366.ap' ap -ascii;
save 'sp/tel_2366.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2367.wav\n');
[x,fs]=wavread('wav/tel_2367.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2367.f0' f0 -ascii;
save 'ap/tel_2367.ap' ap -ascii;
save 'sp/tel_2367.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2368.wav\n');
[x,fs]=wavread('wav/tel_2368.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2368.f0' f0 -ascii;
save 'ap/tel_2368.ap' ap -ascii;
save 'sp/tel_2368.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2369.wav\n');
[x,fs]=wavread('wav/tel_2369.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2369.f0' f0 -ascii;
save 'ap/tel_2369.ap' ap -ascii;
save 'sp/tel_2369.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2370.wav\n');
[x,fs]=wavread('wav/tel_2370.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2370.f0' f0 -ascii;
save 'ap/tel_2370.ap' ap -ascii;
save 'sp/tel_2370.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2371.wav\n');
[x,fs]=wavread('wav/tel_2371.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2371.f0' f0 -ascii;
save 'ap/tel_2371.ap' ap -ascii;
save 'sp/tel_2371.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2372.wav\n');
[x,fs]=wavread('wav/tel_2372.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2372.f0' f0 -ascii;
save 'ap/tel_2372.ap' ap -ascii;
save 'sp/tel_2372.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2373.wav\n');
[x,fs]=wavread('wav/tel_2373.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2373.f0' f0 -ascii;
save 'ap/tel_2373.ap' ap -ascii;
save 'sp/tel_2373.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2374.wav\n');
[x,fs]=wavread('wav/tel_2374.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2374.f0' f0 -ascii;
save 'ap/tel_2374.ap' ap -ascii;
save 'sp/tel_2374.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2375.wav\n');
[x,fs]=wavread('wav/tel_2375.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2375.f0' f0 -ascii;
save 'ap/tel_2375.ap' ap -ascii;
save 'sp/tel_2375.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2376.wav\n');
[x,fs]=wavread('wav/tel_2376.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2376.f0' f0 -ascii;
save 'ap/tel_2376.ap' ap -ascii;
save 'sp/tel_2376.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2377.wav\n');
[x,fs]=wavread('wav/tel_2377.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2377.f0' f0 -ascii;
save 'ap/tel_2377.ap' ap -ascii;
save 'sp/tel_2377.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2378.wav\n');
[x,fs]=wavread('wav/tel_2378.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2378.f0' f0 -ascii;
save 'ap/tel_2378.ap' ap -ascii;
save 'sp/tel_2378.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2379.wav\n');
[x,fs]=wavread('wav/tel_2379.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2379.f0' f0 -ascii;
save 'ap/tel_2379.ap' ap -ascii;
save 'sp/tel_2379.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2380.wav\n');
[x,fs]=wavread('wav/tel_2380.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2380.f0' f0 -ascii;
save 'ap/tel_2380.ap' ap -ascii;
save 'sp/tel_2380.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2381.wav\n');
[x,fs]=wavread('wav/tel_2381.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2381.f0' f0 -ascii;
save 'ap/tel_2381.ap' ap -ascii;
save 'sp/tel_2381.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2382.wav\n');
[x,fs]=wavread('wav/tel_2382.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2382.f0' f0 -ascii;
save 'ap/tel_2382.ap' ap -ascii;
save 'sp/tel_2382.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2383.wav\n');
[x,fs]=wavread('wav/tel_2383.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2383.f0' f0 -ascii;
save 'ap/tel_2383.ap' ap -ascii;
save 'sp/tel_2383.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2384.wav\n');
[x,fs]=wavread('wav/tel_2384.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2384.f0' f0 -ascii;
save 'ap/tel_2384.ap' ap -ascii;
save 'sp/tel_2384.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2385.wav\n');
[x,fs]=wavread('wav/tel_2385.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2385.f0' f0 -ascii;
save 'ap/tel_2385.ap' ap -ascii;
save 'sp/tel_2385.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2386.wav\n');
[x,fs]=wavread('wav/tel_2386.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2386.f0' f0 -ascii;
save 'ap/tel_2386.ap' ap -ascii;
save 'sp/tel_2386.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2387.wav\n');
[x,fs]=wavread('wav/tel_2387.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2387.f0' f0 -ascii;
save 'ap/tel_2387.ap' ap -ascii;
save 'sp/tel_2387.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2388.wav\n');
[x,fs]=wavread('wav/tel_2388.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2388.f0' f0 -ascii;
save 'ap/tel_2388.ap' ap -ascii;
save 'sp/tel_2388.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2389.wav\n');
[x,fs]=wavread('wav/tel_2389.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2389.f0' f0 -ascii;
save 'ap/tel_2389.ap' ap -ascii;
save 'sp/tel_2389.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2390.wav\n');
[x,fs]=wavread('wav/tel_2390.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2390.f0' f0 -ascii;
save 'ap/tel_2390.ap' ap -ascii;
save 'sp/tel_2390.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2391.wav\n');
[x,fs]=wavread('wav/tel_2391.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2391.f0' f0 -ascii;
save 'ap/tel_2391.ap' ap -ascii;
save 'sp/tel_2391.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2392.wav\n');
[x,fs]=wavread('wav/tel_2392.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2392.f0' f0 -ascii;
save 'ap/tel_2392.ap' ap -ascii;
save 'sp/tel_2392.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2393.wav\n');
[x,fs]=wavread('wav/tel_2393.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2393.f0' f0 -ascii;
save 'ap/tel_2393.ap' ap -ascii;
save 'sp/tel_2393.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2394.wav\n');
[x,fs]=wavread('wav/tel_2394.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2394.f0' f0 -ascii;
save 'ap/tel_2394.ap' ap -ascii;
save 'sp/tel_2394.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2395.wav\n');
[x,fs]=wavread('wav/tel_2395.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2395.f0' f0 -ascii;
save 'ap/tel_2395.ap' ap -ascii;
save 'sp/tel_2395.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2396.wav\n');
[x,fs]=wavread('wav/tel_2396.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2396.f0' f0 -ascii;
save 'ap/tel_2396.ap' ap -ascii;
save 'sp/tel_2396.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2397.wav\n');
[x,fs]=wavread('wav/tel_2397.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2397.f0' f0 -ascii;
save 'ap/tel_2397.ap' ap -ascii;
save 'sp/tel_2397.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2398.wav\n');
[x,fs]=wavread('wav/tel_2398.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2398.f0' f0 -ascii;
save 'ap/tel_2398.ap' ap -ascii;
save 'sp/tel_2398.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2399.wav\n');
[x,fs]=wavread('wav/tel_2399.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2399.f0' f0 -ascii;
save 'ap/tel_2399.ap' ap -ascii;
save 'sp/tel_2399.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2400.wav\n');
[x,fs]=wavread('wav/tel_2400.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2400.f0' f0 -ascii;
save 'ap/tel_2400.ap' ap -ascii;
save 'sp/tel_2400.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2401.wav\n');
[x,fs]=wavread('wav/tel_2401.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2401.f0' f0 -ascii;
save 'ap/tel_2401.ap' ap -ascii;
save 'sp/tel_2401.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2402.wav\n');
[x,fs]=wavread('wav/tel_2402.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2402.f0' f0 -ascii;
save 'ap/tel_2402.ap' ap -ascii;
save 'sp/tel_2402.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2403.wav\n');
[x,fs]=wavread('wav/tel_2403.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2403.f0' f0 -ascii;
save 'ap/tel_2403.ap' ap -ascii;
save 'sp/tel_2403.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2404.wav\n');
[x,fs]=wavread('wav/tel_2404.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2404.f0' f0 -ascii;
save 'ap/tel_2404.ap' ap -ascii;
save 'sp/tel_2404.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2405.wav\n');
[x,fs]=wavread('wav/tel_2405.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2405.f0' f0 -ascii;
save 'ap/tel_2405.ap' ap -ascii;
save 'sp/tel_2405.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2406.wav\n');
[x,fs]=wavread('wav/tel_2406.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2406.f0' f0 -ascii;
save 'ap/tel_2406.ap' ap -ascii;
save 'sp/tel_2406.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2407.wav\n');
[x,fs]=wavread('wav/tel_2407.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2407.f0' f0 -ascii;
save 'ap/tel_2407.ap' ap -ascii;
save 'sp/tel_2407.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2408.wav\n');
[x,fs]=wavread('wav/tel_2408.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2408.f0' f0 -ascii;
save 'ap/tel_2408.ap' ap -ascii;
save 'sp/tel_2408.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2409.wav\n');
[x,fs]=wavread('wav/tel_2409.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2409.f0' f0 -ascii;
save 'ap/tel_2409.ap' ap -ascii;
save 'sp/tel_2409.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2410.wav\n');
[x,fs]=wavread('wav/tel_2410.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2410.f0' f0 -ascii;
save 'ap/tel_2410.ap' ap -ascii;
save 'sp/tel_2410.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2411.wav\n');
[x,fs]=wavread('wav/tel_2411.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2411.f0' f0 -ascii;
save 'ap/tel_2411.ap' ap -ascii;
save 'sp/tel_2411.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2412.wav\n');
[x,fs]=wavread('wav/tel_2412.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2412.f0' f0 -ascii;
save 'ap/tel_2412.ap' ap -ascii;
save 'sp/tel_2412.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2413.wav\n');
[x,fs]=wavread('wav/tel_2413.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2413.f0' f0 -ascii;
save 'ap/tel_2413.ap' ap -ascii;
save 'sp/tel_2413.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2414.wav\n');
[x,fs]=wavread('wav/tel_2414.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2414.f0' f0 -ascii;
save 'ap/tel_2414.ap' ap -ascii;
save 'sp/tel_2414.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2415.wav\n');
[x,fs]=wavread('wav/tel_2415.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2415.f0' f0 -ascii;
save 'ap/tel_2415.ap' ap -ascii;
save 'sp/tel_2415.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2416.wav\n');
[x,fs]=wavread('wav/tel_2416.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2416.f0' f0 -ascii;
save 'ap/tel_2416.ap' ap -ascii;
save 'sp/tel_2416.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2417.wav\n');
[x,fs]=wavread('wav/tel_2417.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2417.f0' f0 -ascii;
save 'ap/tel_2417.ap' ap -ascii;
save 'sp/tel_2417.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2418.wav\n');
[x,fs]=wavread('wav/tel_2418.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2418.f0' f0 -ascii;
save 'ap/tel_2418.ap' ap -ascii;
save 'sp/tel_2418.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2419.wav\n');
[x,fs]=wavread('wav/tel_2419.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2419.f0' f0 -ascii;
save 'ap/tel_2419.ap' ap -ascii;
save 'sp/tel_2419.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2420.wav\n');
[x,fs]=wavread('wav/tel_2420.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2420.f0' f0 -ascii;
save 'ap/tel_2420.ap' ap -ascii;
save 'sp/tel_2420.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2421.wav\n');
[x,fs]=wavread('wav/tel_2421.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2421.f0' f0 -ascii;
save 'ap/tel_2421.ap' ap -ascii;
save 'sp/tel_2421.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2422.wav\n');
[x,fs]=wavread('wav/tel_2422.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2422.f0' f0 -ascii;
save 'ap/tel_2422.ap' ap -ascii;
save 'sp/tel_2422.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2423.wav\n');
[x,fs]=wavread('wav/tel_2423.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2423.f0' f0 -ascii;
save 'ap/tel_2423.ap' ap -ascii;
save 'sp/tel_2423.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2424.wav\n');
[x,fs]=wavread('wav/tel_2424.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2424.f0' f0 -ascii;
save 'ap/tel_2424.ap' ap -ascii;
save 'sp/tel_2424.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2425.wav\n');
[x,fs]=wavread('wav/tel_2425.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2425.f0' f0 -ascii;
save 'ap/tel_2425.ap' ap -ascii;
save 'sp/tel_2425.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2426.wav\n');
[x,fs]=wavread('wav/tel_2426.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2426.f0' f0 -ascii;
save 'ap/tel_2426.ap' ap -ascii;
save 'sp/tel_2426.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2427.wav\n');
[x,fs]=wavread('wav/tel_2427.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2427.f0' f0 -ascii;
save 'ap/tel_2427.ap' ap -ascii;
save 'sp/tel_2427.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2428.wav\n');
[x,fs]=wavread('wav/tel_2428.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2428.f0' f0 -ascii;
save 'ap/tel_2428.ap' ap -ascii;
save 'sp/tel_2428.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2429.wav\n');
[x,fs]=wavread('wav/tel_2429.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2429.f0' f0 -ascii;
save 'ap/tel_2429.ap' ap -ascii;
save 'sp/tel_2429.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2430.wav\n');
[x,fs]=wavread('wav/tel_2430.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2430.f0' f0 -ascii;
save 'ap/tel_2430.ap' ap -ascii;
save 'sp/tel_2430.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2431.wav\n');
[x,fs]=wavread('wav/tel_2431.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2431.f0' f0 -ascii;
save 'ap/tel_2431.ap' ap -ascii;
save 'sp/tel_2431.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2432.wav\n');
[x,fs]=wavread('wav/tel_2432.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2432.f0' f0 -ascii;
save 'ap/tel_2432.ap' ap -ascii;
save 'sp/tel_2432.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2433.wav\n');
[x,fs]=wavread('wav/tel_2433.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2433.f0' f0 -ascii;
save 'ap/tel_2433.ap' ap -ascii;
save 'sp/tel_2433.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2434.wav\n');
[x,fs]=wavread('wav/tel_2434.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2434.f0' f0 -ascii;
save 'ap/tel_2434.ap' ap -ascii;
save 'sp/tel_2434.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2435.wav\n');
[x,fs]=wavread('wav/tel_2435.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2435.f0' f0 -ascii;
save 'ap/tel_2435.ap' ap -ascii;
save 'sp/tel_2435.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2436.wav\n');
[x,fs]=wavread('wav/tel_2436.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2436.f0' f0 -ascii;
save 'ap/tel_2436.ap' ap -ascii;
save 'sp/tel_2436.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2437.wav\n');
[x,fs]=wavread('wav/tel_2437.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2437.f0' f0 -ascii;
save 'ap/tel_2437.ap' ap -ascii;
save 'sp/tel_2437.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2438.wav\n');
[x,fs]=wavread('wav/tel_2438.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2438.f0' f0 -ascii;
save 'ap/tel_2438.ap' ap -ascii;
save 'sp/tel_2438.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2439.wav\n');
[x,fs]=wavread('wav/tel_2439.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2439.f0' f0 -ascii;
save 'ap/tel_2439.ap' ap -ascii;
save 'sp/tel_2439.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2440.wav\n');
[x,fs]=wavread('wav/tel_2440.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2440.f0' f0 -ascii;
save 'ap/tel_2440.ap' ap -ascii;
save 'sp/tel_2440.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2441.wav\n');
[x,fs]=wavread('wav/tel_2441.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2441.f0' f0 -ascii;
save 'ap/tel_2441.ap' ap -ascii;
save 'sp/tel_2441.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2442.wav\n');
[x,fs]=wavread('wav/tel_2442.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2442.f0' f0 -ascii;
save 'ap/tel_2442.ap' ap -ascii;
save 'sp/tel_2442.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2443.wav\n');
[x,fs]=wavread('wav/tel_2443.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2443.f0' f0 -ascii;
save 'ap/tel_2443.ap' ap -ascii;
save 'sp/tel_2443.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2444.wav\n');
[x,fs]=wavread('wav/tel_2444.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2444.f0' f0 -ascii;
save 'ap/tel_2444.ap' ap -ascii;
save 'sp/tel_2444.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2445.wav\n');
[x,fs]=wavread('wav/tel_2445.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2445.f0' f0 -ascii;
save 'ap/tel_2445.ap' ap -ascii;
save 'sp/tel_2445.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2446.wav\n');
[x,fs]=wavread('wav/tel_2446.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2446.f0' f0 -ascii;
save 'ap/tel_2446.ap' ap -ascii;
save 'sp/tel_2446.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2447.wav\n');
[x,fs]=wavread('wav/tel_2447.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2447.f0' f0 -ascii;
save 'ap/tel_2447.ap' ap -ascii;
save 'sp/tel_2447.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2448.wav\n');
[x,fs]=wavread('wav/tel_2448.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2448.f0' f0 -ascii;
save 'ap/tel_2448.ap' ap -ascii;
save 'sp/tel_2448.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2449.wav\n');
[x,fs]=wavread('wav/tel_2449.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2449.f0' f0 -ascii;
save 'ap/tel_2449.ap' ap -ascii;
save 'sp/tel_2449.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2450.wav\n');
[x,fs]=wavread('wav/tel_2450.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2450.f0' f0 -ascii;
save 'ap/tel_2450.ap' ap -ascii;
save 'sp/tel_2450.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2451.wav\n');
[x,fs]=wavread('wav/tel_2451.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2451.f0' f0 -ascii;
save 'ap/tel_2451.ap' ap -ascii;
save 'sp/tel_2451.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2452.wav\n');
[x,fs]=wavread('wav/tel_2452.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2452.f0' f0 -ascii;
save 'ap/tel_2452.ap' ap -ascii;
save 'sp/tel_2452.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2453.wav\n');
[x,fs]=wavread('wav/tel_2453.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2453.f0' f0 -ascii;
save 'ap/tel_2453.ap' ap -ascii;
save 'sp/tel_2453.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2454.wav\n');
[x,fs]=wavread('wav/tel_2454.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2454.f0' f0 -ascii;
save 'ap/tel_2454.ap' ap -ascii;
save 'sp/tel_2454.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2455.wav\n');
[x,fs]=wavread('wav/tel_2455.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2455.f0' f0 -ascii;
save 'ap/tel_2455.ap' ap -ascii;
save 'sp/tel_2455.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2456.wav\n');
[x,fs]=wavread('wav/tel_2456.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2456.f0' f0 -ascii;
save 'ap/tel_2456.ap' ap -ascii;
save 'sp/tel_2456.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2457.wav\n');
[x,fs]=wavread('wav/tel_2457.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2457.f0' f0 -ascii;
save 'ap/tel_2457.ap' ap -ascii;
save 'sp/tel_2457.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2458.wav\n');
[x,fs]=wavread('wav/tel_2458.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2458.f0' f0 -ascii;
save 'ap/tel_2458.ap' ap -ascii;
save 'sp/tel_2458.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2459.wav\n');
[x,fs]=wavread('wav/tel_2459.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2459.f0' f0 -ascii;
save 'ap/tel_2459.ap' ap -ascii;
save 'sp/tel_2459.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2460.wav\n');
[x,fs]=wavread('wav/tel_2460.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2460.f0' f0 -ascii;
save 'ap/tel_2460.ap' ap -ascii;
save 'sp/tel_2460.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2461.wav\n');
[x,fs]=wavread('wav/tel_2461.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2461.f0' f0 -ascii;
save 'ap/tel_2461.ap' ap -ascii;
save 'sp/tel_2461.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2462.wav\n');
[x,fs]=wavread('wav/tel_2462.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2462.f0' f0 -ascii;
save 'ap/tel_2462.ap' ap -ascii;
save 'sp/tel_2462.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2463.wav\n');
[x,fs]=wavread('wav/tel_2463.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2463.f0' f0 -ascii;
save 'ap/tel_2463.ap' ap -ascii;
save 'sp/tel_2463.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2464.wav\n');
[x,fs]=wavread('wav/tel_2464.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2464.f0' f0 -ascii;
save 'ap/tel_2464.ap' ap -ascii;
save 'sp/tel_2464.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2465.wav\n');
[x,fs]=wavread('wav/tel_2465.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2465.f0' f0 -ascii;
save 'ap/tel_2465.ap' ap -ascii;
save 'sp/tel_2465.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2466.wav\n');
[x,fs]=wavread('wav/tel_2466.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2466.f0' f0 -ascii;
save 'ap/tel_2466.ap' ap -ascii;
save 'sp/tel_2466.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2467.wav\n');
[x,fs]=wavread('wav/tel_2467.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2467.f0' f0 -ascii;
save 'ap/tel_2467.ap' ap -ascii;
save 'sp/tel_2467.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2468.wav\n');
[x,fs]=wavread('wav/tel_2468.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2468.f0' f0 -ascii;
save 'ap/tel_2468.ap' ap -ascii;
save 'sp/tel_2468.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2469.wav\n');
[x,fs]=wavread('wav/tel_2469.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2469.f0' f0 -ascii;
save 'ap/tel_2469.ap' ap -ascii;
save 'sp/tel_2469.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2470.wav\n');
[x,fs]=wavread('wav/tel_2470.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2470.f0' f0 -ascii;
save 'ap/tel_2470.ap' ap -ascii;
save 'sp/tel_2470.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2471.wav\n');
[x,fs]=wavread('wav/tel_2471.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2471.f0' f0 -ascii;
save 'ap/tel_2471.ap' ap -ascii;
save 'sp/tel_2471.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2472.wav\n');
[x,fs]=wavread('wav/tel_2472.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2472.f0' f0 -ascii;
save 'ap/tel_2472.ap' ap -ascii;
save 'sp/tel_2472.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2473.wav\n');
[x,fs]=wavread('wav/tel_2473.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2473.f0' f0 -ascii;
save 'ap/tel_2473.ap' ap -ascii;
save 'sp/tel_2473.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2474.wav\n');
[x,fs]=wavread('wav/tel_2474.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2474.f0' f0 -ascii;
save 'ap/tel_2474.ap' ap -ascii;
save 'sp/tel_2474.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2475.wav\n');
[x,fs]=wavread('wav/tel_2475.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2475.f0' f0 -ascii;
save 'ap/tel_2475.ap' ap -ascii;
save 'sp/tel_2475.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2476.wav\n');
[x,fs]=wavread('wav/tel_2476.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2476.f0' f0 -ascii;
save 'ap/tel_2476.ap' ap -ascii;
save 'sp/tel_2476.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2477.wav\n');
[x,fs]=wavread('wav/tel_2477.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2477.f0' f0 -ascii;
save 'ap/tel_2477.ap' ap -ascii;
save 'sp/tel_2477.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2478.wav\n');
[x,fs]=wavread('wav/tel_2478.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2478.f0' f0 -ascii;
save 'ap/tel_2478.ap' ap -ascii;
save 'sp/tel_2478.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2479.wav\n');
[x,fs]=wavread('wav/tel_2479.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2479.f0' f0 -ascii;
save 'ap/tel_2479.ap' ap -ascii;
save 'sp/tel_2479.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2480.wav\n');
[x,fs]=wavread('wav/tel_2480.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2480.f0' f0 -ascii;
save 'ap/tel_2480.ap' ap -ascii;
save 'sp/tel_2480.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2481.wav\n');
[x,fs]=wavread('wav/tel_2481.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2481.f0' f0 -ascii;
save 'ap/tel_2481.ap' ap -ascii;
save 'sp/tel_2481.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2482.wav\n');
[x,fs]=wavread('wav/tel_2482.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2482.f0' f0 -ascii;
save 'ap/tel_2482.ap' ap -ascii;
save 'sp/tel_2482.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2483.wav\n');
[x,fs]=wavread('wav/tel_2483.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2483.f0' f0 -ascii;
save 'ap/tel_2483.ap' ap -ascii;
save 'sp/tel_2483.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2484.wav\n');
[x,fs]=wavread('wav/tel_2484.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2484.f0' f0 -ascii;
save 'ap/tel_2484.ap' ap -ascii;
save 'sp/tel_2484.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2485.wav\n');
[x,fs]=wavread('wav/tel_2485.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2485.f0' f0 -ascii;
save 'ap/tel_2485.ap' ap -ascii;
save 'sp/tel_2485.sp' sp -ascii;

fprintf(1,'Processing wav/tel_2486.wav\n');
[x,fs]=wavread('wav/tel_2486.wav');
[f0, ap] = exstraightsource(x,fs,prm);
[sp] = exstraightspec(x, f0, fs, prm);
ap = ap';
sp = sp';
save 'f0/tel_2486.f0' f0 -ascii;
save 'ap/tel_2486.ap' ap -ascii;
save 'sp/tel_2486.sp' sp -ascii;

quit;
