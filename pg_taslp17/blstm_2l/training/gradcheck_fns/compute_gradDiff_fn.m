function [dg] = compute_gradDiff_fn(gn,g,gname)

eps = 1e-8;
dg = abs(gn - g)./max(abs(gn)+eps,abs(g)+eps);
ix_int = find(dg > 1e-4);
fprintf('diff in %s : %d \n',gname,length(ix_int))

end