#!usr/bin/perl
if(@ARGV != 4)
{
	print "Usage: perl utf82It3.pl <ph-file> <Utf8-file> <It3-file> <language-name>\n";
	exit;
}

my $phFile = $ARGV[0];
my $utf8File = $ARGV[1];
my $it3File = $ARGV[2];
my $language = $ARGV[3];
my %Uni2IT3MAP = ();
my %it3Type = ();

&loadPhoneSet($phFile);

@Unicode_Range = &loadLanguageRanges();

	
&Utf82IT3($utf8File,$language,\@Unicode_Range,\%Uni2IT3MAP,\%it3Type,$it3File);




########################################### Sub Functions #################################################


sub loadLanguageRanges
{
	my @Unicode_Range;

	push(@Unicode_Range,"UNIVERSAL_0-32");
	push(@Unicode_Range,"DIGITS_46-57");
	push(@Unicode_Range,"STOPS_33-33_46-46_59-59_63-63");
#	push(@Unicode_Range,"GARBAGE_34-45_47-47_58-58_60-63_91-96_123-255");
	push(@Unicode_Range,"ENGLISH_64-90_97-122");
	push(@Unicode_Range,"HINDI_2305-2429");
	push(@Unicode_Range,"BENGALI_2432-2554_2404-2405");
	push(@Unicode_Range,"TELUGU_3072-3198");
	push(@Unicode_Range,"TAMIL_2946-3055");
	push(@Unicode_Range,"KANNADA_3202-3311");
	push(@Unicode_Range,"PUNJABI_2561-2676");
	push(@Unicode_Range,"MALAYALAM_3330-3439");
	push(@Unicode_Range,"GUJARATHI_2689-2801");
	return @Unicode_Range;
}


sub loadPhoneSet
{
	my @pHbuf = &readFile($_[0]);
	my $SCHWA;

	foreach my $phone (@pHbuf)
	{
		my ($key,$value,$tag) = split(/\s+/,$phone);
		$Uni2IT3MAP{$key} = $value;
		$it3Type{$value} = $tag;
		$SCHWA = $value if($tag eq "SCHWA");
	}
	
	foreach my $phone (@pHbuf)
	{
		my ($key,$value,$tag) = split(/\s+/,$phone);
		$Uni2IT3MAP{$key} .= " $SCHWA" if($it3Type{$value} eq "CON");
	#	print $Uni2IT3MAP{$key} .= " $SCHWA";
	}

}


