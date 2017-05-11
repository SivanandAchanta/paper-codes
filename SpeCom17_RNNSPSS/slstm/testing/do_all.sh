#!/bin/sh

nohup matlab -nodesktop -nodisplay < get_vuvth.m > nohup1.out

#nohup matlab -nodesktop -nodisplay < get_GVparam.m > nohup.out

nohup matlab -nodesktop -nodisplay < test.m > nohup2.out

