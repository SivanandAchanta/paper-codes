
posN = strfind(arch_name,'N');
posL = strfind(arch_name,'L');
posS = strfind(arch_name,'S');
posR = strfind(arch_name,'R');
posM = strfind(arch_name,'M');
posfull = sort([posN,posL,posS,posR,posM]);
posfull = [0 posfull];

nl = [din];
for i = 1:length(posfull)-1
    nl = [nl str2num(arch_name(posfull(i)+1:posfull(i+1)-1))];
    f(i) = arch_name(posfull(i+1));    
end
nl
f
% Alternate way of initialzing the architecture 
% nl = [din 1500 1500 dout];
% f = [ 'R' 'R' 'L'];

% Do Not Change The Following Variables
nh = length(nl) - 1 % number of hidden layers

if (length(nl)-1) ~= length(f)
    disp('number of hidden o/p fns mus be same as number of hidden layers');
end

nlv = 1:nh;
wtl = [1 nl(nlv).*nl(nlv+1)];
wtl = cumsum(wtl);
btl = cumsum([1 nl(nlv+1)]);

arch_name = strcat(num2str(din),'L');
for i = 1:nh
    arch_name = strcat(arch_name,num2str(nl(i+1)),f(i));
end
arch_name
