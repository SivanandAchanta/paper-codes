function [ym] = fp_cpu_ll(X,p,f)

U = p.U;
bu = p.bu;

ac = bsxfun(@plus,U*X',bu);
ac = ac';

ym = get_actf(f,ac);