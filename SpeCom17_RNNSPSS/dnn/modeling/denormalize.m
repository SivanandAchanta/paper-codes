function [ym] = denormalize(ym,mo,vo,maxv,minv,outvec,outtmvnf,outtmmnf)

% Purpose : De-normalize the parameter tracks

if outtmvnf
    I1 = bsxfun(@times,ym,vo(:,outvec));
    I1 = bsxfun(@plus,I1,mo(:,outvec));
    ym = I1;
end

if outtmmnf
    I1 = bsxfun(@times,ym,maxv(:,outvec));
    I1 = bsxfun(@plus,I1,minv(:,outvec));
    ym = I1;
end

end