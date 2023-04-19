from collections import defaultdict
import os

headers = ("""
cd /storage/home/users/pjt6/fly_selective_sweeps


#conda activate gatk\n\n""")

for filename in os.listdir(".") :
    if not filename.endswith("_R1_paired.fq.gz") : continue
    prefix = filename.split("_")[0]
    f = "%s_gatk.sh" % prefix
    f_out = open(f, "w")
    gatk_cmd = "gatk --java-options '-Xmx40G' HaplotypeCaller -R /storage/home/users/pjt6/fly_selective_sweeps/genome/GCF_009870125.1_UCI_Dpse_MV25_genomic.fna -I /storage/home/users/pjt6/fly_selective_sweeps/bams/%s_sorted_marked_RG.bam -O /storage/home/users/pjt6/fly_selective_sweeps/vcfs/%s.vcf" % (prefix, prefix)
    f_out.write(headers)
    f_out.write(gatk_cmd)
    f_out.close()
