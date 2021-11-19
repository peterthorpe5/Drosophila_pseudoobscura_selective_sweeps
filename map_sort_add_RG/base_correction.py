from collections import defaultdict
import os

top = """cd /storage/home/users/pjt6/fly_selective_sweeps


#conda activate gatk\n\n"""
"""

count = 0
for filename in os.listdir(".") :
    if not filename.endswith("_R1_paired.fq.gz") : continue
    count = count +1
    f = "map_sort_RG_bams_%d.sh" % count
    f_out = open(f, "w")

    prefix = filename.split("_")[0]
    base_corr_cmd = "gatk_cmd = "gatk --java-options '-Xmx80G' 
    /storage/home/users/pjt6/shelf_apps/apps/bwa-mem2-2.0pre2_x64-linux/bwa-mem2 mem -t 15 /storage/home/users/pjt6/fly_selective_sweeps/genome/GCA_000001765.3_Dpse_4.0_genomic.fna %s_R1_paired.fq.gz %s_R2_paired.fq.gz | samtools view -b -o /storage/home/users/pjt6/fly_selective_sweeps/bams/%s.bam - " % (prefix, prefix, prefix)
    f_out.write(top)
    f_out.write(base_corr_cmd)
    

    
    f_out.close()
    print("qsub -V  %s \n" % f)