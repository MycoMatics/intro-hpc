#!/usr/bin/bash                                
# Line 1 is a she-bang that indicates that this is a Bash script.

#PBS -N hello-world.$PBS_JOBID                 #  Line 3-7 inform the scheduler about the resources required by this job:
#PBS -l nodes=1:ppn=1                                      # singe node (nodes=1) single core (ppn=1)
#PBS -o stdout.$PBS_JOBNAME.$PBS_JOBID                     # redirect sterr stdout to separate files 
#PBS -e stderr.$PBS_JOBNAME.$PBS_JOBID          
#PBS -l walltime=00:02:00                                  # run for at most 2 minutes (walltime=00:02:00 max is 72hours)
#PBS -m abe                                                # send mail when job (a)bort (b)egin (e)nd
#PBS -M <youremailaddresshere>                             # specify your email address here

module load Python/3.7.2-foss-2018a            # load the necessary modules

cd $PBS_O_WORKDIR                              # Line 13: changes the working directory to the directory in which the job will be submitted 
                                               #(that will be the value of the $PBS_O_WORKDIR environment variable when the job runs).

python hello_world.py                          # Line 16: Does the actual computation
