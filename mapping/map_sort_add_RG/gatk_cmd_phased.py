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
    gatk_cmd = "gatk --java-options '-Xmx80G' HaplotypeCaller --do-not-run-physical-phasing false -R /storage/home/users/pjt6/fly_selective_sweeps/genome/Drosophila_pseudoobscura.Dpse_3.0_.dna.toplevel.fa -I /storage/home/users/pjt6/fly_selective_sweeps/bams/%s_sorted_marked_RG.bam -O /storage/home/users/pjt6/fly_selective_sweeps/vcf_phased/%s.vcf" % (prefix, prefix)
    f_out.write(headers)
    f_out.write(gatk_cmd)
    f_out.close()