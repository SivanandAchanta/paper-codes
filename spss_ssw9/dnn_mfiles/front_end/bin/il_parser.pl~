#!/usr/local/bin/perl 

$nargs = $#ARGV + 1;

%_pH = (
"a", "(aa|ai|au|a)",
"b", "(bh|b)",
"c", "(ch|c)",
"d", "(dxh|dx|dh|d)",
"e", "(ee|e)",
"g", "(gh|g)",
"h", "(hq|h)",
"i", "(ii|i)",
"j", "(jh|j)",
"k", "(kh|k)",
"l", "(lx|l)",
"m", "(m)",
"n", "(ng|nj|nx|n)",
"o", "(oo|o)",
"p", "(ph|p)",
"q", "(q)",
"r", "(rrq|rq|r)",
"s", "(sx|sh|s)",
"t", "(txh|tx|th|t)",
"u", "(uu|u)",
"w", "(w)",
"y", "(y)"
);

$vList = "a aa i ii u uu rrq rq lx e ee ai o oo au";
$_hn  = "q";
@vls = split(/ /, $vList);
$nV = $#vls + 1;

if ($nargs < 1) {
  print "Usage: perl il_parser.pl <word>\n";
  exit;
}

$eachW = $ARGV[0];
#print "$eachW \n";
@phones = &Phonify($eachW);
#print "PF over \n";
$nv_pr  = &GetNVowels(@phones);
@psyl = &Syllabify(\@phones, $nv_pr);

my $nP = $#phones + 1;
my $nS = $#psyl + 1;

my $oF = "wordpronunciation";
open(fp_out, ">$oF");
print fp_out "(set! wordstruct '( ";

my $sp = 0;

for (my $j = 0; $j < $nS; $j++) {

   $sp = 0;
   my $ls = $psyl[$j];
   my @lp = &Phonify($ls);
   
   print fp_out "((";
   for (my $k = 0; $k < $#lp + 1; $k++) {
       print fp_out "\"$lp[$k]\" ";

       my $cp = $lp[$k];
       if (IsVowel($cp) && ($cp ne "a")) {  #A non-schwa vowel gets a stress pattern of 1
          $sp = 1;
       }
   }

   if ($j == 0 || $nS == 1) {
      $sp = 1;
   }

   print fp_out ") $sp) ";

}
print fp_out "))";
close(fp_out);


sub Phonify() {

   my $word = shift(@_);
   my @lts = split(//, $word);
   my $len = $#lts + 1;
   my $tWrd = $word;
   my $mt;
   my @rL;
   my $nP = 0;

   while ($len >= 1) { 

     $tt = $_pH{$lts[0]};
     #print "0L: $lts[0] - $tt, $tWrd \n";
   
     if ($tWrd =~ s/$tt/$1/) {
       $mt = $1; 
       $rL[$nP] = $mt;
       $nP++;


       my @tl = split(//,$mt);
       my $ul = $#tl + 1;

       $tWrd = "";
       for (my $i = $ul; $i < $len; $i++) {
          $tWrd = $tWrd.$lts[$i];
       }

       @lts = split(//,$tWrd);
       $len = $#lts + 1;
       #print "$mt $tt $tWrd \n";

     }else {
       print "Reporting an error in Phonify..\n";
       print "$tWrd, -- @lts.. \n";
       exit;
     }
   }
   #print "\n";
   return @rL;
}

sub Syllabify() {
  
   my $r_ph = shift;
   my @ph = @{$r_ph};
   my $nv_pr = shift(@_);

   my $nPh = $#ph + 1;
   my @syl;
   my $sI = 0;

   my $nv_vis = 0;

   $syl[$sI]  = $ph[0];
   $cPh = $ph[0];
   if (IsVowel($cPh)) { $nv_vis++; };

   for (my $i = 1; $i < $nPh; $i++) { 

     if ($ph[$i] eq "#") {
       next;
     }
   
     #Word Ending
     if ($i + 1  == $nPh) {
        $syl[$sI] = $syl[$sI].$ph[$i];
	$sI++;
        next;
     } 
     
     if ($ph[$i] eq $_hn) {   #$_hn = n'
       $syl[$sI] = $syl[$sI].$ph[$i]; 
       next;
     }

     $tPh = $ph[$i - 1];
     $cPh = $ph[$i];

     if (IsVowel($cPh)) { $nv_vis++; };

     #V-V combination, ideal cases should not occur
     if ( (IsVowel($tPh)) && (IsVowel($cPh)) ) {  
       $sI++;
       $syl[$sI] = $ph[$i];
       #print "V-V combination: [$tPh-$cPh] at line $_cL\n";
       next;
     } 

     if ( ((IsVowel($tPh)) || ($ph[$i - 1] eq $_hn)) && ($nv_vis < $nv_pr)) {   #$_hn = n'
        $sI++;
        $syl[$sI] = $ph[$i];
     } else {
       $syl[$sI] = $syl[$sI].$ph[$i];
     }

   }

   return @syl;
}

sub GetNVowels() { 
  
   my @list = @_;
   my $len = $#list + 1;
   my $nv_pr1 = 0;

   for (my $i = 0; $i < $len; $i++) { 
      my $lph = $list[$i];

      if (IsVowel($lph)) { 
         $nv_pr1++;
      }
   }
   return $nv_pr1;
}

sub IsVowel() {
   my $tPh = shift(@_);
   my $f = 0;
   for (my $j = 0; $j < $nV; $j++) {
      if ($tPh eq $vls[$j]) { 
         $f = 1;
	 #print "vowel is $tPh \n";
	 last;
      }
   }
   return $f;
}




