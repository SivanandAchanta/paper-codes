#!/bin/perl

# SPTK commands
$X2X      = '/home/siva/tools/TTS/SPTK/bin/x2x';
$FREQT    = '/home/siva/tools/TTS/SPTK/bin/freqt';
$C2ACR    = '/home/siva/tools/TTS/SPTK/bin/c2acr';
$VOPR     = '/home/siva/tools/TTS/SPTK/bin/vopr';
$MC2B     = '/home/siva/tools/TTS/SPTK/bin/mc2b';
$SOPR     = '/home/siva/tools/TTS/SPTK/bin/sopr';
$B2MC     = '/home/siva/tools/TTS/SPTK/bin/b2mc';
$LSP2LPC  = '/home/siva/tools/TTS/SPTK/bin/lsp2lpc';
$MGC2MGC  = '/home/siva/tools/TTS/SPTK/bin/mgc2mgc';
$MERGE    = '/home/siva/tools/TTS/SPTK/bin/merge';
$BCP      = '/home/siva/tools/TTS/SPTK/bin/bcp';
$LSPCHECK = '/home/siva/tools/TTS/SPTK/bin/lspcheck';
$MGC2SP      = '/home/siva/tools/TTS/SPTK/bin/mgc2sp';
$INTERPOLATE = '/home/siva/tools/TTS/SPTK/bin/interpolate';
$DFS         = '/home/siva/tools/TTS/SPTK/bin/dfs';
$BCUT     = '/home/siva/tools/TTS/SPTK/bin/bcut';
$VSTAT    = '/home/siva/tools/TTS/SPTK/bin/vstat';
$NAN      = '/home/siva/tools/TTS/SPTK/bin/nan';

$bap = "temp.bap";
$base = "temp";
$gendir = ".";

sub shell($) {
   my ($command) = @_;
   my ($exit);

   $exit = system($command);

   if ( $exit / 256 != 0 ) {
      die "Error in $command\n";
   }
}

#shell("echo $BCP");
shell("$BCP +f -l 26 -L 1 -s  0 -e  0 -S 0 $bap | ${DFS} -b 1 -1 | ${INTERPOLATE} -p 2 | ${DFS} -a 1 -1 > $gendir/$base.ap01");
shell("$BCP +f -l 26 -L 1 -s  1 -e  1 -S 0 $bap | ${DFS} -b 1 -1 | ${INTERPOLATE} -p 3 | ${DFS} -a 1 -1 > $gendir/$base.ap02");
shell("$BCP +f -l 26 -L 1 -s  2 -e  2 -S 0 $bap | ${DFS} -b 1 -1 | ${INTERPOLATE} -p 4 | ${DFS} -a 1 -1 > $gendir/$base.ap03");
shell("$BCP +f -l 26 -L 1 -s  3 -e  3 -S 0 $bap | ${DFS} -b 1 -1 | ${INTERPOLATE} -p 4 | ${DFS} -a 1 -1 > $gendir/$base.ap04");
shell("$BCP +f -l 26 -L 1 -s  4 -e  4 -S 0 $bap | ${DFS} -b 1 -1 | ${INTERPOLATE} -p 4 | ${DFS} -a 1 -1 > $gendir/$base.ap05");
shell("$BCP +f -l 26 -L 1 -s  5 -e  5 -S 0 $bap | ${DFS} -b 1 -1 | ${INTERPOLATE} -p 5 | ${DFS} -a 1 -1 > $gendir/$base.ap06");
shell("$BCP +f -l 26 -L 1 -s  6 -e  6 -S 0 $bap | ${DFS} -b 1 -1 | ${INTERPOLATE} -p 5 | ${DFS} -a 1 -1 > $gendir/$base.ap07");
shell("$BCP +f -l 26 -L 1 -s  7 -e  7 -S 0 $bap | ${DFS} -b 1 -1 | ${INTERPOLATE} -p 6 | ${DFS} -a 1 -1 > $gendir/$base.ap08");
shell("$BCP +f -l 26 -L 1 -s  8 -e  8 -S 0 $bap | ${DFS} -b 1 -1 | ${INTERPOLATE} -p 6 | ${DFS} -a 1 -1 > $gendir/$base.ap09");
shell("$BCP +f -l 26 -L 1 -s  9 -e  9 -S 0 $bap | ${DFS} -b 1 -1 | ${INTERPOLATE} -p 7 | ${DFS} -a 1 -1 > $gendir/$base.ap10");
shell("$BCP +f -l 26 -L 1 -s 10 -e 10 -S 0 $bap | ${DFS} -b 1 -1 | ${INTERPOLATE} -p 8 | ${DFS} -a 1 -1 > $gendir/$base.ap11");
shell("$BCP +f -l 26 -L 1 -s 11 -e 11 -S 0 $bap | ${DFS} -b 1 -1 | ${INTERPOLATE} -p 9 | ${DFS} -a 1 -1 > $gendir/$base.ap12");
shell("$BCP +f -l 26 -L 1 -s 12 -e 12 -S 0 $bap | ${DFS} -b 1 -1 | ${INTERPOLATE} -p  10 | ${DFS} -a 1 -1 > $gendir/$base.ap13");
shell("$BCP +f -l 26 -L 1 -s 13 -e 13 -S 0 $bap | ${DFS} -b 1 -1 | ${INTERPOLATE} -p  12 | ${DFS} -a 1 -1 > $gendir/$base.ap14");
shell("$BCP +f -l 26 -L 1 -s 14 -e 14 -S 0 $bap | ${DFS} -b 1 -1 | ${INTERPOLATE} -p  14 | ${DFS} -a 1 -1 > $gendir/$base.ap15");
shell("$BCP +f -l 26 -L 1 -s 15 -e 15 -S 0 $bap | ${DFS} -b 1 -1 | ${INTERPOLATE} -p  16 | ${DFS} -a 1 -1 > $gendir/$base.ap16");
shell("$BCP +f -l 26 -L 1 -s 16 -e 16 -S 0 $bap | ${DFS} -b 1 -1 | ${INTERPOLATE} -p  19 | ${DFS} -a 1 -1 > $gendir/$base.ap17");
shell("$BCP +f -l 26 -L 1 -s 17 -e 17 -S 0 $bap | ${DFS} -b 1 -1 | ${INTERPOLATE} -p  24 | ${DFS} -a 1 -1 > $gendir/$base.ap18");
shell("$BCP +f -l 26 -L 1 -s 18 -e 18 -S 0 $bap | ${DFS} -b 1 -1 | ${INTERPOLATE} -p  29 | ${DFS} -a 1 -1 > $gendir/$base.ap19");
shell("$BCP +f -l 26 -L 1 -s 19 -e 19 -S 0 $bap | ${DFS} -b 1 -1 | ${INTERPOLATE} -p  37 | ${DFS} -a 1 -1 > $gendir/$base.ap20");
shell("$BCP +f -l 26 -L 1 -s 20 -e 20 -S 0 $bap | ${DFS} -b 1 -1 | ${INTERPOLATE} -p  49 | ${DFS} -a 1 -1 > $gendir/$base.ap21");
shell("$BCP +f -l 26 -L 1 -s 21 -e 21 -S 0 $bap | ${DFS} -b 1 -1 | ${INTERPOLATE} -p  68 | ${DFS} -a 1 -1 > $gendir/$base.ap22");
shell("$BCP +f -l 26 -L 1 -s 22 -e 22 -S 0 $bap | ${DFS} -b 1 -1 | ${INTERPOLATE} -p  99 | ${DFS} -a 1 -1 > $gendir/$base.ap23");
shell("$BCP +f -l 26 -L 1 -s 23 -e 23 -S 0 $bap | ${DFS} -b 1 -1 | ${INTERPOLATE} -p 160 | ${DFS} -a 1 -1 > $gendir/$base.ap24");
shell("$BCP +f -l 26 -L 1 -s 24 -e 24 -S 0 $bap | ${DFS} -b 1 -1 | ${INTERPOLATE} -p 300 | ${DFS} -a 1 -1 > $gendir/$base.ap25");
shell("$BCP +f -l 26 -L 1 -s 25 -e 25 -S 0 $bap | ${DFS} -b 1 -1 | ${INTERPOLATE} -p 125 | ${DFS} -a 1 -1 > $gendir/$base.ap26");

