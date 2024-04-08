#!/bin/bash

#SBATCH -J sleep1-job
#SBATCH -c 1
#SBATCH -o sleep-1-job.out
#SBATCH --mail-user=dan.grose@lancaster.ac.uk

source ~/start-pyenv

srun python sleep.py 120

