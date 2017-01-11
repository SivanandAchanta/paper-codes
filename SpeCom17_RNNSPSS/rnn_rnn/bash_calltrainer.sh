#!/bin/bash
#SBATCH -A svl
#SBATCH -n 6
#SBATCH -p long
#SBATCH --mem-per-cpu=3800
#SBATCH -t 192:00:00

## /scratch/matlab/R2013b/bin/matlab -nodesktop -nosplash -singleCompThread -r call_seq2seq
numepochs=100
arch_name='1000R'
sgd_type='sgdcm'
init_meth='di'
enc='rnn_rnn'
si=0.01
ri=0.01
so=0.01
gcth=1
lr=0.005
mf=0.3
/scratch/matlab/R2013b/bin/matlab -nodesktop -nosplash -singleCompThread -r "call_trainrnn_fn $numepochs $arch_name $sgd_type $init_meth $enc $si $ri $so $gcth $lr $mf"
