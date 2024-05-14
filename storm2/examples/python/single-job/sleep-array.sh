#!/bin/bash

#SBATCH -J sleep-array-job
#SBATCH --mail-type=ALL
#SBATCH --mail-user=dan.grose@lancaster.ac.uk
#SBATCH --array=10-120:10
#SBATCH -c 1
#SBATCH -o sleep-1-job_%A_%a.out

source ~/start-pyenv
echo ARRAY ID IS : $SLURM_ARRAY_TASK_ID
srun python sleep.py $SLURM_ARRAY_TASK_ID
