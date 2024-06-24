#!/bin/bash -l
#SBATCH --job-name=RunOP
#SBATCH --account=pawsey0106
#SBATCH --nodes=1
#SBATCH --time=00:20:00

#module load python/3.11.6
module load py-pip/23.1.2-py3.11.6
#module load py-numpy/1.26.1
pip install pytest