#!/bin/bash

#SBATCH -p hpc-bio-pascal
#SBATCH --chdir=/home/alumno13/lab5
#SBATCH --mail-type=NONE
#SBATCH --cpus-per-task=4
#SBATCH -o reduc-par-%u.out

module load anaconda/2023.03 # Cargo el módulo necesario

echo Ejecutando el notebook con $1 elementos
ipython reduc-operation-array_par-alumno13.ipynb $1

module unload anaconda/2023.03 # Descargo el módulo
