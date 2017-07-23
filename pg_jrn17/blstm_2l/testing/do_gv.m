function [pparams_gv] = do_gv(pparams,a_opt)

m = mean(pparams);
t2 = (1-a_opt).*m;

pparams_gv = bsxfun(@times,pparams,a_opt);
pparams_gv = bsxfun(@plus,pparams_gv,t2);

end