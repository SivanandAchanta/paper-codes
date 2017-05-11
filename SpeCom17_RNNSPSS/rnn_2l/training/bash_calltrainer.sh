#!/bin/bash
#SBATCH -A svl
#SBATCH -n 1
#SBATCH -p long
#SBATCH --mem-per-cpu=3900
#SBATCH -t 80:00:00

arch_name=$1
sgd_type=$2
si=$3
ri=$3
so=$3
gcth=$4
rho=$5
eps_hp=$6
feat_name=$7
lang_name=$8

/scratch/matlab/R2016a/bin/matlab -nodesktop -nosplash -singleCompThread -r "call_trainrnn $arch_name $sgd_type $si $ri $so $gcth $rho $eps_hp $feat_name $lang_name"
