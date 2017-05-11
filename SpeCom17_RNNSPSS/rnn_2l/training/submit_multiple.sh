#!/bin/bash

sbatch bash_calltrainer.sh 500R500R adam 0.03 1 0.0003 0.9 cmp tam

sleep 1m

sbatch bash_calltrainer.sh 500R500R adam 0.01 1 0.0003 0.9 cmp tam

sleep 1m

sbatch bash_calltrainer.sh 500R500R adam 0.03 1 0.0003 0.9 cmp hin

sleep 1m

sbatch bash_calltrainer.sh 500R500R adam 0.01 1 0.0003 0.9 cmp hin

