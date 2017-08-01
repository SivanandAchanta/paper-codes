function [lid,sid] = get_lidnsid(x)

%x(1,530:end)

spk_vec = x(1,529+1:529+24);
lang_vec = x(1,529+24+1:529+24+12);

sid = find(spk_vec);
lid = find(lang_vec);

switch lid

case 4 
     lid = 1;
case 5
     lid = 2;
case 6
     lid = 3;
case 11
     lid = 4;
case 12
     lid = 5; 
end

switch sid

case 7
     sid = 1;
case 8
     sid = 2;
case 9
     sid = 3;
case 10
     sid = 4;
case 11
     sid = 5;
case 12
     sid = 6;
case 21
     sid = 7;
case 23
     sid = 8;
case 24
     sid = 9;
end

end

