#!/bin/sh

#nohup matlab -nodesktop -nodisplay < get_vuvth.m > nohup1.out

nohup matlab -nodesktop -nodisplay < testlstm_getGVparamEstimate.m > nohup2.out

nohup matlab -nodesktop -nodisplay < testlstm.m > nohup3.out

