#!/bin/bash
#SBATCH -A svl
#SBATCH -n 4
#SBATCH -p long
#SBATCH --mem-per-cpu=3900
#SBATCH -t 480:00:00

## /scratch/matlab/R2013b/bin/matlab -nodesktop -nosplash -singleCompThread -r call_seq2seq
##numepochs=100
arch_name='1000R100R'
sgd_type='adadelta'
mgc_flag=1
f0_flag=1
mgcp_flag=0
f0p_flag=1
lno=1
hmvnf=0
##init_meth='di'
##enc='rnn'
##si=0.1
##ri=1
##so=0.1
##gcth=1
##lr=0.003
##mf=0.3
/scratch/matlab/R2013b/bin/matlab -nodesktop -nosplash -singleCompThread -r "call_traindnn_fn $arch_name $sgd_type $mgc_flag $f0_flag $mgcp_flag $f0p_flag $lno $hmvnf"
