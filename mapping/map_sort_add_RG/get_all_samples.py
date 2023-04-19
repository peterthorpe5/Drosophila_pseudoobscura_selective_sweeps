from collections import defaultdict
import os

top = """#!/bin/bash
#$ -V ## pass all environment variables to the job, VERY IMPORTANT
#$ -N map_sort ## job name
#$ -S /bin/bash ## shell where it will run this job
#$ -cwd ## Execute the job from the current working directory
#$ -pe multi 16
#$ -m e
cd /storage/home/users/pjt6/fly_selective_sweeps
#export PATH=/shelf/apps/pjt6/conda/envs/trinity/bin/$PATH

#export PATH=/shelf/apps/pjt6/conda/envs/picard/bin/$PATH

#conda activate picard
"""

count = 0
for filename in os.listdir(".") :
    if not filename.endswith("_R1_paired.fq.gz") : continue
    count = count +1
    f = "map_sort_RG_bams_%d.sh" % count
    f_out = open(f, "w")

    prefix = filename.split("_")[0]
    print(prefix)