sub Utf82IT3
{
	my ($t,$h,@buffer,@list,@lines);
	my $file_path = $_[0];
	my $it3_file=`basename $file_path .txt`;
	
	chomp($it3_file);

	my $language = $_[1];
	my @Unicode_Range = @{$_[2]};

	open(OUT,">$_[5]");
	$language =~ tr/a-z/A-Z/;
	chomp($file_path);
	open(FILE, "<$file_path");
	binmode( FILE );
	@buffer = <FILE>;
	close( FILE );
	my $endln="\n";
	foreach my $line (@buffer)
	{	
		my @tempsent;
        	$line =~ s/\. */\.$endln/g;

		my @words = split(/\s+/,$line);
		
		#print OUT "$line";
		my $engl = 0;
		my $otherl = 0;

		foreach my $word (@words)
		{
			my @utf8char;
			my $initial = 0;
			my @test;
			my $tempword;
			my $other = 0;
			my $eng = 0;
			foreach (split(//, $word)) 
			{ 
				push(@utf8char,&string2bin($_));
			}
			my $nutf8char = $#utf8char + 1;
			$h += $nutf8char;
			for (my $loop=0; $loop<$nutf8char;)
			{
				$t = 0;
		        	my $dec_input = &hex2dec($utf8char[$loop]);
		        	if ((my $value = $dec_input & 128) == 0 )
				{
			        	$t = $t | $dec_input;
			        	$loop++;
					$eng = 1;
				}
	
			        elsif (($value = $dec_input & 224) == 192)
        			{	
					$eng = 1;
				        $t = $t | ($dec_input & 31);
				        $t = $t << 6;
				        $loop++;
			
		        		$t = $t | ($dec_input & 63);
				        $loop++;
        			}		
	        		elsif (($value = $dec_input & 240) == 224)
	        		{
					
					$other = 1;
        		        	$t = $t | ($dec_input & 15);
	        		        $t = $t << 6;
        	        		$loop++;
	
	        	        	$dec_input = &hex2dec($utf8char[$loop]);
        		        	$t = $t | ($dec_input & 63);
        			        $t = $t<< 6;
                			$loop++;
		
			                $dec_input = &hex2dec($utf8char[$loop]);
        			        $t = $t | ($dec_input & 63);
                			$loop++;
		        	}		
        			elsif (($value = $dec_input & 248) == 240)
		        	{
					$other = 1;
				
	        		        $t = $t + ($dec_input & 7);
        	        		$t = $t << 6;
		        	        $loop++;
        		        	$dec_input = &hex2dec($utf8char[$loop]);
	                		$t = $t + ($dec_input & 63);
			                $t = $t<< 6;
        		        	$loop++;

        	        		$dec_input = &hex2dec($utf8char[$loop]);
		        	        $t = $t + ($dec_input & 63);
        		        	$t = $t << 6;
	        	        	$loop++;
		
	        		        $dec_input = &hex2dec($utf8char[$loop]);
        	        		$t = $t + ($dec_input & 63);
			                $loop++;
        			}

				elsif (($value = $dec_input & 252) == 248)
				{
					$other = 1;
        				$t = $t + ($dec_input & 3);
	                		$t = $t << 6;
	        	        	$loop++;

	        		        $dec_input = &hex2dec($utf8char[$loop]);
        	        		$t = $t + ($dec_input & 63);
	        	        	$t = $t<< 6;
		        	        $loop++;
	
        		        	$dec_input = &hex2dec($utf8char[$loop]);
	        		        $t = $t + ($dec_input & 63);
	        	        	$t = $t << 6;
		                	$loop++;
	
					$dec_input = &hex2dec($utf8char[$loop]);
                			$t = $t + ($dec_input & 63);
	                		$t = $t << 6;
		        	        $loop++;
	
        		        	$dec_input = &hex2dec($utf8char[$loop]);
	        		        $t = $t + ($dec_input & 63);
        	        		$loop++;

	        		}
			        elsif (($value = $dec_input &  254) ==  252)
        			{
					$other = 1;
                			$t = $t + ($dec_input & 63);
		        	        $t = $t << 6;
        		        	$loop++;
	
        	        		$dec_input = &hex2dec($utf8char[$loop]);
	                		$t = $t + ($dec_input & 63);
	        	        	$t = $t<< 6;
			                $loop++;
	
        			        $dec_input = &hex2dec($utf8char[$loop]);
	                		$t = $t + ($dec_input & 63);
	        	        	$t = $t << 6;
			                $loop++;
        			        $dec_input = &hex2dec($utf8char[$loop]);
		                	$t = $t + ($dec_input & 63);
		        	        $t = $t << 6;
			                $loop++;
	
        			        $dec_input = &hex2dec($utf8char[$loop]);
		                	$t = $t + ($dec_input & 63);
	        		        $t = $t << 6;
        	        		$loop++;

		        	        $dec_input = &hex2dec($utf8char[$loop]);
	                		$t = $t + ($dec_input & 63);
	        		        $loop++;
	        		}
				else
				{
					$loop++;
				}
				my $result = &check_language($t,\@Unicode_Range);
				print "$result\n";
			#	next if(($result !~ /$language|DIGITS|ENGLISH/));
				print "hex2dec: $t\n";
				my $hex = &dec2hex($t);
				print "hex: $hex\n";
				if(exists ${$_[3]}{$hex})
				{
					$tempword .= " ".${$_[3]}{$hex};
				}
				else
				{
					$tempword .= " ".&hex2string($hex);					
				}
			}
			$tempword =~ s/NULL//g;
			$tempword =~ s/^\s*//g;
			my @temp = split(/\s+/,$tempword);
			if($eng == 1 && $other == 0)
			{
				$engl = 1;
			}
			else #To remove the Halanths, Schwa and rearranging the Nuktha etc...
 			{
				$otherl = 1;
				&write2speak(\@temp,\%{$_[4]});
			}
			$rv = join("",@temp);
	#		print "write2speak: $rv\n";
			$rv =~ s/v11//g;
			$rv =~ s/v2//g;
			$rv =~ s/v3//g;
			$rv =~ s/v1//g;
#			push(@tempsent,join("",@temp));
			push(@tempsent,$rv);
		}
		if($otherl == 1)
		{
			print OUT join(" ",@tempsent)."\n";
		}
	} # for each sentence
#	print OUT "1:\n";
	close( OUT );
}


sub write2speak
{
	my @ids = @{$_[0]};
	my $len = scalar(@ids);
	for(my $i=0;$i<@{$_[0]};$i++)
	{
	
		$val1 = ${$_[1]}{${$_[0]}[$i]};
		$val2 = ${$_[1]}{${$_[0]}[$i+1]};
		$lastV = $#{$_[0]};
		$last = ${$_[0]}[$#{$_[0]}];
		$last_type = ${$_[1]}{$last};
	#	print "last ele type: ${$_[0]}[$lastV],$lastV,$last_type\n";
		$cont = $val1." ".$val2;
		#print "comb: $cont\n";
		if(${$_[1]}{${$_[0]}[$i]} eq "STRESS")
		{
			${$_[0]}[$i] = ${$_[0]}[$i+1];
		}

		if(${$_[1]}{${$_[0]}[$i]} eq "SCHWA")
		{
			if(${$_[1]}{${$_[0]}[$i + 1]} eq "HLT")
			{
				if(${$_[1]}{${$_[0]}[$i + 2]} eq "HLT")
				{
					&erase(\@{$_[0]},$i,3);
				}
				elsif($i ne 0)
				{
					&erase(\@{$_[0]},$i,2);
				}
			}
			elsif(${$_[1]}{${$_[0]}[$i + 1]} eq "VOW")
			{
				&erase(\@{$_[0]},$i,1);
			}
			elsif(${$_[1]}{${$_[0]}[$i + 1]} eq "NUK" && ${$_[1]}{${$_[0]}[$i + 2]} eq "HLT")
			{
				&erase(\@{$_[0]},$i,1);
				&erase(\@{$_[0]},$i + 1,1);
			}
			elsif(${$_[1]}{${$_[0]}[$i + 1]} eq "NUK" && ${$_[1]}{${$_[0]}[$i + 2]} eq "VOW")
			{
				&erase(\@{$_[0]},$i,1);
			}
			if( (${$_[1]}{${$_[0]}[$i - 1]} eq "VOW" || ${$_[1]}{${$_[0]}[$i - 1]} eq "SCHWA") && ${$_[1]}{${$_[0]}[$i]} eq "NUK" && ${$_[1]}{${$_[0]}[$i + 1]} eq "CON")
			{
				my $g = ${$_[0]}[$i];
				${$_[0]}[$i] = ${$_[0]}[$i - 1];
				${$_[0]}[$i - 1] = $g;
			}
			if( (${$_[1]}{${$_[0]}[$i]} eq "VOW") && ${$_[1]}{${$_[0]}[$i + 1]} eq "HLT")
			{
				&erase(\@{$_[0]},$i + 1,1);
			}
			if( (${$_[1]}{${$_[0]}[$i]} eq "HLT") && ${$_[1]}{${$_[0]}[$i + 1]} eq "HLT")
			{
				&erase(\@{$_[0]},$i,2);
			}

		}
		if(($cont eq "CON CON") || ($cont eq "CON SYM"))
		{
			$nxt = ${$_[0]}[$i+1];
			$prev = "a";
			splice(@{$_[0]},$i+1,1,$prev,$nxt);
			$i++;
		}
		elsif(${$_[0]}[$i] eq ${$_[0]}[$lastV] && $last_type eq "CON" && $lastV eq $i)
		{
			$tt = ${$_[0]}[$lastV];
#			$nxt = ${$_[0]}[$i+1];
#			print "last:@{$_[0]} and $tt and ${$_[0]}[$i+1]\n";
			$prev = "a";
			splice(@{$_[0]},$i+1,1,$prev);
		}
	}
}


sub erase
{
	my $end = @{$_[0]} - $_[2];
	for(my $i=$_[1];$i<$end;$i++)
	{
		${$_[0]}[$i] = ${$_[0]}[$i + $_[2]];
	}
	for(my $i=0;$i<$_[2];$i++)
	{
		pop(@{$_[0]});
	}
}


sub check_language
{
	my @Language_Ranges = @{$_[1]};
	
        foreach my $line (@Language_Ranges)
        {
                my @values = split(/_/,$line);
                my $lan = shift(@values);
                foreach my $ran (@values)
                {
                        my @range = split(/-/,$ran);
                        if($range[0] <= $_[0])
                        {
                                if($_[0] <= $range[1])
                                {
                                        return($lan);
                                }
                        }
                }
        }
}





sub string2bin($)
{
    return sprintf("%02x ", ord($_));
}

sub hex2dec($)
{
	eval "return sprintf(\"\%d\", 0x$_[0])";
}



sub hex2string
{
	my($instring) = @_;
	my($retval,$strlen,$posx);
	$strlen = length($instring);
	for ($posx = 0; $posx < $strlen; $posx=$posx+2)
	{
		$retval .= chr(hex(substr($instring,$posx,2)));
	}
	return($retval);
}

=cut
sub dec2hex
{
        my $decnum = $_[0];
        my ($hexnum,$tempval);
        while ($decnum != 0)
        {
                $tempval = $decnum % 16;
                $tempval = chr($tempval + 55) if ($tempval > 9);
                $hexnum = $tempval . $hexnum ;
                $decnum = int($decnum / 16);
                if ($decnum < 16)
                {
                        $decnum = chr($decnum + 55) if ($decnum > 9);
                        $hexnum = $decnum . $hexnum;
                        $decnum = 0
                }
        }
	print "dec2hex:$hexnum\n";
        return $hexnum;
}
=cut

sub dec2hex
{
        my $decnum = $_[0];
        my $hexnum;
        my $tempval;
        while ($decnum != 0)
        {
                $tempval = $decnum % 16;
                if ($tempval > 9)
                {
                        $tempval = chr($tempval + 55);
                }
                $hexnum = $tempval . $hexnum ;
                $decnum = int($decnum / 16);
                if ($decnum < 16)
                {
                        if ($decnum > 9)
                        {
                                $decnum = chr($decnum + 55);
                        }

                        $hexnum = $decnum . $hexnum;
                        $decnum = 0
                }
        }
        return $hexnum;
}



sub readFile
{
	open(IN,$_[0]);
	my @file = <IN>;
	chomp(@file);
	close( IN );
	return(@file);
}

