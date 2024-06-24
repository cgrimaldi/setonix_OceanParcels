#!/bin/bash -l
#SBATCH --job-name=InstallOP
#SBATCH --account=pawsey0106
#SBATCH --nodes=1
#SBATCH --time=1:00:00


# install
module load ffmpeg/4.4
module load python/3.11.6
module load py-pip/23.1.2-py3.11.6 
module load py-mpi4py/3.1.5-py3.11.6


export PARCELS_HOME=/software/projects/pawsey0106/cgrimaldi/OceanParcels_jun24
mkdir -p $PARCELS_HOME
# create requirements.txt in $PARCELS_HOME/
pip install --prefix=$PARCELS_HOME -r $PARCELS_HOME/requirements.txt
pip install --prefix=$PARCELS_HOME parcels

