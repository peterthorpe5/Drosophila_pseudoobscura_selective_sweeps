
cd /storage/home/users/pjt6/fly_selective_sweeps


#conda activate gatk

gatk --java-options '-Xmx40G' HaplotypeCaller -R /storage/home/users/pjt6/fly_selective_sweeps/genome/GCA_000001765.3_Dpse_4.0_genomic.fna -I /storage/home/users/pjt6/fly_selective_sweeps/bams/s163_sorted_marked_RG.bam -O /storage/home/users/pjt6/fly_selective_sweeps/vcfs/s163.vcf