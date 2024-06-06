#!/bin/bash

#SBATCH -J sleep-1-job
#SBATCH -c 4
#SBATCH -o sleep-1-job.out
#SBATCH --mail-type=ALL
#SBATCH --mail-user=dan.grose@lancaster.ac.uk
#SBATCH -w dantzig

srun Rscript theo-parallel-example.R
