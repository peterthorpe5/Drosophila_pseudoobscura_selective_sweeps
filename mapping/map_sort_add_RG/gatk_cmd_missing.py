from collections import defaultdict
import os

headers = ("""
cd /storage/home/users/pjt6/fly_selective_sweeps


#conda activate gatk\n\n""")
missing = """s156
s76
s146
s67
s145
s122
s21
s39
s70
s60
s72
s29
s58
s162
s61
s96
s49
s135
s27
s123
s81
s136
s163
s43
s33
s165
s80
s50""".split()

for filename in  missing :
    prefix = filename.split("_")[0]
    f = "%s_gatk.sh" % prefix
    f_out = open(f, "w")
    gatk_cmd = "gatk --java-options '-Xmx40G' HaplotypeCaller -R /storage/home/users/pjt6/fly_selective_sweeps/genome/GCA_000001765.3_Dpse_4.0_genomic.fna -I /storage/home/users/pjt6/fly_selective_sweeps/bams/%s_sorted_marked_RG.bam -O /storage/home/users/pjt6/fly_selective_sweeps/vcfs/%s.vcf" % (prefix, prefix)
    f_out.write(headers)
    f_out.write(gatk_cmd)
    print(gatk_cmd)
    f_out.close()
    #print("qsub -pe multi 4 -l singularity -b y singularity  run /storage/home/users/pjt6/fly_selective_sweeps/gatk-nightly_latest.sif /storage/home/users/pjt6/fly_selective_sweeps/%s\n" % (f))

