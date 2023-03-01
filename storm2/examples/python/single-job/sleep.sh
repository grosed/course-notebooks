#!/bin/bash


#SBATCH -J sleep1-job
#SBATCH --array=100-200
#SBATCH -c 1
#SBATCH -o sleep-1-job.out
#SBATCH --mail-user=dan.grose@lancaster.ac.uk

srun python3 sleep.py $SLURM_ARRAY_TASK_ID

