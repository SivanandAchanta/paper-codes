lg = sqrt(sum(gWz.^2,2));
ix_int = find(lg > gcth);
if ~isempty(ix_int);  gWz(ix_int,:) = gcth*bsxfun(@rdivide,gWz(ix_int,:),lg(ix_int)); end;

lg = sqrt(sum(gWi.^2,2));
ix_int = find(lg > gcth);
if ~isempty(ix_int);  gWi(ix_int,:) = gcth*bsxfun(@rdivide,gWi(ix_int,:),lg(ix_int)); end;

lg = sqrt(sum(gWf.^2,2));
ix_int = find(lg > gcth);
if ~isempty(ix_int);  gWf(ix_int,:) = gcth*bsxfun(@rdivide,gWf(ix_int,:),lg(ix_int)); end;

lg = sqrt(sum(gWo.^2,2));
ix_int = find(lg > gcth);
if ~isempty(ix_int);  gWo(ix_int,:) = gcth*bsxfun(@rdivide,gWo(ix_int,:),lg(ix_int)); end;

lg = sqrt(sum(gRz.^2,2));
ix_int = find(lg > gcth);
if ~isempty(ix_int);  gRz(ix_int,:) = gcth*bsxfun(@rdivide,gRz(ix_int,:),lg(ix_int)); end;

lg = sqrt(sum(gRi.^2,2));
ix_int = find(lg > gcth);
if ~isempty(ix_int);  gRi(ix_int,:) = gcth*bsxfun(@rdivide,gRi(ix_int,:),lg(ix_int)); end;

lg = sqrt(sum(gRf.^2,2));
ix_int = find(lg > gcth);
if ~isempty(ix_int);  gRf(ix_int,:) = gcth*bsxfun(@rdivide,gRf(ix_int,:),lg(ix_int)); end;

lg = sqrt(sum(gRo.^2,2));
ix_int = find(lg > gcth);
if ~isempty(ix_int);  gRo(ix_int,:) = gcth*bsxfun(@rdivide,gRo(ix_int,:),lg(ix_int)); end;


lg = sqrt(sum(gU.^2,2));
ix_int = find(lg > gcth);
if ~isempty(ix_int);  gU(ix_int,:) = gcth*bsxfun(@rdivide,gU(ix_int,:),lg(ix_int)); end;

