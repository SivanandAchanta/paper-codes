(set! iiit_tel_hari::clunits_prompting_stage t)
(voice_iiit_tel_hari_clunits)
(Parameter.set 'Synth_Method 'None)
(set! utt1 (utt.synth (eval (list 'Utterance 'Text " aayana bhaarya raajyalaksxmiki, raasxtxra maqtriwargaqloo sthaanaq labhiqcinaa, aame tana padawiki raajiinaamaa ceestunatxlu waartaloccina wisxayaq widitamee."))))
;(clunits::units_selected utt1 "filename")
(utt.save utt1 (format nil "%s.utt" uttname))

