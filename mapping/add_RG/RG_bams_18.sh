#!/bin/bash
#$ -V ## pass all environment variables to the job, VERY IMPORTANT
#$ -N addRG ## job name
#$ -S /bin/bash ## shell where it will run this job
#$ -cwd ## Execute the job from the current working directory
#$ -pe multi 5
#$ -m e
cd /storage/home/users/pjt6/fly_selective_sweeps
#export PATH=/shelf/apps/pjt6/conda/envs/trinity/bin/$PATH

#export PATH=/shelf/apps/pjt6/conda/envs/picard/bin/$PATH

conda activate picard
java -Xmx40G -jar /shelf/apps/pjt6/conda/envs/picard/share/picard-2.18.29-0/picard.jar  AddOrReplaceReadGroups I=./bams/s119_sorted_marked.bam O=./bams/s119_sorted_marked_RG.bam RGLB=lib1 RGPL=Illumina RGPU=flowcell:Sample RGSM=s119 SO=coordinate CREATE_INDEX=true  VALIDATION_STRINGENCY=LENIENT