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
    bwa_cmd = "/storage/home/users/pjt6/shelf_apps/apps/bwa-mem2-2.0pre2_x64-linux/bwa-mem2 mem -t 15 /storage/home/users/pjt6/fly_selective_sweeps/genome/GCF_009870125.1_UCI_Dpse_MV25_genomic.fna %s_R1_paired.fq.gz %s_R2_paired.fq.gz | samtools view -b -o /storage/home/users/pjt6/fly_selective_sweeps/bams/%s.bam - " % (prefix, prefix, prefix)
    f_out.write(top)
    f_out.write(bwa_cmd)
    
    export_path = "\n\nwait\n\nexport PATH=$PATH:/shelf/apps/pjt6/conda/envs/picard/bin/\n"
    f_out.write(export_path)
    
    
    picard_cmd = "\njava -Xmx80G -jar /shelf/apps/pjt6/conda/envs/picard/share/picard-2.18.29-0/picard.jar  SortSam INPUT=/storage/home/users/pjt6/fly_selective_sweeps/bams/%s.bam OUTPUT=/storage/home/users/pjt6/fly_selective_sweeps/bams/%s_sorted.bam SORT_ORDER=coordinate VALIDATION_STRINGENCY=SILENT\n" % (prefix, prefix)
    #print(picard_cmd)
    f_out.write(picard_cmd)
    
    picard_cmd = "\njava -Xmx50G -jar /shelf/apps/pjt6/conda/envs/picard/share/picard-2.18.29-0/picard.jar  MarkDuplicates  INPUT=/storage/home/users/pjt6/fly_selective_sweeps/bams/%s_sorted.bam  OUTPUT=/storage/home/users/pjt6/fly_selective_sweeps/bams/%s_sorted_marked.bam METRICS_FILE=%s_metrics.txt ASSUME_SORTED=true VALIDATION_STRINGENCY=SILENT\n" % (prefix, prefix, prefix)
    f_out.write(picard_cmd)
    #print(picard_cmd)
    
    picard_cmd = "\njava -Xmx50G -jar /shelf/apps/pjt6/conda/envs/picard/share/picard-2.18.29-0/picard.jar  AddOrReplaceReadGroups I=/storage/home/users/pjt6/fly_selective_sweeps/bams/%s_sorted_marked.bam O=/storage/home/users/pjt6/fly_selective_sweeps/bams/%s_sorted_marked_RG.bam RGLB=lib1 RGPL=Illumina RGPU=flowcell:Sample RGSM=%s SO=coordinate CREATE_INDEX=true  VALIDATION_STRINGENCY=LENIENT\n" % (prefix, prefix, prefix) 
    #print(picard_cmd)
    #print(picard_cmd)
    f_out.write(picard_cmd)
    
    f_out.close()
    print("qsub -V  %s \n" % f)
