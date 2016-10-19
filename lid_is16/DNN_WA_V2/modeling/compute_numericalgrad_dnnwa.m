% Purpose : To compute numerical gradients for DNN-WA architecture
h = 1e-5;

% gWin
gWin = zeros(nl(2),nl(1));
for nc = 1:nl(1)
    for nr = 1:nl(2)
        Wp = GWi;
        Wp(nr,nc) = Wp(nr,nc) + h;
        [hcm,hcmba1,hcmba2,ah,alpha,c,sm,ym] = fp_cpu(X,Wp,Gbi,GWba1,Gbba1,GWba2,Gbba2,GWa,Gba,GWh,Gbh,GWo,Gbo,f);
        if strcmp(cfn,'nll'); f_xph = compute_crossentropy(ym,Y); else f_xph = 0.5*mean(sum((Y - ym).^2,2)); end;
        
        Wn = GWi;
        Wn(nr,nc) = Wn(nr,nc) - h;
        [hcm,hcmba1,hcmba2,ah,alpha,c,sm,ym] = fp_cpu(X,Wn,Gbi,GWba1,Gbba1,GWba2,Gbba2,GWa,Gba,GWh,Gbh,GWo,Gbo,f);
        if strcmp(cfn,'nll'); f_xnh = compute_crossentropy(ym,Y); else f_xnh = 0.5*mean(sum((Y - ym).^2,2)); end;
        
        gWin(nr,nc) = (f_xph-f_xnh)/(2*h);
        
    end
    
end

% gbin
gbin = zeros(nl(2),1);
for nc = 1
    for nr = 1:nl(2)
        Wp = Gbi;
        Wp(nr,nc) = Wp(nr,nc) + h;
        [hcm,hcmba1,hcmba2,ah,alpha,c,sm,ym] = fp_cpu(X,GWi,Wp,GWba1,Gbba1,GWba2,Gbba2,GWa,Gba,GWh,Gbh,GWo,Gbo,f);
        if strcmp(cfn,'nll'); f_xph = compute_crossentropy(ym,Y); else f_xph = 0.5*mean(sum((Y - ym).^2,2)); end;
        
        Wn = Gbi;
        Wn(nr,nc) = Wn(nr,nc) - h;
        [hcm,hcmba1,hcmba2,ah,alpha,c,sm,ym] = fp_cpu(X,GWi,Wn,GWba1,Gbba1,GWba2,Gbba2,GWa,Gba,GWh,Gbh,GWo,Gbo,f);
        if strcmp(cfn,'nll'); f_xnh = compute_crossentropy(ym,Y); else f_xnh = 0.5*mean(sum((Y - ym).^2,2)); end;
        
        gbin(nr,nc) = (f_xph-f_xnh)/(2*h);
        
    end
    
end

% gWba1n
gWba1n = zeros(nl(3),nl(2));
for nc = 1:nl(2)
    for nr = 1:nl(3)
        Wp = GWba1;
        Wp(nr,nc) = Wp(nr,nc) + h;
        [hcm,hcmba1,hcmba2,ah,alpha,c,sm,ym] = fp_cpu(X,GWi,Gbi,Wp,Gbba1,GWba2,Gbba2,GWa,Gba,GWh,Gbh,GWo,Gbo,f);
        if strcmp(cfn,'nll'); f_xph = compute_crossentropy(ym,Y); else f_xph = 0.5*mean(sum((Y - ym).^2,2)); end;
        
        Wn = GWba1;
        Wn(nr,nc) = Wn(nr,nc) - h;
        [hcm,hcmba1,hcmba2,ah,alpha,c,sm,ym] = fp_cpu(X,GWi,Gbi,Wn,Gbba1,GWba2,Gbba2,GWa,Gba,GWh,Gbh,GWo,Gbo,f);
        if strcmp(cfn,'nll'); f_xnh = compute_crossentropy(ym,Y); else f_xnh = 0.5*mean(sum((Y - ym).^2,2)); end;
        
        gWba1n(nr,nc) = (f_xph-f_xnh)/(2*h);
        
    end
    
