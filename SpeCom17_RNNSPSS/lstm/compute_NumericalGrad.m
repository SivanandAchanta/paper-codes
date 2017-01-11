h = 1e-4;

% gWzn
gWzn = zeros(nl(2),nl(1));
for nc = 1:nl(1)
    for nr = 1:nl(2)
        Wp = GWz; Wp(nr,nc) = Wp(nr,nc) + h;
        
        [zm,im,fm,cm,om,hcm,hm] = fp_lstm(X,Wp,GRz,Gbz,GWi,GRi,Gpi,Gbi,GWf,GRf,Gpf,Gbf,GWo,GRo,Gpo,Gbo,nl,sl); ym = bsxfun(@plus,GU*hm',Gbu)';
        if strcmp(cfn,'nll'); f_xph = compute_crossentropy(ym,Y); else f_xph = 0.5*mean(sum((Y - ym).^2,2)); end;
        
        Wn = GWz; Wn(nr,nc) = Wn(nr,nc) - h;
        
        [zm,im,fm,cm,om,hcm,hm] = fp_lstm(X,Wn,GRz,Gbz,GWi,GRi,Gpi,Gbi,GWf,GRf,Gpf,Gbf,GWo,GRo,Gpo,Gbo,nl,sl); ym = bsxfun(@plus,GU*hm',Gbu)';
        if strcmp(cfn,'nll'); f_xnh = compute_crossentropy(ym,Y); else f_xnh = 0.5*mean(sum((Y - ym).^2,2)); end;
        
        gWzn(nr,nc) = (f_xph-f_xnh)/(2*h);
    end
end

% gRzn
gRzn = zeros(nl(2),nl(2));
for nc = 1:nl(2)
    for nr = 1:nl(2)
        Wp = GRz; Wp(nr,nc) = Wp(nr,nc) + h;
        
        [zm,im,fm,cm,om,hcm,hm] = fp_lstm(X,GWz,Wp,Gbz,GWi,GRi,Gpi,Gbi,GWf,GRf,Gpf,Gbf,GWo,GRo,Gpo,Gbo,nl,sl); ym = bsxfun(@plus,GU*hm',Gbu)';
        if strcmp(cfn,'nll'); f_xph = compute_crossentropy(ym,Y); else f_xph = 0.5*mean(sum((Y - ym).^2,2)); end;
        
        Wn = GRz; Wn(nr,nc) = Wn(nr,nc) - h;
        
        [zm,im,fm,cm,om,hcm,hm] = fp_lstm(X,GWz,Wn,Gbz,GWi,GRi,Gpi,Gbi,GWf,GRf,Gpf,Gbf,GWo,GRo,Gpo,Gbo,nl,sl); ym = bsxfun(@plus,GU*hm',Gbu)';
        if strcmp(cfn,'nll'); f_xnh = compute_crossentropy(ym,Y); else f_xnh = 0.5*mean(sum((Y - ym).^2,2)); end;
        
        gRzn(nr,nc) = (f_xph-f_xnh)/(2*h);
    end
end

% gbzn
gbzn = zeros(nl(2),1);
for nc = 1
    for nr = 1:nl(2)
        Wp = Gbz; Wp(nr,nc) = Wp(nr,nc) + h;
        
        [zm,im,fm,cm,om,hcm,hm] = fp_lstm(X,GWz,GRz,Wp,GWi,GRi,Gpi,Gbi,GWf,GRf,Gpf,Gbf,GWo,GRo,Gpo,Gbo,nl,sl); ym = bsxfun(@plus,GU*hm',Gbu)';
        if strcmp(cfn,'nll'); f_xph = compute_crossentropy(ym,Y); else f_xph = 0.5*mean(sum((Y - ym).^2,2)); end;
        
        Wn = Gbz; Wn(nr,nc) = Wn(nr,nc) - h;
        
        [zm,im,fm,cm,om,hcm,hm] = fp_lstm(X,GWz,GRz,Wn,GWi,GRi,Gpi,Gbi,GWf,GRf,Gpf,Gbf,GWo,GRo,Gpo,Gbo,nl,sl); ym = bsxfun(@plus,GU*hm',Gbu)';
        if strcmp(cfn,'nll'); f_xnh = compute_crossentropy(ym,Y); else f_xnh = 0.5*mean(sum((Y - ym).^2,2)); end;
        
        gbzn(nr,nc) = (f_xph-f_xnh)/(2*h);
    end
end


% gWin
gWin = zeros(nl(2),nl(1));
for nc = 1:nl(1)
    for nr = 1:nl(2)
        Wp = GWi; Wp(nr,nc) = Wp(nr,nc) + h;
        
        [zm,im,fm,cm,om,hcm,hm] = fp_lstm(X,GWz,GRz,Gbz,Wp,GRi,Gpi,Gbi,GWf,GRf,Gpf,Gbf,GWo,GRo,Gpo,Gbo,nl,sl); ym = bsxfun(@plus,GU*hm',Gbu)';
        if strcmp(cfn,'nll'); f_xph = compute_crossentropy(ym,Y); else f_xph = 0.5*mean(sum((Y - ym).^2,2)); end;
        
        Wn = GWi; Wn(nr,nc) = Wn(nr,nc) - h;
        
        [zm,im,fm,cm,om,hcm,hm] = fp_lstm(X,GWz,GRz,Gbz,Wn,GRi,Gpi,Gbi,GWf,GRf,Gpf,Gbf,GWo,GRo,Gpo,Gbo,nl,sl); ym = bsxfun(@plus,GU*hm',Gbu)';
        if strcmp(cfn,'nll'); f_xnh = compute_crossentropy(ym,Y); else f_xnh = 0.5*mean(sum((Y - ym).^2,2)); end;
        
        gWin(nr,nc) = (f_xph-f_xnh)/(2*h);
    end
end

% gRin
gRin = zeros(nl(2),nl(2));
for nc = 1:nl(2)
    for nr = 1:nl(2)
        Wp = GRi; Wp(nr,nc) = Wp(nr,nc) + h;
        
        [zm,im,fm,cm,om,hcm,hm] = fp_lstm(X,GWz,GRz,Gbz,GWi,Wp,Gpi,Gbi,GWf,GRf,Gpf,Gbf,GWo,GRo,Gpo,Gbo,nl,sl); ym = bsxfun(@plus,GU*hm',Gbu)';
        if strcmp(cfn,'nll'); f_xph = compute_crossentropy(ym,Y); else f_xph = 0.5*mean(sum((Y - ym).^2,2)); end;
        
        Wn = GRi; Wn(nr,nc) = Wn(nr,nc) - h;
        
        [zm,im,fm,cm,om,hcm,hm] = fp_lstm(X,GWz,GRz,Gbz,GWi,Wn,Gpi,Gbi,GWf,GRf,Gpf,Gbf,GWo,GRo,Gpo,Gbo,nl,sl); ym = bsxfun(@plus,GU*hm',Gbu)';
        if strcmp(cfn,'nll'); f_xnh = compute_crossentropy(ym,Y); else f_xnh = 0.5*mean(sum((Y - ym).^2,2)); end;
        
        gRin(nr,nc) = (f_xph-f_xnh)/(2*h);
    end
end

% gpin
gpin = zeros(nl(2),1);
for nc = 1
    for nr = 1:nl(2)
        Wp = Gpi; Wp(nr,nc) = Wp(nr,nc) + h;
        
        [zm,im,fm,cm,om,hcm,hm] = fp_lstm(X,GWz,GRz,Gbz,GWi,GRi,Wp,Gbi,GWf,GRf,Gpf,Gbf,GWo,GRo,Gpo,Gbo,nl,sl); ym = bsxfun(@plus,GU*hm',Gbu)';
        if strcmp(cfn,'nll'); f_xph = compute_crossentropy(ym,Y); else f_xph = 0.5*mean(sum((Y - ym).^2,2)); end;
        
        Wn = Gpi; Wn(nr,nc) = Wn(nr,nc) - h;
        
        [zm,im,fm,cm,om,hcm,hm] = fp_lstm(X,GWz,GRz,Gbz,GWi,GRi,Wn,Gbi,GWf,GRf,Gpf,Gbf,GWo,GRo,Gpo,Gbo,nl,sl); ym = bsxfun(@plus,GU*hm',Gbu)';
        if strcmp(cfn,'nll'); f_xnh = compute_crossentropy(ym,Y); else f_xnh = 0.5*mean(sum((Y - ym).^2,2)); end;
        
        gpin(nr,nc) = (f_xph-f_xnh)/(2*h);
    end
end

% gbin
gbin = zeros(nl(2),1);
for nc = 1
    for nr = 1:nl(2)
        Wp = Gbi; Wp(nr,nc) = Wp(nr,nc) + h;
        
        [zm,im,fm,cm,om,hcm,hm] = fp_lstm(X,GWz,GRz,Gbz,GWi,GRi,Gpi,Wp,GWf,GRf,Gpf,Gbf,GWo,GRo,Gpo,Gbo,nl,sl); ym = bsxfun(@plus,GU*hm',Gbu)';
        if strcmp(cfn,'nll'); f_xph = compute_crossentropy(ym,Y); else f_xph = 0.5*mean(sum((Y - ym).^2,2)); end;
        
        Wn = Gbi; Wn(nr,nc) = Wn(nr,nc) - h;
        
        [zm,im,fm,cm,om,hcm,hm] = fp_lstm(X,GWz,GRz,Gbz,GWi,GRi,Gpi,Wn,GWf,GRf,Gpf,Gbf,GWo,GRo,Gpo,Gbo,nl,sl); ym = bsxfun(@plus,GU*hm',Gbu)';
        if strcmp(cfn,'nll'); f_xnh = compute_crossentropy(ym,Y); else f_xnh = 0.5*mean(sum((Y - ym).^2,2)); end;
        
        gbin(nr,nc) = (f_xph-f_xnh)/(2*h);
    end
end


% gWfn
gWfn = zeros(nl(2),nl(1));
for nc = 1:nl(1)
    for nr = 1:nl(2)
        Wp = GWf; Wp(nr,nc) = Wp(nr,nc) + h;
        
        [zm,im,fm,cm,om,hcm,hm] = fp_lstm(X,GWz,GRz,Gbz,GWi,GRi,Gpi,Gbi,Wp,GRf,Gpf,Gbf,GWo,GRo,Gpo,Gbo,nl,sl); ym = bsxfun(@plus,GU*hm',Gbu)';
        if strcmp(cfn,'nll'); f_xph = compute_crossentropy(ym,Y); else f_xph = 0.5*mean(sum((Y - ym).^2,2)); end;
        
        Wn = GWf; Wn(nr,nc) = Wn(nr,nc) - h;
        
        [zm,im,fm,cm,om,hcm,hm] = fp_lstm(X,GWz,GRz,Gbz,GWi,GRi,Gpi,Gbi,Wn,GRf,Gpf,Gbf,GWo,GRo,Gpo,Gbo,nl,sl); ym = bsxfun(@plus,GU*hm',Gbu)';
        if strcmp(cfn,'nll'); f_xnh = compute_crossentropy(ym,Y); else f_xnh = 0.5*mean(sum((Y - ym).^2,2)); end;
        
        gWfn(nr,nc) = (f_xph-f_xnh)/(2*h);
    end
end

% gRfn
gRfn = zeros(nl(2),nl(2));
for nc = 1:nl(2)
    for nr = 1:nl(2)
        Wp = GRf; Wp(nr,nc) = Wp(nr,nc) + h;
        
        [zm,im,fm,cm,om,hcm,hm] = fp_lstm(X,GWz,GRz,Gbz,GWi,GRi,Gpi,Gbi,GWf,Wp,Gpf,Gbf,GWo,GRo,Gpo,Gbo,nl,sl); ym = bsxfun(@plus,GU*hm',Gbu)';
        if strcmp(cfn,'nll'); f_xph = compute_crossentropy(ym,Y); else f_xph = 0.5*mean(sum((Y - ym).^2,2)); end;
        
        Wn = GRf; Wn(nr,nc) = Wn(nr,nc) - h;
        
        [zm,im,fm,cm,om,hcm,hm] = fp_lstm(X,GWz,GRz,Gbz,GWi,GRi,Gpi,Gbi,GWf,Wn,Gpf,Gbf,GWo,GRo,Gpo,Gbo,nl,sl); ym = bsxfun(@plus,GU*hm',Gbu)';
        if strcmp(cfn,'nll'); f_xnh = compute_crossentropy(ym,Y); else f_xnh = 0.5*mean(sum((Y - ym).^2,2)); end;
        
        gRfn(nr,nc) = (f_xph-f_xnh)/(2*h);
    end
end

% gpfn
gpfn = zeros(nl(2),1);
for nc = 1
    for nr = 1:nl(2)
        Wp = Gpf; Wp(nr,nc) = Wp(nr,nc) + h;
        
        [zm,im,fm,cm,om,hcm,hm] = fp_lstm(X,GWz,GRz,Gbz,GWi,GRi,Gpi,Gbi,GWf,GRf,Wp,Gbf,GWo,GRo,Gpo,Gbo,nl,sl); ym = bsxfun(@plus,GU*hm',Gbu)';
        if strcmp(cfn,'nll'); f_xph = compute_crossentropy(ym,Y); else f_xph = 0.5*mean(sum((Y - ym).^2,2)); end;
        
        Wn = Gpf; Wn(nr,nc) = Wn(nr,nc) - h;
        
        [zm,im,fm,cm,om,hcm,hm] = fp_lstm(X,GWz,GRz,Gbz,GWi,GRi,Gpi,Gbi,GWf,GRf,Wn,Gbf,GWo,GRo,Gpo,Gbo,nl,sl); ym = bsxfun(@plus,GU*hm',Gbu)';
        if strcmp(cfn,'nll'); f_xnh = compute_crossentropy(ym,Y); else f_xnh = 0.5*mean(sum((Y - ym).^2,2)); end;
        
        gpfn(nr,nc) = (f_xph-f_xnh)/(2*h);
    end
end

% gbfn
gbfn = zeros(nl(2),1);
for nc = 1
    for nr = 1:nl(2)
        Wp = Gbf; Wp(nr,nc) = Wp(nr,nc) + h;
        
        [zm,im,fm,cm,om,hcm,hm] = fp_lstm(X,GWz,GRz,Gbz,GWi,GRi,Gpi,Gbi,GWf,GRf,Gpf,Wp,GWo,GRo,Gpo,Gbo,nl,sl); ym = bsxfun(@plus,GU*hm',Gbu)';
        if strcmp(cfn,'nll'); f_xph = compute_crossentropy(ym,Y); else f_xph = 0.5*mean(sum((Y - ym).^2,2)); end;
        
        Wn = Gbf; Wn(nr,nc) = Wn(nr,nc) - h;
        
        [zm,im,fm,cm,om,hcm,hm] = fp_lstm(X,GWz,GRz,Gbz,GWi,GRi,Gpi,Gbi,GWf,GRf,Gpf,Wn,GWo,GRo,Gpo,Gbo,nl,sl); ym = bsxfun(@plus,GU*hm',Gbu)';
        if strcmp(cfn,'nll'); f_xnh = compute_crossentropy(ym,Y); else f_xnh = 0.5*mean(sum((Y - ym).^2,2)); end;
        
        gbfn(nr,nc) = (f_xph-f_xnh)/(2*h);
    end
end

% gWon
gWon = zeros(nl(2),nl(1));
for nc = 1:nl(1)
    for nr = 1:nl(2)
        Wp = GWo; Wp(nr,nc) = Wp(nr,nc) + h;
        
        [zm,im,fm,cm,om,hcm,hm] = fp_lstm(X,GWz,GRz,Gbz,GWi,GRi,Gpi,Gbi,GWf,GRf,Gpf,Gbf,Wp,GRo,Gpo,Gbo,nl,sl); ym = bsxfun(@plus,GU*hm',Gbu)';
        if strcmp(cfn,'nll'); f_xph = compute_crossentropy(ym,Y); else f_xph = 0.5*mean(sum((Y - ym).^2,2)); end;
        
        Wn = GWo; Wn(nr,nc) = Wn(nr,nc) - h;
        
        [zm,im,fm,cm,om,hcm,hm] = fp_lstm(X,GWz,GRz,Gbz,GWi,GRi,Gpi,Gbi,GWf,GRf,Gpf,Gbf,Wn,GRo,Gpo,Gbo,nl,sl); ym = bsxfun(@plus,GU*hm',Gbu)';
        if strcmp(cfn,'nll'); f_xnh = compute_crossentropy(ym,Y); else f_xnh = 0.5*mean(sum((Y - ym).^2,2)); end;
        
        gWon(nr,nc) = (f_xph-f_xnh)/(2*h);
    end
end

% gRon
gRon = zeros(nl(2),nl(2));
for nc = 1:nl(2)
    for nr = 1:nl(2)
        Wp = GRo; Wp(nr,nc) = Wp(nr,nc) + h;
        
        [zm,im,fm,cm,om,hcm,hm] = fp_lstm(X,GWz,GRz,Gbz,GWi,GRi,Gpi,Gbi,GWf,GRf,Gpf,Gbf,GWo,Wp,Gpo,Gbo,nl,sl); ym = bsxfun(@plus,GU*hm',Gbu)';
        if strcmp(cfn,'nll'); f_xph = compute_crossentropy(ym,Y); else f_xph = 0.5*mean(sum((Y - ym).^2,2)); end;
        
        Wn = GRo; Wn(nr,nc) = Wn(nr,nc) - h;
        
        [zm,im,fm,cm,om,hcm,hm] = fp_lstm(X,GWz,GRz,Gbz,GWi,GRi,Gpi,Gbi,GWf,GRf,Gpf,Gbf,GWo,Wn,Gpo,Gbo,nl,sl); ym = bsxfun(@plus,GU*hm',Gbu)';
        if strcmp(cfn,'nll'); f_xnh = compute_crossentropy(ym,Y); else f_xnh = 0.5*mean(sum((Y - ym).^2,2)); end;
        
        gRon(nr,nc) = (f_xph-f_xnh)/(2*h);
    end
end

% gpon
gpon = zeros(nl(2),1);
for nc = 1
    for nr = 1:nl(2)
        Wp = Gpo; Wp(nr,nc) = Wp(nr,nc) + h;
        
        [zm,im,fm,cm,om,hcm,hm] = fp_lstm(X,GWz,GRz,Gbz,GWi,GRi,Gpi,Gbi,GWf,GRf,Gpf,Gbf,GWo,GRo,Wp,Gbo,nl,sl); ym = bsxfun(@plus,GU*hm',Gbu)';
        if strcmp(cfn,'nll'); f_xph = compute_crossentropy(ym,Y); else f_xph = 0.5*mean(sum((Y - ym).^2,2)); end;
        
        Wn = Gpo; Wn(nr,nc) = Wn(nr,nc) - h;
        
        [zm,im,fm,cm,om,hcm,hm] = fp_lstm(X,GWz,GRz,Gbz,GWi,GRi,Gpi,Gbi,GWf,GRf,Gpf,Gbf,GWo,GRo,Wn,Gbo,nl,sl); ym = bsxfun(@plus,GU*hm',Gbu)';
        if strcmp(cfn,'nll'); f_xnh = compute_crossentropy(ym,Y); else f_xnh = 0.5*mean(sum((Y - ym).^2,2)); end;
        
        gpon(nr,nc) = (f_xph-f_xnh)/(2*h);
    end
end


% gbon
gbon = zeros(nl(2),1);
for nc = 1
    for nr = 1:nl(2)
        Wp = Gbo; Wp(nr,nc) = Wp(nr,nc) + h;
        
        [zm,im,fm,cm,om,hcm,hm] = fp_lstm(X,GWz,GRz,Gbz,GWi,GRi,Gpi,Gbi,GWf,GRf,Gpf,Gbf,GWo,GRo,Gpo,Wp,nl,sl); ym = bsxfun(@plus,GU*hm',Gbu)';
        if strcmp(cfn,'nll'); f_xph = compute_crossentropy(ym,Y); else f_xph = 0.5*mean(sum((Y - ym).^2,2)); end;
        
        Wn = Gbo; Wn(nr,nc) = Wn(nr,nc) - h;
        
        [zm,im,fm,cm,om,hcm,hm] = fp_lstm(X,GWz,GRz,Gbz,GWi,GRi,Gpi,Gbi,GWf,GRf,Gpf,Gbf,GWo,GRo,Gpo,Wn,nl,sl); ym = bsxfun(@plus,GU*hm',Gbu)';
        if strcmp(cfn,'nll'); f_xnh = compute_crossentropy(ym,Y); else f_xnh = 0.5*mean(sum((Y - ym).^2,2)); end;
        
        gbon(nr,nc) = (f_xph-f_xnh)/(2*h);
    end
end


% gUn
gUn = zeros(nl(3),nl(2));
for nc = 1:nl(2)
    for nr = 1:nl(3)
        Wp = GU; Wp(nr,nc) = Wp(nr,nc) + h;
        
        [zm,im,fm,cm,om,hcm,hm] = fp_lstm(X,GWz,GRz,Gbz,GWi,GRi,Gpi,Gbi,GWf,GRf,Gpf,Gbf,GWo,GRo,Gpo,Gbo,nl,sl); ym = bsxfun(@plus,Wp*hm',Gbu)';
        if strcmp(cfn,'nll'); f_xph = compute_crossentropy(ym,Y); else f_xph = 0.5*mean(sum((Y - ym).^2,2)); end;
        
        Wn = GU; Wn(nr,nc) = Wn(nr,nc) - h;
        
        [zm,im,fm,cm,om,hcm,hm] = fp_lstm(X,GWz,GRz,Gbz,GWi,GRi,Gpi,Gbi,GWf,GRf,Gpf,Gbf,GWo,GRo,Gpo,Gbo,nl,sl); ym = bsxfun(@plus,Wn*hm',Gbu)';
        if strcmp(cfn,'nll'); f_xnh = compute_crossentropy(ym,Y); else f_xnh = 0.5*mean(sum((Y - ym).^2,2)); end;
        
        gUn(nr,nc) = (f_xph-f_xnh)/(2*h);
    end
end

% gbun
gbun = zeros(nl(3),1);
for nc = 1
    for nr = 1:nl(3)
        Wp = Gbu; Wp(nr,nc) = Wp(nr,nc) + h;
        
        [zm,im,fm,cm,om,hcm,hm] = fp_lstm(X,GWz,GRz,Gbz,GWi,GRi,Gpi,Gbi,GWf,GRf,Gpf,Gbf,GWo,GRo,Gpo,Gbo,nl,sl); ym = bsxfun(@plus,GU*hm',Wp)';
        if strcmp(cfn,'nll'); f_xph = compute_crossentropy(ym,Y); else f_xph = 0.5*mean(sum((Y - ym).^2,2)); end;
        
        Wn = Gbu; Wn(nr,nc) = Wn(nr,nc) - h;
        
        [zm,im,fm,cm,om,hcm,hm] = fp_lstm(X,GWz,GRz,Gbz,GWi,GRi,Gpi,Gbi,GWf,GRf,Gpf,Gbf,GWo,GRo,Gpo,Gbo,nl,sl); ym = bsxfun(@plus,GU*hm',Wn)';
        if strcmp(cfn,'nll'); f_xnh = compute_crossentropy(ym,Y); else f_xnh = 0.5*mean(sum((Y - ym).^2,2)); end;
        
        gbun(nr,nc) = (f_xph-f_xnh)/(2*h);
    end
end

