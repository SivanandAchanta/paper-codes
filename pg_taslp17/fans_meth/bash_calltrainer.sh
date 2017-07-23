#!/bin/bash
#SBATCH -A svl
#SBATCH -n 10
#SBATCH -p long
#SBATCH --mem-per-cpu=3900
#SBATCH -t 480:00:00

arch_name=$1
sgd_type=$2
si=$3
ri=$3
so=$3
fb_init=$4
gcth=$5
rho=$6
eps_hp=$7

/scratch/matlab/R2016a/bin/matlab -nodesktop -nosplash -singleCompThread -r "call_trainlstm $arch_name $sgd_type $si $ri $so $fb_init $gcth $rho $eps_hp"
