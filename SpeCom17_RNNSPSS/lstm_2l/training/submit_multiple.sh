#!/bin/bash

sbatch bash_calltrainer.sh 250N250N adam 0.01 1 0.0003 0.9 cmp tel

sleep 10m

sbatch bash_calltrainer.sh 500N500N adam 0.01 1 0.0003 0.9 cmp tel

sleep 10m

sbatch bash_calltrainer.sh 250N250N adam 0.01 1 0.0003 0.9 cmp tam

sleep 10m

sbatch bash_calltrainer.sh 500N500N adam 0.01 1 0.0003 0.9 cmp tam

sleep 10m

sbatch bash_calltrainer.sh 250N250N adam 0.01 1 0.0003 0.9 cmp hin

sleep 10m

sbatch bash_calltrainer.sh 500N500N adam 0.01 1 0.0003 0.9 cmp hin
