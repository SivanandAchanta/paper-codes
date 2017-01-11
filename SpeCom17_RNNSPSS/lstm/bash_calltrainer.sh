#!/bin/bash
#SBATCH -A svl
#SBATCH -n 8
#SBATCH -p long
#SBATCH --mem-per-cpu=2400
#SBATCH -t 480:00:00

## /scratch/matlab/R2013b/bin/matlab -nodesktop -nosplash -singleCompThread -r call_seq2seq
numepochs=100
arch_name='300N'
si=0.01
ri=0.01
so=0.01
gcth=1
lr=0.01
mf=0.3
/scratch/matlab/R2013b/bin/matlab -nodesktop -nosplash -singleCompThread -r "call_trainlstm_fn $numepochs $arch_name $si $ri $so $gcth $lr $mf"
