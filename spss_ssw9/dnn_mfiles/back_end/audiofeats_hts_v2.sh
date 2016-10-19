#!/bin/bash

# SPTK commands
X2X     = /home/siva/tools/TTS/SPTK/bin/x2x
MGCEP   = /home/siva/tools/TTS/SPTK/bin/mcep
LPC2LSP = /home/siva/tools/TTS/SPTK/bin/lpc2lsp
BCP     = /home/siva/tools/TTS/SPTK/bin/bcp
AVERAGE = /home/siva/tools/TTS/SPTK/bin/average
MERGE   = /home/siva/tools/TTS/SPTK/bin/merge
VSTAT   = /home/siva/tools/TTS/SPTK/bin/vstat
NAN     = /home/siva/tools/TTS/SPTK/bin/nan
MINMAX  = /home/siva/tools/TTS/SPTK/bin/minmax

# MATLAB and STRAIGHT
MATLAB   = /home/siva/Matlab/R2012a/bin//matlab -nodisplay -nosplash -nojvm
STRAIGHT = /media/newHDD/hts_voices/STRAIGHTV40

# SOX to convert raw audio to RIFF wav
SOX       = /usr/bin/sox
SOXOPTION = 2

# speech analysis conditions
SAMPFREQ    = 48000   # Sampling frequency (48kHz)
FRAMESHIFT  = 240 # Frame shift in point (240 = 48000 * 0.005)
FREQWARP    = 0.55   # frequency warping factor
GAMMA       = 0      # pole/zero weight for mel-generalized cepstral (MGC) analysis
MGCORDER    = 49   # order of MGC analysis
LNGAIN      = 1     # use logarithmic gain rather than linear gain
LOWERF0     = 60    # lower limit for f0 extraction (Hz)
UPPERF0     = 560    # upper limit for f0 extraction (Hz)

# windows for calculating delta features
MGCWIN      = win/mgc.win
LF0WIN      = win/lf0.win
BAPWIN      = win/bap.win
NMGCWIN     = 3
NLF0WIN     = 3
NBAPWIN     = 3

WAVFILELIST="$1"
cat $WAVFILELIST |
awk '{print $1}' |
while read i
do   
   fname=`basename $i .wav`
   echo $fname wav2raw
   ch_wave -c 0 -F 32000 -otype raw $2/$i | x2x +sf | interpolate -p 2 -d | ds -s 43 | x2x +fs > $3/$fname.raw
done