end

% gbba1n
gbba1n = zeros(nl(3),1);
for nc = 1
    for nr = 1:nl(3)
        Wp = Gbba1;
        Wp(nr,nc) = Wp(nr,nc) + h;
        [hcm,hcmba1,hcmba2,ah,alpha,c,sm,ym] = fp_cpu(X,GWi,Gbi,GWba1,Wp,GWba2,Gbba2,GWa,Gba,GWh,Gbh,GWo,Gbo,f);
        if strcmp(cfn,'nll'); f_xph = compute_crossentropy(ym,Y); else f_xph = 0.5*mean(sum((Y - ym).^2,2)); end;
        
        Wn = Gbba1;
        Wn(nr,nc) = Wn(nr,nc) - h;
        [hcm,hcmba1,hcmba2,ah,alpha,c,sm,ym] = fp_cpu(X,GWi,Gbi,GWba1,Wn,GWba2,Gbba2,GWa,Gba,GWh,Gbh,GWo,Gbo,f);
        if strcmp(cfn,'nll'); f_xnh = compute_crossentropy(ym,Y); else f_xnh = 0.5*mean(sum((Y - ym).^2,2)); end;
        
        gbba1n(nr,nc) = (f_xph-f_xnh)/(2*h);
        
    end
    
end

% gWba2n
gWba2n = zeros(nl(4),nl(3));
for nc = 1:nl(4)
    for nr = 1:nl(3)
        Wp = GWba2;
        Wp(nr,nc) = Wp(nr,nc) + h;
        [hcm,hcmba1,hcmba2,ah,alpha,c,sm,ym] = fp_cpu(X,GWi,Gbi,GWba1,Gbba1,Wp,Gbba2,GWa,Gba,GWh,Gbh,GWo,Gbo,f);
        if strcmp(cfn,'nll'); f_xph = compute_crossentropy(ym,Y); else f_xph = 0.5*mean(sum((Y - ym).^2,2)); end;
        
        Wn = GWba2;
        Wn(nr,nc) = Wn(nr,nc) - h;
        [hcm,hcmba1,hcmba2,ah,alpha,c,sm,ym] = fp_cpu(X,GWi,Gbi,GWba1,Gbba1,Wn,Gbba2,GWa,Gba,GWh,Gbh,GWo,Gbo,f);
        if strcmp(cfn,'nll'); f_xnh = compute_crossentropy(ym,Y); else f_xnh = 0.5*mean(sum((Y - ym).^2,2)); end;
        
        gWba2n(nr,nc) = (f_xph-f_xnh)/(2*h);
        
    end
    
end

% gbba2n
gbba2n = zeros(nl(4),1);
for nc = 1
    for nr = 1:nl(4)
        Wp = Gbba2;
        Wp(nr,nc) = Wp(nr,nc) + h;
        [hcm,hcmba1,hcmba2,ah,alpha,c,sm,ym] = fp_cpu(X,GWi,Gbi,GWba1,Gbba1,GWba2,Wp,GWa,Gba,GWh,Gbh,GWo,Gbo,f);
        if strcmp(cfn,'nll'); f_xph = compute_crossentropy(ym,Y); else f_xph = 0.5*mean(sum((Y - ym).^2,2)); end;
        
        Wn = Gbba2;
        Wn(nr,nc) = Wn(nr,nc) - h;
        [hcm,hcmba1,hcmba2,ah,alpha,c,sm,ym] = fp_cpu(X,GWi,Gbi,GWba1,Gbba1,GWba2,Wn,GWa,Gba,GWh,Gbh,GWo,Gbo,f);
        if strcmp(cfn,'nll'); f_xnh = compute_crossentropy(ym,Y); else f_xnh = 0.5*mean(sum((Y - ym).^2,2)); end;
        
        gbba2n(nr,nc) = (f_xph-f_xnh)/(2*h);
        
    end
    
