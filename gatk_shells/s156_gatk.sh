
cd /storage/home/users/pjt6/fly_selective_sweeps


#conda activate gatk

gatk --java-options '-Xmx80G' HaplotypeCaller -R /storage/home/users/pjt6/fly_selective_sweeps/genome/Drosophila_pseudoobscura.Dpse_3.0_.dna.toplevel.fa -I /storage/home/users/pjt6/fly_selective_sweeps/bams/s156_sorted_marked_RG.bam -O /storage/home/users/pjt6/fly_selective_sweeps/vcfs/s156.vcf