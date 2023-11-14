#!/usr/bin/bash
#PBS -N hello-world.$PBS_JOBID
#PBS -l nodes=1:ppn=1
#PBS -o stdout.$PBS_JOBNAME.$PBS_JOBID
#PBS -e stderr.$PBS_JOBNAME.$PBS_JOBID
#PBS -l walltime=00:02:00
#PBS -m abe
#PBS -M pieter.asselman@ugent.be

module load Python/3.7.2-foss-2018a

cd $PBS_O_WORKDIR

python hello_world.py