end

% gWan
gWan = zeros(1,nl(4));
for nc = 1:nl(4)
    for nr = 1
        Wp = GWa;
        Wp(nr,nc) = Wp(nr,nc) + h;
        [hcm,hcmba1,hcmba2,ah,alpha,c,sm,ym] = fp_cpu(X,GWi,Gbi,GWba1,Gbba1,GWba2,Gbba2,Wp,Gba,GWh,Gbh,GWo,Gbo,f);
        if strcmp(cfn,'nll'); f_xph = compute_crossentropy(ym,Y); else f_xph = 0.5*mean(sum((Y - ym).^2,2)); end;
        
        Wn = GWa;
        Wn(nr,nc) = Wn(nr,nc) - h;
        [hcm,hcmba1,hcmba2,ah,alpha,c,sm,ym] = fp_cpu(X,GWi,Gbi,GWba1,Gbba1,GWba2,Gbba2,Wn,Gba,GWh,Gbh,GWo,Gbo,f);
        if strcmp(cfn,'nll'); f_xnh = compute_crossentropy(ym,Y); else f_xnh = 0.5*mean(sum((Y - ym).^2,2)); end;
        
        gWan(nr,nc) = (f_xph-f_xnh)/(2*h);
        
    end
    
end

% gban
gban = zeros(1);
for nc = 1
    for nr = 1
        Wp = Gba;
        Wp(nr,nc) = Wp(nr,nc) + h;
        [hcm,hcmba1,hcmba2,ah,alpha,c,sm,ym] = fp_cpu(X,GWi,Gbi,GWba1,Gbba1,GWba2,Gbba2,GWa,Wp,GWh,Gbh,GWo,Gbo,f);
        if strcmp(cfn,'nll'); f_xph = compute_crossentropy(ym,Y); else f_xph = 0.5*mean(sum((Y - ym).^2,2)); end;
        
        Wn = Gba;
        Wn(nr,nc) = Wn(nr,nc) - h;
        [hcm,hcmba1,hcmba2,ah,alpha,c,sm,ym] = fp_cpu(X,GWi,Gbi,GWba1,Gbba1,GWba2,Gbba2,GWa,Wn,GWh,Gbh,GWo,Gbo,f);
        if strcmp(cfn,'nll'); f_xnh = compute_crossentropy(ym,Y); else f_xnh = 0.5*mean(sum((Y - ym).^2,2)); end;
        
        gban(nr,nc) = (f_xph-f_xnh)/(2*h);
        
    end
    
end

% gWhn
gWhn = zeros(nl(4),nl(5));
for nc = 1:nl(5)
    for nr = 1:nl(4)
        Wp = GWh;
        Wp(nr,nc) = Wp(nr,nc) + h;
        [hcm,hcmba1,hcmba2,ah,alpha,c,sm,ym] = fp_cpu(X,GWi,Gbi,GWba1,Gbba1,GWba2,Gbba2,GWa,Gba,Wp,Gbh,GWo,Gbo,f);
        if strcmp(cfn,'nll'); f_xph = compute_crossentropy(ym,Y); else f_xph = 0.5*mean(sum((Y - ym).^2,2)); end;
        
        Wn = GWh;
        Wn(nr,nc) = Wn(nr,nc) - h;
        [hcm,hcmba1,hcmba2,ah,alpha,c,sm,ym] = fp_cpu(X,GWi,Gbi,GWba1,Gbba1,GWba2,Gbba2,GWa,Gba,Wn,Gbh,GWo,Gbo,f);
        if strcmp(cfn,'nll'); f_xnh = compute_crossentropy(ym,Y); else f_xnh = 0.5*mean(sum((Y - ym).^2,2)); end;
        
        gWhn(nr,nc) = (f_xph-f_xnh)/(2*h);
        
    end
    