# Extracting f0, aperiodicity, and spectra using STRAIGHT
mkdir -p wav sp ap f0
frameshift=`expr 1000 \* $(FRAMESHIFT) / $(SAMPFREQ)`; \
echo "path(path,'$(STRAIGHT)');"                      >  scripts/extract.m; \
echo "prm.F0frameUpdateInterval=$${frameshift};"      >> scripts/extract.m; \
echo "prm.F0searchUpperBound=$(UPPERF0);"             >> scripts/extract.m; \
echo "prm.F0searchLowerBound=$(LOWERF0);"             >> scripts/extract.m; \
echo "prm.spectralUpdateInterval=$${frameshift};"     >> scripts/extract.m; \
echo ""                                               >> scripts/extract.m
for raw in raw/*.raw; do \
	base=`basename $${raw} .raw`; \
	min=`$(X2X) +sf $${raw} | $(MINMAX) | $(X2X) +fa | head -n 1`; \
	max=`$(X2X) +sf $${raw} | $(MINMAX) | $(X2X) +fa | tail -n 1`; \
	if [ -s $${raw} -a $${min} -gt -32768 -a $${max} -lt 32767 ]; then \
		wav=wav/$${base}.wav; \
		f0=f0/$${base}.f0; \
		ap=ap/$${base}.ap; \
		sp=sp/$${base}.sp; \
		echo -n "Converting $${raw} to $${wav} and generating MATLAB script..."; \
		$(SOX) -c 1 -s -$(SOXOPTION) -t raw -r $(SAMPFREQ) $${raw} -c 1 -s -$(SOXOPTION) -t wav -r $(SAMPFREQ) $${wav}; \
		echo "fprintf(1,'Processing $${wav}\n');"     >> scripts/extract.m; \
		echo "[x,fs]=wavread('$${wav}');"             >> scripts/extract.m; \
		echo "[f0, ap] = exstraightsource(x,fs,prm);" >> scripts/extract.m; \
		echo "[sp] = exstraightspec(x, f0, fs, prm);" >> scripts/extract.m; \
		echo "ap = ap';"                              >> scripts/extract.m; \
		echo "sp = sp';"                              >> scripts/extract.m; \
		echo "save '$${f0}' f0 -ascii;"               >> scripts/extract.m; \
		echo "save '$${ap}' ap -ascii;"               >> scripts/extract.m; \
		echo "save '$${sp}' sp -ascii;"               >> scripts/extract.m; \
		echo ""                                       >> scripts/extract.m; \
		echo "done"; \
	fi; \
done; \
echo "quit;"                                          >> scripts/extract.m
$(MATLAB) < scripts/extract.m
rm -f scripts/extract.m


# Extracting MGC or MGC-LSP coefficients from STRAIGHT spectra
mkdir -p mgc
for sp in sp/*.sp; do \
	base=`basename $${sp} .sp`; \
	if [ -s $${sp} ]; then \
		if [ $(GAMMA) -eq 0 ]; then \
			echo "Extracting MGC coefficients from $${sp}"; \
			$(X2X) +af $${sp} | \
			$(MGCEP) -a $(FREQWARP) -m $(MGCORDER) -l 2048 -e 1.0E-08 -j 0 -f 0.0 -q 3 > mgc/$${base}.mgc; \
		else \
			echo "Extracting MGC-LSP coefficients from $${sp}"; \
			SAMPKHZ=`expr $(SAMPFREQ) / 1000`; \
			if [ $(LNGAIN) -eq 1 ]; then \
				GAINOPT="-l"; \
			fi; \
			$(X2X) +af $${sp} | \
			$(MGCEP) -a $(FREQWARP) -c $(GAMMA) -m $(MGCORDER) -l 2048 -e 1.0E-08 -j 0 -f 0.0 -q 3 -o 4 | \
			$(LPC2LSP) -m $(MGCORDER) -s $${SAMPKHZ} $${GAINOPT} -n 2048 -p 8 -d 1.0E-08 > mgc/$${base}.mgc; \
		fi; \
		if [ -n "`$(NAN) mgc/$${base}.mgc`" ]; then \
			echo " Failed to extract MGC coefficients from $${sp}"; \
			rm -f mgc/$${base}.mgc; \
		fi; \
	fi; \
done
rm -f tmp

# Converting f0 to log f0
mkdir -p lf0
for f0 in f0/*.f0; do \
	base=`basename $${f0} .f0`; \
	if [ -s $${f0} ]; then \
		echo "Converting F0 file $${f0} to log F0 file lf0/$${base}.lf0"; \
		$(X2X) +af $${f0} > tmp; \
		$(PERL) scripts/freq2lfreq.pl tmp > lf0/$${base}.lf0; \
		if [ -n "`$(NAN) lf0/$${base}.lf0`" ]; then \
			echo " Failed to extract $${f0}"; \
			rm -f lf0/$${base}.lf0; \
		fi; \
	fi; \
done
rm -f tmp


# Converting aperiodicity to band aperiodicity
mkdir -p bap
for ap in ap/*.ap; do \
	base=`basename $${ap} .ap`; \
	if [ -s $${ap} ]; then \
		echo "Converting aperiodicity file $${ap} to band aperiodicity file bap/$${base}.bap"; \
		$(X2X) +af $${ap} | $(BCP) +f -n 1024 -L   2 -s   0 -e    1 -S 0 | $(AVERAGE) -l   2 > bap01; \
		$(X2X) +af $${ap} | $(BCP) +f -n 1024 -L   3 -s   2 -e    4 -S 0 | $(AVERAGE) -l   3 > bap02; \
		$(X2X) +af $${ap} | $(BCP) +f -n 1024 -L   4 -s   5 -e    8 -S 0 | $(AVERAGE) -l   4 > bap03; \
		$(X2X) +af $${ap} | $(BCP) +f -n 1024 -L   4 -s   9 -e   12 -S 0 | $(AVERAGE) -l   4 > bap04; \
		$(X2X) +af $${ap} | $(BCP) +f -n 1024 -L   4 -s  13 -e   16 -S 0 | $(AVERAGE) -l   4 > bap05; \
		$(X2X) +af $${ap} | $(BCP) +f -n 1024 -L   5 -s  17 -e   21 -S 0 | $(AVERAGE) -l   5 > bap06; \
		$(X2X) +af $${ap} | $(BCP) +f -n 1024 -L   5 -s  22 -e   26 -S 0 | $(AVERAGE) -l   5 > bap07; \
		$(X2X) +af $${ap} | $(BCP) +f -n 1024 -L   6 -s  27 -e   32 -S 0 | $(AVERAGE) -l   6 > bap08; \
		$(X2X) +af $${ap} | $(BCP) +f -n 1024 -L   6 -s  33 -e   38 -S 0 | $(AVERAGE) -l   6 > bap09; \
		$(X2X) +af $${ap} | $(BCP) +f -n 1024 -L   7 -s  39 -e   45 -S 0 | $(AVERAGE) -l   7 > bap10; \
		$(X2X) +af $${ap} | $(BCP) +f -n 1024 -L   8 -s  46 -e   53 -S 0 | $(AVERAGE) -l   8 > bap11; \
		$(X2X) +af $${ap} | $(BCP) +f -n 1024 -L   9 -s  54 -e   62 -S 0 | $(AVERAGE) -l   9 > bap12; \
		$(X2X) +af $${ap} | $(BCP) +f -n 1024 -L  10 -s  63 -e   72 -S 0 | $(AVERAGE) -l  10 > bap13; \
		$(X2X) +af $${ap} | $(BCP) +f -n 1024 -L  12 -s  73 -e   84 -S 0 | $(AVERAGE) -l  12 > bap14; \
		$(X2X) +af $${ap} | $(BCP) +f -n 1024 -L  14 -s  85 -e   98 -S 0 | $(AVERAGE) -l  14 > bap15; \
		$(X2X) +af $${ap} | $(BCP) +f -n 1024 -L  16 -s  99 -e  114 -S 0 | $(AVERAGE) -l  16 > bap16; \
		$(X2X) +af $${ap} | $(BCP) +f -n 1024 -L  19 -s 115 -e  133 -S 0 | $(AVERAGE) -l  19 > bap17; \
		$(X2X) +af $${ap} | $(BCP) +f -n 1024 -L  24 -s 134 -e  157 -S 0 | $(AVERAGE) -l  24 > bap18; \
		$(X2X) +af $${ap} | $(BCP) +f -n 1024 -L  29 -s 158 -e  186 -S 0 | $(AVERAGE) -l  29 > bap19; \
		$(X2X) +af $${ap} | $(BCP) +f -n 1024 -L  37 -s 187 -e  223 -S 0 | $(AVERAGE) -l  37 > bap20; \
		$(X2X) +af $${ap} | $(BCP) +f -n 1024 -L  49 -s 224 -e  272 -S 0 | $(AVERAGE) -l  49 > bap21; \
		$(X2X) +af $${ap} | $(BCP) +f -n 1024 -L  68 -s 273 -e  340 -S 0 | $(AVERAGE) -l  68 > bap22; \
		$(X2X) +af $${ap} | $(BCP) +f -n 1024 -L  99 -s 341 -e  439 -S 0 | $(AVERAGE) -l  99 > bap23; \
		$(X2X) +af $${ap} | $(BCP) +f -n 1024 -L 160 -s 440 -e  599 -S 0 | $(AVERAGE) -l 160 > bap24; \
		$(X2X) +af $${ap} | $(BCP) +f -n 1024 -L 300 -s 600 -e  899 -S 0 | $(AVERAGE) -l 300 > bap25; \
		$(X2X) +af $${ap} | $(BCP) +f -n 1024 -L 125 -s 900 -e 1024 -S 0 | $(AVERAGE) -l 125 > bap26; \
		$(MERGE) -s  0 -l  1 -L 1 bap01 bap02 | \
		$(MERGE) -s  2 -l  2 -L 1 bap03 | \
		$(MERGE) -s  3 -l  3 -L 1 bap04 | \
		$(MERGE) -s  4 -l  4 -L 1 bap05 | \
		$(MERGE) -s  5 -l  5 -L 1 bap06 | \
		$(MERGE) -s  6 -l  6 -L 1 bap07 | \
		$(MERGE) -s  7 -l  7 -L 1 bap08 | \
		$(MERGE) -s  8 -l  8 -L 1 bap09 | \
		$(MERGE) -s  9 -l  9 -L 1 bap10 | \
		$(MERGE) -s 10 -l 10 -L 1 bap11 | \
		$(MERGE) -s 11 -l 11 -L 1 bap12 | \
		$(MERGE) -s 12 -l 12 -L 1 bap13 | \
		$(MERGE) -s 13 -l 13 -L 1 bap14 | \
		$(MERGE) -s 14 -l 14 -L 1 bap15 | \
		$(MERGE) -s 15 -l 15 -L 1 bap16 | \
		$(MERGE) -s 16 -l 16 -L 1 bap17 | \
		$(MERGE) -s 17 -l 17 -L 1 bap18 | \
		$(MERGE) -s 18 -l 18 -L 1 bap19 | \
		$(MERGE) -s 19 -l 19 -L 1 bap20 | \
		$(MERGE) -s 20 -l 20 -L 1 bap21 | \
		$(MERGE) -s 21 -l 21 -L 1 bap22 | \
		$(MERGE) -s 22 -l 22 -L 1 bap23 | \
		$(MERGE) -s 23 -l 23 -L 1 bap24 | \
		$(MERGE) -s 24 -l 24 -L 1 bap25 | \
		$(MERGE) -s 25 -l 25 -L 1 bap26 > bap/$${base}.bap; \
		if [ -n "`$(NAN) bap/$${base}.bap`" ]; then \
			echo " Failed to extract aperiodicity coefficients $${ap}"; \
			rm -f bap/$${base}.bap; \
		fi; \
	fi; \
	done
	rm -f bap{01,02,03,04,05,06,07,08,09,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26}


# Composing training data files from mgc and lf0 files
mkdir -p cmp
	for j in 1; do \
	MGCDIM=`expr $(MGCORDER) + 1`; \
	LF0DIM=1; \
	BAPDIM=26; \
	MGCWINDIM=`expr $(NMGCWIN) \* $${MGCDIM}`; \
	LF0WINDIM=`expr $(NLF0WIN) \* $${LF0DIM}`; \
	BAPWINDIM=`expr $(NBAPWIN) \* $${BAPDIM}`; \
	MGCLF0WINDIM=`expr $${MGCWINDIM} + $${LF0WINDIM}`; \
	BYTEPERFRAME=`expr 4 \* \( $${MGCWINDIM} + $${LF0WINDIM} + $${BAPWINDIM} \)`; \
	for mgc in mgc/*.mgc; do \
		base=`basename $${mgc} .mgc`; \
		MGCWINS=""; \
		LF0WINS=""; \
		BAPWINS=""; \
		if [ -s $${mgc} -a -s lf0/$${base}.lf0 -a -s bap/$${base}.bap ]; then \
			i=1; \
			echo "Composing training data for $${base}"; \
			while [ $${i} -le $(NMGCWIN) ]; do \
				eval MGCWINS=\"$${MGCWINS} $(MGCWIN)$${i}\"; \
				i=`expr $${i} + 1`; \
			done; \
			$(PERL) scripts/window.pl $${MGCDIM} $${mgc} $${MGCWINS} > cmp/tmp.mgc; \
			i=1; \
			while [ $${i} -le $(NLF0WIN) ]; do \
				eval LF0WINS=\"$${LF0WINS} $(LF0WIN)$${i}\"; \
				i=`expr $${i} + 1`; \
			done; \
			$(PERL) scripts/window.pl $${LF0DIM} lf0/$${base}.lf0 $${LF0WINS} > cmp/tmp.lf0; \
			i=1; \
			while [ $${i} -le $(NBAPWIN) ]; do \
				eval BAPWINS=\"$${BAPWINS} $(BAPWIN)$${i}\"; \
				i=`expr $${i} + 1`; \
			done; \
			$(PERL) scripts/window.pl $${BAPDIM} bap/$${base}.bap $${BAPWINS} > cmp/tmp.bap; \
			$(MERGE) +f -s 0 -l $${LF0WINDIM} -L $${MGCWINDIM}     cmp/tmp.mgc     < cmp/tmp.lf0 > cmp/tmp.mgc+lf0; \
			$(MERGE) +f -s 0 -l $${BAPWINDIM} -L $${MGCLF0WINDIM}  cmp/tmp.mgc+lf0 < cmp/tmp.bap > cmp/tmp.cmp; \
			$(PERL) scripts/addhtkheader.pl $(SAMPFREQ) $(FRAMESHIFT) $${BYTEPERFRAME} 9 cmp/tmp.cmp > cmp/$${base}.cmp; \
		fi; \
	done; \
done
rm -f cmp/tmp*


