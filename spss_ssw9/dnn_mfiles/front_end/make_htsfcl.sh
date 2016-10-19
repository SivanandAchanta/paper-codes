#!/bin/bash

# awk and perl
AWK="mawk"

# dumpfeats to extract utterance information
DUMPFEATS='/home/siva/tools/festival_new/festival/examples/dumpfeats'

#label:
# Extracting monophone and fullcontext labels from utterance files
# mkdir -p labels/mono
# mkdir -p labels/full

for utt in utts/$1.utt
do 
	base=`basename $utt .utt`
        #echo $base
        #echo $utt
	if [ -s $utt ] 
        then
		$DUMPFEATS	-eval     scripts/extra_feats.scm \
				-relation Segment \
				-eval     festvox/iiit_tel_hari_clunits.scm \
				-feats    scripts/label.feats \
				-output   tmp \
				$utt
	fi
	mawk -f scripts/label-full.awk tmp > $base.lab 
#	mawk -f scripts/label-mono.awk tmp > labels/mono/$base.lab
done
#rm -f tmp