$line = "cat $gendir/$base.ap01 | ";
$line .= "$MERGE -s 2 -l 2 -L 3 $gendir/$base.ap02 | ";
$line .= "$MERGE -s 5 -l 5 -L 4 $gendir/$base.ap03 | ";
$line .= "$MERGE -s 9 -l 9 -L 4 $gendir/$base.ap04 | ";
$line .= "$MERGE -s  13 -l  13 -L 4 $gendir/$base.ap05 | ";
$line .= "$MERGE -s  17 -l  17 -L 5 $gendir/$base.ap06 | ";
$line .= "$MERGE -s  22 -l  22 -L 5 $gendir/$base.ap07 | ";
$line .= "$MERGE -s  27 -l  27 -L 6 $gendir/$base.ap08 | ";
$line .= "$MERGE -s  33 -l  33 -L 6 $gendir/$base.ap09 | ";
$line .= "$MERGE -s  39 -l  39 -L 7 $gendir/$base.ap10 | ";
$line .= "$MERGE -s  46 -l  46 -L 8 $gendir/$base.ap11 | ";
$line .= "$MERGE -s  54 -l  54 -L 9 $gendir/$base.ap12 | ";
$line .= "$MERGE -s  63 -l  63 -L  10 $gendir/$base.ap13 | ";
$line .= "$MERGE -s  73 -l  73 -L  12 $gendir/$base.ap14 | ";
$line .= "$MERGE -s  85 -l  85 -L  14 $gendir/$base.ap15 | ";
$line .= "$MERGE -s  99 -l  99 -L  16 $gendir/$base.ap16 | ";
$line .= "$MERGE -s 115 -l 115 -L  19 $gendir/$base.ap17 | ";
$line .= "$MERGE -s 134 -l 134 -L  24 $gendir/$base.ap18 | ";
$line .= "$MERGE -s 158 -l 158 -L  29 $gendir/$base.ap19 | ";
$line .= "$MERGE -s 187 -l 187 -L  37 $gendir/$base.ap20 | ";
$line .= "$MERGE -s 224 -l 224 -L  49 $gendir/$base.ap21 | ";
$line .= "$MERGE -s 273 -l 273 -L  68 $gendir/$base.ap22 | ";
$line .= "$MERGE -s 341 -l 341 -L  99 $gendir/$base.ap23 | ";
$line .= "$MERGE -s 440 -l 440 -L 160 $gendir/$base.ap24 | ";
$line .= "$MERGE -s 600 -l 600 -L 300 $gendir/$base.ap25 | ";
$line .= "$MERGE -s 900 -l 900 -L 125 $gendir/$base.ap26 > $gendir/$base.ap";
#shell("echo $line");
shell($line);

