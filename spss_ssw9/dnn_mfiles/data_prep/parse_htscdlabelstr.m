function [Cfeatsnb,Cfeatsb,Nfeats] = parse_htscdlabelstr(str)

str;
[str,tok] = strtok(str,'/');
[str1,tok] = strtok(tok,'/');
[str2,tok] = strtok(tok,'/');
[str3,tok] = strtok(tok,'/');
[str4,tok] = strtok(tok,'/');
[str5,tok] = strtok(tok,'/');
[str6,tok] = strtok(tok,'/');
[str7,tok] = strtok(tok,'/');
[str8,tok] = strtok(tok,'/');
[str9,tok] = strtok(tok,'/');
[str10,tok] = strtok(tok,'/');


% pfeats

[p1,tok] = strtok(str,'^');
[p2,tok] = strtok(tok,'-');
[p3,tok] = strtok(tok,'+');
[p4,tok] = strtok(tok,'=');
[p5,tok] = strtok(tok,'@');
[p6,tok] = strtok(tok,'_');

p1;
p2 = p2(2:end);
p3 = p3(2:end);
p4 = p4(2:end);
p5 = p5(2:end);

p6 = p6(2:end);
if p6 == 'x'; p6='0'; end
p6 = str2double(p6);
p7 = tok(2:end);
if p7 == 'x'; p7='0'; end
p7 = str2double(p7);

p_f = {p1;p2;p3;p4;p5};

% A feats
a = str1;
[a1,tok] = strtok(a(3:end),'_');
[a2,tok] = strtok(tok,'_');
a3 = tok(2:end);

a1 = str2double(a1);
a2 = str2double(a2);
a3 = str2double(a3);
a_f = [a1 a2 a3];

% B feats
b = str2;

[b1,tok] = strtok(b(3:end),'-');
[b2,tok] = strtok(tok,'-');
[b3,tok] = strtok(tok,'@');
[b4,tok] = strtok(tok,'-');
[b5,tok] = strtok(tok,'&');
[b6,tok] = strtok(tok,'-');
[b7,tok] = strtok(tok,'#');
[b8,tok] = strtok(tok,'-');
[b9,tok] = strtok(tok,'$');
[b10,tok] = strtok(tok,'-');
[b11,tok] = strtok(tok,'!');
[b12,tok] = strtok(tok,'-');
[b13,tok] = strtok(tok,';');
[b14,tok] = strtok(tok,'-');
[b15,tok] = strtok(tok,'|');
b16 = tok(2:end);


b3 = b3(2:end);
b4 = b4(2:end);
b5 = b5(2:end);
b6 = b6(2:end);
b7 = b7(2:end);
b8 = b8(2:end);
b9 = b9(2:end);
b10 = b10(2:end);
b11 = b11(2:end);
b12 = b12(2:end);
b13 = b13(2:end);
b14 = b14(2:end);
b15 = b15(2:end);

if b1 == 'x'; b1='0'; end; if b2 == 'x'; b2='0'; end; if b3 == 'x'; b3='0'; end; if b4 == 'x'; b4='0'; end;
if b5 == 'x'; b5='0'; end; if b6 == 'x'; b6='0'; end; if b7 == 'x'; b7='0'; end; if b8 == 'x'; b8='0'; end;
if b9 == 'x'; b9='0'; end; if b10 == 'x'; b10='0'; end; if b11 == 'x'; b11='0'; end; if b12 == 'x'; b12='0'; end;
if b13 == 'x'; b13='0'; end; if b14 == 'x'; b14='0'; end; if b15 == 'x'; b15='0'; end;

b1 = str2double(b1);
b2 = str2double(b2);
b3 = str2double(b3);
b4 = str2double(b4);
b5 = str2double(b5);
b6 = str2double(b6);
b7 = str2double(b7);
b8 = str2double(b8);
b9 = str2double(b9);
b10 = str2double(b10);
b11 = str2double(b11);
b12 = str2double(b12);
b13 = str2double(b13);
b14 = str2double(b14);
b15 = str2double(b15);
b_f = [b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15];

% C feats
c = str3;
[c1,tok] = strtok(c(3:end),'+');
[c2,tok] = strtok(tok,'+');
c3 = tok(2:end);

c1 = str2double(c1);
c2 = str2double(c2);
c3 = str2double(c3);
c_f = [c1 c2 c3];

% D feats
d = str4;
[d1,tok] = strtok(d(3:end),'_');
d2 = tok(2:end);
d2 = str2double(d2);


% E feats
e = str5;

[e1,tok] = strtok(e(3:end),'+');
[e2,tok] = strtok(tok,'@');
[e3,tok] = strtok(tok,'+');
[e4,tok] = strtok(tok,'&');
[e5,tok] = strtok(tok,'+');
[e6,tok] = strtok(tok,'#');
[e7,tok] = strtok(tok,'+');
e8 = tok;

e2 = e2(2:end);
e3 = e3(2:end);
e4 = e4(2:end);
e5 = e5(2:end);
e6 = e6(2:end);
e7 = e7(2:end);
e8 = e8(2:end);

if e2 == 'x'; e2='0'; end; if e3 == 'x'; e3='0'; end; if e4 == 'x'; e4='0'; end; if e5 == 'x'; e5='0'; end;
if e6 == 'x'; e6='0'; end; if e7 == 'x'; e7='0'; end; if e8 == 'x'; e8='0'; end;

e2 = str2double(e2);
e3 = str2double(e3);
e4 = str2double(e4);
e5 = str2double(e5);
e6 = str2double(e6);
e7 = str2double(e7);
e8 = str2double(e8);

e_f = [e2 e3 e4 e5 e6 e7 e8];

% F feats
f = str6;
[f1,tok] = strtok(f(3:end),'_');
f2 = tok(2:end);

f1;
%         f1 = str2double(f1)
f2 = str2double(f2);


% G feats
g = str7;
[g1,tok] = strtok(g(3:end),'_');
g2 = tok(2:end);

g1 = str2double(g1);
g2 = str2double(g2);

g_f = [g1 g2];

% H feats
h = str8;

[h1,tok] = strtok(h(3:end),'=');
[h2,tok] = strtok(tok,'^');
[h3,tok] = strtok(tok,'=');
[h4,tok] = strtok(tok,'|');
h5 = tok(2:end);

if h1 == 'x'; h1='0'; end;
h1 = str2double(h1);
h2 = h2(2:end);
if h2 == 'x'; h2='0'; end;
h2 = str2double(h2);
h3 = str2double(h3(2:end));
h4 = str2double(h4(2:end));
%         h5 = str2double(h5(2:end))
h5;

h_4f = [h1 h2 h3 h4];

% I feats
i = str9;
[i1,tok] = strtok(i(3:end),'=');
i2 = tok(2:end);

i1 = str2double(i1);
i2 = str2double(i2);

i_f = [i1 i2];

% J feats
j = str10;
[j1,tok] = strtok(j(3:end),'+');
[j2,tok] = strtok(tok,'-');
j3 = tok(2:end);

j1 = str2double(j1);
j2 = str2double(j2);
j3 = str2double(j3);

j_f = [j1 j2 j3];

Nfeats = [ p6 p7 a_f(end) b_f(3:end) c_f(end) d2 e_f f2 g_f h_4f i_f j_f];

Cfeatsnb = [p_f;b16;d1;e1;f1;h5]; % non - binary categorical feats

Cfeatsb = [a_f(1:2) b_f(1:2) c_f(1:2)]; % binary categorical feats

end