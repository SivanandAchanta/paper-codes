system(['ls', ' ', wavpath, ' ', '>', ' ','temptrnlist.txt'])
trainlistpath = 'temptrnlist.txt';

frshift_s = round(frshift_ms*(fs/1000)) ; % frame shift in samples
prm.F0frameUpdateInterval = frshift_ms;
prm.spectralUpdateInterval = frshift_ms;
prm.F0searchUpperBound = UPPERF0;
prm.F0searchLowerBound = LOWERF0;

nbands_ap = 50;
bw_band_ap = fs/2/nbands_ap;
bef_ap = bw_band_ap:bw_band_ap:(fs/2 - bw_band_ap);
bcf_ap = bw_band_ap/2:bw_band_ap:(fs/2);
nbef_ap = round((bef_ap/fs)*nfft + 1);
nbcf_ap = round((bcf_ap/fs)*nfft + 1);
x_ap = [1 nbcf_ap nfftby2];

files = dir(wavpath);

%fid = fopen(trainlistpath);

for i = 972:length(files)

        [filename,tok] = strtok(files(i).name,'.');  
        filename
        [y,fswav] = wavread(strcat(wavpath,filename,'.wav'));
        
        % resample the input wav according to the desired sampling frequency
        y = resample(y,fs,fswav);
        
        
        %%%%%%%%%%%%%%%%%%%%% STRAIGHT AbS %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        
        % STRAIGHT Analysis by Synthesis
        [f0raw, st_ap] = exstraightsource(y,fs,prm);
        [st_sgram] = exstraightspec(y, f0raw, fs, prm);
        
        % MSASB modification applied to STRAIGHT Spectrum
        nframe = min([size(st_sgram,2) length(f0raw) size(st_ap,2)]);
        f0raw = f0raw(1:nframe);
        st_ap = st_ap(:,1:nframe);
        st_sgram = st_sgram(:,1:nframe);
        apebi = zeros(nbands_ap+2,nframe);
        
        for ii = 1:size(st_sgram,2)
            
            % compute the maximal spectral amplitudes in sub bands
            apebi(1,ii) = st_ap(1,ii);
            apebi(2,ii) = max(st_ap(2:nbef_ap(1),ii));
            for k = 2:nbands_ap-1
                apebi(k+1,ii) = max(st_ap(nbef_ap(k-1) + 1:nbef_ap(k),ii));
            end
            apebi(k+2,ii) = max(st_ap(nbef_ap(k) + 1:end - 1,ii));
            apebi(nbands_ap + 2,ii) = st_ap(end,ii);
            
        end
        
        f0raw = f0raw';
        vuv = zeros(size(f0raw));
        vuv(f0raw~=0) = 1;
        
        % compute log-spectrum
        lsgram = 20*log10(st_sgram + 1e-6);
        
        % compute deltas for aperidoicity
        d = deltas_hts_dellis(apebi, w1);
        dd = deltas_hts_dellis(apebi, w2);
        dapebi = [apebi;d;dd]; % 3dxN matrix
        
        dlmwrite(strcat(specdir,filename,'.txt'),lsgram','delimiter',' ');
        dlmwrite(strcat(f0dir,filename,'.txt'),[f0raw(:) vuv(:)],'delimiter',' ');
        %         dlmwrite(strcat(apdir,filename,'.txt'),dap','delimiter',' ');
        dlmwrite(strcat(msasbapdir,filename,'.txt'),dapebi','delimiter',' ');
        

end

%fclose(fid);
