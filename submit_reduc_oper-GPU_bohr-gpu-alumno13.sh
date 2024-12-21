#!/bin/bash

#SBATCH -p bohr-gpu
#SBATCH --chdir=/home/alumno13/lab5
#SBATCH --mail-type=NONE
#SBATCH -o reduc-GPU-%u.out

module load anaconda/2023.03
module load cuda/12.3 # Cargo los módulos necesarios

for arg in "$@";
do
	echo Ejecutando el script con el valor de $arg elementos
	ipython reduc-operation-array_gpu-alumno13.ipynb $arg
done

module unload anaconda/2023.03
module unload cuda/12.3 # Descargo los módulos
