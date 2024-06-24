#!/bin/bash -l
#SBATCH --job-name=RunOP
#SBATCH --account=pawsey0106
#SBATCH --nodes=1
#SBATCH --cpus-per-task=24
#SBATCH --time=18:00:00


# run
module load ffmpeg/4.4
module load python/3.11.6
module load py-mpi4py/3.1.5-py3.11.6
export PYTHONPATH=/software/projects/pawsey0106/cgrimaldi/OceanParcels_jun24/lib/python3.11/site-packages:$PYTHONPATH
export PATH=/software/projects/pawsey0106/cgrimaldi/OceanParcels_jun24/bin:$PATH

srun -N 1 -n 1 python example_stommel_up.py