end

% gbhn
gbhn = zeros(nl(5),1);
for nc = 1
    for nr = 1:nl(5)
        Wp = Gbh;
        Wp(nr,nc) = Wp(nr,nc) + h;
        [hcm,hcmba1,hcmba2,ah,alpha,c,sm,ym] = fp_cpu(X,GWi,Gbi,GWba1,Gbba1,GWba2,Gbba2,GWa,Gba,GWh,Wp,GWo,Gbo,f);
        if strcmp(cfn,'nll'); f_xph = compute_crossentropy(ym,Y); else f_xph = 0.5*mean(sum((Y - ym).^2,2)); end;
        
        Wn = Gbh;
        Wn(nr,nc) = Wn(nr,nc) - h;
        [hcm,hcmba1,hcmba2,ah,alpha,c,sm,ym] = fp_cpu(X,GWi,Gbi,GWba1,Gbba1,GWba2,Gbba2,GWa,Gba,GWh,Wn,GWo,Gbo,f);
        if strcmp(cfn,'nll'); f_xnh = compute_crossentropy(ym,Y); else f_xnh = 0.5*mean(sum((Y - ym).^2,2)); end;
        
        gbhn(nr,nc) = (f_xph-f_xnh)/(2*h);
        
    end
    
end



% gWon
gWon = zeros(nl(6),nl(5));
for nc = 1:nl(5)
    for nr = 1:nl(6)
        Wp = GWo;
        Wp(nr,nc) = Wp(nr,nc) + h;
        [hcm,hcmba1,hcmba2,ah,alpha,c,sm,ym] = fp_cpu(X,GWi,Gbi,GWba1,Gbba1,GWba2,Gbba2,GWa,Gba,GWh,Gbh,Wp,Gbo,f);
        if strcmp(cfn,'nll'); f_xph = compute_crossentropy(ym,Y); else f_xph = 0.5*mean(sum((Y - ym).^2,2)); end;
        
        Wn = GWo;
        Wn(nr,nc) = Wn(nr,nc) - h;
        [hcm,hcmba1,hcmba2,ah,alpha,c,sm,ym] = fp_cpu(X,GWi,Gbi,GWba1,Gbba1,GWba2,Gbba2,GWa,Gba,GWh,Gbh,Wn,Gbo,f);
        if strcmp(cfn,'nll'); f_xnh = compute_crossentropy(ym,Y); else f_xnh = 0.5*mean(sum((Y - ym).^2,2)); end;
        
        gWon(nr,nc) = (f_xph-f_xnh)/(2*h);
        
    end
    
end

% gbon
gbon = zeros(nl(6),1);
for nc = 1
    for nr = 1:nl(6)
        Wp = Gbo;
        Wp(nr,nc) = Wp(nr,nc) + h;
        [hcm,hcmba1,hcmba2,ah,alpha,c,sm,ym] = fp_cpu(X,GWi,Gbi,GWba1,Gbba1,GWba2,Gbba2,GWa,Gba,GWh,Gbh,GWo,Wp,f);
        if strcmp(cfn,'nll'); f_xph = compute_crossentropy(ym,Y); else f_xph = 0.5*mean(sum((Y - ym).^2,2)); end;
        
        Wn = Gbo;
        Wn(nr,nc) = Wn(nr,nc) - h;
        [hcm,hcmba1,hcmba2,ah,alpha,c,sm,ym] = fp_cpu(X,GWi,Gbi,GWba1,Gbba1,GWba2,Gbba2,GWa,Gba,GWh,Gbh,GWo,Wn,f);
        if strcmp(cfn,'nll'); f_xnh = compute_crossentropy(ym,Y); else f_xnh = 0.5*mean(sum((Y - ym).^2,2)); end;
        
        gbon(nr,nc) = (f_xph-f_xnh)/(2*h);
        
    end
    
end





