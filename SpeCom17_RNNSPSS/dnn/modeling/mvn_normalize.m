function [Y] = mvn_normalize(Yd,mo,vo)

Y = bsxfun(@minus,Yd,mo);
Y = bsxfun(@rdivide,Y,vo);

end