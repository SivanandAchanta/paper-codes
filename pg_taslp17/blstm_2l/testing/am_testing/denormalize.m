function [ym] = denormalize(ym,mo,vo,outvec,outtmvnf)

% Purpose : De-normalize the parameter tracks

if outtmvnf
    I1 = bsxfun(@times,ym,vo(:,outvec));
    I1 = bsxfun(@plus,I1,mo(:,outvec));
    ym = I1;
end


end