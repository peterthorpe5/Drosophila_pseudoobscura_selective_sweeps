#!/bin/bash
#$ -V ## pass all environment variables to the job, VERY IMPORTANT
#$ -N bams ## job name
#$ -S /bin/bash ## shell where it will run this job
#$ -cwd ## Execute the job from the current working directory
#$ -pe multi 32
#$ -m e
cd /storage/home/users/pjt6/fly_selective_sweeps
#export PATH=/shelf/apps/pjt6/conda/envs/trinity/bin/:$PATH

#export PATH=/shelf/apps/pjt6/conda/envs/picard/bin/:$PATH

conda activate trinity
/storage/home/users/pjt6/shelf_apps/apps/bwa-mem2-2.0pre2_x64-linux/bwa-mem2 mem -t 32 /storage/home/users/pjt6/fly_selective_sweeps/genome/Drosophila_pseudoobscura.Dpse_3.0_.dna.toplevel.fa s100_R1_paired.fq.gz s100_R2_paired.fq.gz | samtools view -@32 -b -o ./bams/s100.bam - 
# picard SortSam INPUT=./bams/s100.bam OUTPUT=./bams/s100_sorted.bam SORT_ORDER=coordinate VALIDATION_STRINGENCY=SILENT
# picard MarkDuplicates  INPUT=./bams/s100_sorted.bam  OUTPUT=./bams/s100_sorted_marked.bam METRICS_FILE=s100_metrics.txt ASSUME_SORTED=true VALIDATION_STRINGENCY=SILENT
/storage/home/users/pjt6/shelf_apps/apps/bwa-mem2-2.0pre2_x64-linux/bwa-mem2 mem -t 32 /storage/home/users/pjt6/fly_selective_sweeps/genome/Drosophila_pseudoobscura.Dpse_3.0_.dna.toplevel.fa s101_R1_paired.fq.gz s101_R2_paired.fq.gz | samtools view -@32 -b -o ./bams/s101.bam - 
# picard SortSam INPUT=./bams/s101.bam OUTPUT=./bams/s101_sorted.bam SORT_ORDER=coordinate VALIDATION_STRINGENCY=SILENT
# picard MarkDuplicates  INPUT=./bams/s101_sorted.bam  OUTPUT=./bams/s101_sorted_marked.bam METRICS_FILE=s101_metrics.txt ASSUME_SORTED=true VALIDATION_STRINGENCY=SILENT
/storage/home/users/pjt6/shelf_apps/apps/bwa-mem2-2.0pre2_x64-linux/bwa-mem2 mem -t 32 /storage/home/users/pjt6/fly_selective_sweeps/genome/Drosophila_pseudoobscura.Dpse_3.0_.dna.toplevel.fa s102_R1_paired.fq.gz s102_R2_paired.fq.gz | samtools view -@32 -b -o ./bams/s102.bam - 
# picard SortSam INPUT=./bams/s102.bam OUTPUT=./bams/s102_sorted.bam SORT_ORDER=coordinate VALIDATION_STRINGENCY=SILENT
# picard MarkDuplicates  INPUT=./bams/s102_sorted.bam  OUTPUT=./bams/s102_sorted_marked.bam METRICS_FILE=s102_metrics.txt ASSUME_SORTED=true VALIDATION_STRINGENCY=SILENT
/storage/home/users/pjt6/shelf_apps/apps/bwa-mem2-2.0pre2_x64-linux/bwa-mem2 mem -t 32 /storage/home/users/pjt6/fly_selective_sweeps/genome/Drosophila_pseudoobscura.Dpse_3.0_.dna.toplevel.fa s104_R1_paired.fq.gz s104_R2_paired.fq.gz | samtools view -@32 -b -o ./bams/s104.bam - 
# picard SortSam INPUT=./bams/s104.bam OUTPUT=./bams/s104_sorted.bam SORT_ORDER=coordinate VALIDATION_STRINGENCY=SILENT
# picard MarkDuplicates  INPUT=./bams/s104_sorted.bam  OUTPUT=./bams/s104_sorted_marked.bam METRICS_FILE=s104_metrics.txt ASSUME_SORTED=true VALIDATION_STRINGENCY=SILENT
/storage/home/users/pjt6/shelf_apps/apps/bwa-mem2-2.0pre2_x64-linux/bwa-mem2 mem -t 32 /storage/home/users/pjt6/fly_selective_sweeps/genome/Drosophila_pseudoobscura.Dpse_3.0_.dna.toplevel.fa s105_R1_paired.fq.gz s105_R2_paired.fq.gz | samtools view -@32 -b -o ./bams/s105.bam - 
# picard SortSam INPUT=./bams/s105.bam OUTPUT=./bams/s105_sorted.bam SORT_ORDER=coordinate VALIDATION_STRINGENCY=SILENT
# picard MarkDuplicates  INPUT=./bams/s105_sorted.bam  OUTPUT=./bams/s105_sorted_marked.bam METRICS_FILE=s105_metrics.txt ASSUME_SORTED=true VALIDATION_STRINGENCY=SILENT
/storage/home/users/pjt6/shelf_apps/apps/bwa-mem2-2.0pre2_x64-linux/bwa-mem2 mem -t 32 /storage/home/users/pjt6/fly_selective_sweeps/genome/Drosophila_pseudoobscura.Dpse_3.0_.dna.toplevel.fa s106_R1_paired.fq.gz s106_R2_paired.fq.gz | samtools view -@32 -b -o ./bams/s106.bam - 
# picard SortSam INPUT=./bams/s106.bam OUTPUT=./bams/s106_sorted.bam SORT_ORDER=coordinate VALIDATION_STRINGENCY=SILENT
# picard MarkDuplicates  INPUT=./bams/s106_sorted.bam  OUTPUT=./bams/s106_sorted_marked.bam METRICS_FILE=s106_metrics.txt ASSUME_SORTED=true VALIDATION_STRINGENCY=SILENT
/storage/home/users/pjt6/shelf_apps/apps/bwa-mem2-2.0pre2_x64-linux/bwa-mem2 mem -t 32 /storage/home/users/pjt6/fly_selective_sweeps/genome/Drosophila_pseudoobscura.Dpse_3.0_.dna.toplevel.fa s107_R1_paired.fq.gz s107_R2_paired.fq.gz | samtools view -@32 -b -o ./bams/s107.bam - 
# picard SortSam INPUT=./bams/s107.bam OUTPUT=./bams/s107_sorted.bam SORT_ORDER=coordinate VALIDATION_STRINGENCY=SILENT
# picard MarkDuplicates  INPUT=./bams/s107_sorted.bam  OUTPUT=./bams/s107_sorted_marked.bam METRICS_FILE=s107_metrics.txt ASSUME_SORTED=true VALIDATION_STRINGENCY=SILENT
/storage/home/users/pjt6/shelf_apps/apps/bwa-mem2-2.0pre2_x64-linux/bwa-mem2 mem -t 32 /storage/home/users/pjt6/fly_selective_sweeps/genome/Drosophila_pseudoobscura.Dpse_3.0_.dna.toplevel.fa s108_R1_paired.fq.gz s108_R2_paired.fq.gz | samtools view -@32 -b -o ./bams/s108.bam - 
# picard SortSam INPUT=./bams/s108.bam OUTPUT=./bams/s108_sorted.bam SORT_ORDER=coordinate VALIDATION_STRINGENCY=SILENT
# picard MarkDuplicates  INPUT=./bams/s108_sorted.bam  OUTPUT=./bams/s108_sorted_marked.bam METRICS_FILE=s108_metrics.txt ASSUME_SORTED=true VALIDATION_STRINGENCY=SILENT
/storage/home/users/pjt6/shelf_apps/apps/bwa-mem2-2.0pre2_x64-linux/bwa-mem2 mem -t 32 /storage/home/users/pjt6/fly_selective_sweeps/genome/Drosophila_pseudoobscura.Dpse_3.0_.dna.toplevel.fa s109_R1_paired.fq.gz s109_R2_paired.fq.gz | samtools view -@32 -b -o ./bams/s109.bam - 
# picard SortSam INPUT=./bams/s109.bam OUTPUT=./bams/s109_sorted.bam SORT_ORDER=coordinate VALIDATION_STRINGENCY=SILENT
# picard MarkDuplicates  INPUT=./bams/s109_sorted.bam  OUTPUT=./bams/s109_sorted_marked.bam METRICS_FILE=s109_metrics.txt ASSUME_SORTED=true VALIDATION_STRINGENCY=SILENT
/storage/home/users/pjt6/shelf_apps/apps/bwa-mem2-2.0pre2_x64-linux/bwa-mem2 mem -t 32 /storage/home/users/pjt6/fly_selective_sweeps/genome/Drosophila_pseudoobscura.Dpse_3.0_.dna.toplevel.fa s110_R1_paired.fq.gz s110_R2_paired.fq.gz | samtools view -@32 -b -o ./bams/s110.bam - 
# picard SortSam INPUT=./bams/s110.bam OUTPUT=./bams/s110_sorted.bam SORT_ORDER=coordinate VALIDATION_STRINGENCY=SILENT
# picard MarkDuplicates  INPUT=./bams/s110_sorted.bam  OUTPUT=./bams/s110_sorted_marked.bam METRICS_FILE=s110_metrics.txt ASSUME_SORTED=true VALIDATION_STRINGENCY=SILENT
/storage/home/users/pjt6/shelf_apps/apps/bwa-mem2-2.0pre2_x64-linux/bwa-mem2 mem -t 32 /storage/home/users/pjt6/fly_selective_sweeps/genome/Drosophila_pseudoobscura.Dpse_3.0_.dna.toplevel.fa s111_R1_paired.fq.gz s111_R2_paired.fq.gz | samtools view -@32 -b -o ./bams/s111.bam - 
# picard SortSam INPUT=./bams/s111.bam OUTPUT=./bams/s111_sorted.bam SORT_ORDER=coordinate VALIDATION_STRINGENCY=SILENT
# picard MarkDuplicates  INPUT=./bams/s111_sorted.bam  OUTPUT=./bams/s111_sorted_marked.bam METRICS_FILE=s111_metrics.txt ASSUME_SORTED=true VALIDATION_STRINGENCY=SILENT
/storage/home/users/pjt6/shelf_apps/apps/bwa-mem2-2.0pre2_x64-linux/bwa-mem2 mem -t 32 /storage/home/users/pjt6/fly_selective_sweeps/genome/Drosophila_pseudoobscura.Dpse_3.0_.dna.toplevel.fa s112_R1_paired.fq.gz s112_R2_paired.fq.gz | samtools view -@32 -b -o ./bams/s112.bam - 
# picard SortSam INPUT=./bams/s112.bam OUTPUT=./bams/s112_sorted.bam SORT_ORDER=coordinate VALIDATION_STRINGENCY=SILENT
# picard MarkDuplicates  INPUT=./bams/s112_sorted.bam  OUTPUT=./bams/s112_sorted_marked.bam METRICS_FILE=s112_metrics.txt ASSUME_SORTED=true VALIDATION_STRINGENCY=SILENT
/storage/home/users/pjt6/shelf_apps/apps/bwa-mem2-2.0pre2_x64-linux/bwa-mem2 mem -t 32 /storage/home/users/pjt6/fly_selective_sweeps/genome/Drosophila_pseudoobscura.Dpse_3.0_.dna.toplevel.fa s113_R1_paired.fq.gz s113_R2_paired.fq.gz | samtools view -@32 -b -o ./bams/s113.bam - 
# picard SortSam INPUT=./bams/s113.bam OUTPUT=./bams/s113_sorted.bam SORT_ORDER=coordinate VALIDATION_STRINGENCY=SILENT
# picard MarkDuplicates  INPUT=./bams/s113_sorted.bam  OUTPUT=./bams/s113_sorted_marked.bam METRICS_FILE=s113_metrics.txt ASSUME_SORTED=true VALIDATION_STRINGENCY=SILENT
/storage/home/users/pjt6/shelf_apps/apps/bwa-mem2-2.0pre2_x64-linux/bwa-mem2 mem -t 32 /storage/home/users/pjt6/fly_selective_sweeps/genome/Drosophila_pseudoobscura.Dpse_3.0_.dna.toplevel.fa s114_R1_paired.fq.gz s114_R2_paired.fq.gz | samtools view -@32 -b -o ./bams/s114.bam - 
# picard SortSam INPUT=./bams/s114.bam OUTPUT=./bams/s114_sorted.bam SORT_ORDER=coordinate VALIDATION_STRINGENCY=SILENT
# picard MarkDuplicates  INPUT=./bams/s114_sorted.bam  OUTPUT=./bams/s114_sorted_marked.bam METRICS_FILE=s114_metrics.txt ASSUME_SORTED=true VALIDATION_STRINGENCY=SILENT
/storage/home/users/pjt6/shelf_apps/apps/bwa-mem2-2.0pre2_x64-linux/bwa-mem2 mem -t 32 /storage/home/users/pjt6/fly_selective_sweeps/genome/Drosophila_pseudoobscura.Dpse_3.0_.dna.toplevel.fa s115_R1_paired.fq.gz s115_R2_paired.fq.gz | samtools view -@32 -b -o ./bams/s115.bam - 
# picard SortSam INPUT=./bams/s115.bam OUTPUT=./bams/s115_sorted.bam SORT_ORDER=coordinate VALIDATION_STRINGENCY=SILENT
# picard MarkDuplicates  INPUT=./bams/s115_sorted.bam  OUTPUT=./bams/s115_sorted_marked.bam METRICS_FILE=s115_metrics.txt ASSUME_SORTED=true VALIDATION_STRINGENCY=SILENT
/storage/home/users/pjt6/shelf_apps/apps/bwa-mem2-2.0pre2_x64-linux/bwa-mem2 mem -t 32 /storage/home/users/pjt6/fly_selective_sweeps/genome/Drosophila_pseudoobscura.Dpse_3.0_.dna.toplevel.fa s132_R1_paired.fq.gz s132_R2_paired.fq.gz | samtools view -@32 -b -o ./bams/s132.bam - 
# picard SortSam INPUT=./bams/s132.bam OUTPUT=./bams/s132_sorted.bam SORT_ORDER=coordinate VALIDATION_STRINGENCY=SILENT
# picard MarkDuplicates  INPUT=./bams/s132_sorted.bam  OUTPUT=./bams/s132_sorted_marked.bam METRICS_FILE=s132_metrics.txt ASSUME_SORTED=true VALIDATION_STRINGENCY=SILENT
/storage/home/users/pjt6/shelf_apps/apps/bwa-mem2-2.0pre2_x64-linux/bwa-mem2 mem -t 32 /storage/home/users/pjt6/fly_selective_sweeps/genome/Drosophila_pseudoobscura.Dpse_3.0_.dna.toplevel.fa s117_R1_paired.fq.gz s117_R2_paired.fq.gz | samtools view -@32 -b -o ./bams/s117.bam - 
# picard SortSam INPUT=./bams/s117.bam OUTPUT=./bams/s117_sorted.bam SORT_ORDER=coordinate VALIDATION_STRINGENCY=SILENT
# picard MarkDuplicates  INPUT=./bams/s117_sorted.bam  OUTPUT=./bams/s117_sorted_marked.bam METRICS_FILE=s117_metrics.txt ASSUME_SORTED=true VALIDATION_STRINGENCY=SILENT
/storage/home/users/pjt6/shelf_apps/apps/bwa-mem2-2.0pre2_x64-linux/bwa-mem2 mem -t 32 /storage/home/users/pjt6/fly_selective_sweeps/genome/Drosophila_pseudoobscura.Dpse_3.0_.dna.toplevel.fa s119_R1_paired.fq.gz s119_R2_paired.fq.gz | samtools view -@32 -b -o ./bams/s119.bam - 
# picard SortSam INPUT=./bams/s119.bam OUTPUT=./bams/s119_sorted.bam SORT_ORDER=coordinate VALIDATION_STRINGENCY=SILENT
# picard MarkDuplicates  INPUT=./bams/s119_sorted.bam  OUTPUT=./bams/s119_sorted_marked.bam METRICS_FILE=s119_metrics.txt ASSUME_SORTED=true VALIDATION_STRINGENCY=SILENT
/storage/home/users/pjt6/shelf_apps/apps/bwa-mem2-2.0pre2_x64-linux/bwa-mem2 mem -t 32 /storage/home/users/pjt6/fly_selective_sweeps/genome/Drosophila_pseudoobscura.Dpse_3.0_.dna.toplevel.fa s11_R1_paired.fq.gz s11_R2_paired.fq.gz | samtools view -@32 -b -o ./bams/s11.bam - 
# picard SortSam INPUT=./bams/s11.bam OUTPUT=./bams/s11_sorted.bam SORT_ORDER=coordinate VALIDATION_STRINGENCY=SILENT
# picard MarkDuplicates  INPUT=./bams/s11_sorted.bam  OUTPUT=./bams/s11_sorted_marked.bam METRICS_FILE=s11_metrics.txt ASSUME_SORTED=true VALIDATION_STRINGENCY=SILENT
/storage/home/users/pjt6/shelf_apps/apps/bwa-mem2-2.0pre2_x64-linux/bwa-mem2 mem -t 32 /storage/home/users/pjt6/fly_selective_sweeps/genome/Drosophila_pseudoobscura.Dpse_3.0_.dna.toplevel.fa s121_R1_paired.fq.gz s121_R2_paired.fq.gz | samtools view -@32 -b -o ./bams/s121.bam - 
# picard SortSam INPUT=./bams/s121.bam OUTPUT=./bams/s121_sorted.bam SORT_ORDER=coordinate VALIDATION_STRINGENCY=SILENT
# picard MarkDuplicates  INPUT=./bams/s121_sorted.bam  OUTPUT=./bams/s121_sorted_marked.bam METRICS_FILE=s121_metrics.txt ASSUME_SORTED=true VALIDATION_STRINGENCY=SILENT
/storage/home/users/pjt6/shelf_apps/apps/bwa-mem2-2.0pre2_x64-linux/bwa-mem2 mem -t 32 /storage/home/users/pjt6/fly_selective_sweeps/genome/Drosophila_pseudoobscura.Dpse_3.0_.dna.toplevel.fa s122_R1_paired.fq.gz s122_R2_paired.fq.gz | samtools view -@32 -b -o ./bams/s122.bam - 
# picard SortSam INPUT=./bams/s122.bam OUTPUT=./bams/s122_sorted.bam SORT_ORDER=coordinate VALIDATION_STRINGENCY=SILENT
# picard MarkDuplicates  INPUT=./bams/s122_sorted.bam  OUTPUT=./bams/s122_sorted_marked.bam METRICS_FILE=s122_metrics.txt ASSUME_SORTED=true VALIDATION_STRINGENCY=SILENT
/storage/home/users/pjt6/shelf_apps/apps/bwa-mem2-2.0pre2_x64-linux/bwa-mem2 mem -t 32 /storage/home/users/pjt6/fly_selective_sweeps/genome/Drosophila_pseudoobscura.Dpse_3.0_.dna.toplevel.fa s123_R1_paired.fq.gz s123_R2_paired.fq.gz | samtools view -@32 -b -o ./bams/s123.bam - 
# picard SortSam INPUT=./bams/s123.bam OUTPUT=./bams/s123_sorted.bam SORT_ORDER=coordinate VALIDATION_STRINGENCY=SILENT
# picard MarkDuplicates  INPUT=./bams/s123_sorted.bam  OUTPUT=./bams/s123_sorted_marked.bam METRICS_FILE=s123_metrics.txt ASSUME_SORTED=true VALIDATION_STRINGENCY=SILENT
/storage/home/users/pjt6/shelf_apps/apps/bwa-mem2-2.0pre2_x64-linux/bwa-mem2 mem -t 32 /storage/home/users/pjt6/fly_selective_sweeps/genome/Drosophila_pseudoobscura.Dpse_3.0_.dna.toplevel.fa s124_R1_paired.fq.gz s124_R2_paired.fq.gz | samtools view -@32 -b -o ./bams/s124.bam - 
# picard SortSam INPUT=./bams/s124.bam OUTPUT=./bams/s124_sorted.bam SORT_ORDER=coordinate VALIDATION_STRINGENCY=SILENT
# picard MarkDuplicates  INPUT=./bams/s124_sorted.bam  OUTPUT=./bams/s124_sorted_marked.bam METRICS_FILE=s124_metrics.txt ASSUME_SORTED=true VALIDATION_STRINGENCY=SILENT
/storage/home/users/pjt6/shelf_apps/apps/bwa-mem2-2.0pre2_x64-linux/bwa-mem2 mem -t 32 /storage/home/users/pjt6/fly_selective_sweeps/genome/Drosophila_pseudoobscura.Dpse_3.0_.dna.toplevel.fa s125_R1_paired.fq.gz s125_R2_paired.fq.gz | samtools view -@32 -b -o ./bams/s125.bam - 
# picard SortSam INPUT=./bams/s125.bam OUTPUT=./bams/s125_sorted.bam SORT_ORDER=coordinate VALIDATION_STRINGENCY=SILENT
# picard MarkDuplicates  INPUT=./bams/s125_sorted.bam  OUTPUT=./bams/s125_sorted_marked.bam METRICS_FILE=s125_metrics.txt ASSUME_SORTED=true VALIDATION_STRINGENCY=SILENT
/storage/home/users/pjt6/shelf_apps/apps/bwa-mem2-2.0pre2_x64-linux/bwa-mem2 mem -t 32 /storage/home/users/pjt6/fly_selective_sweeps/genome/Drosophila_pseudoobscura.Dpse_3.0_.dna.toplevel.fa s126_R1_paired.fq.gz s126_R2_paired.fq.gz | samtools view -@32 -b -o ./bams/s126.bam - 
# picard SortSam INPUT=./bams/s126.bam OUTPUT=./bams/s126_sorted.bam SORT_ORDER=coordinate VALIDATION_STRINGENCY=SILENT
# picard MarkDuplicates  INPUT=./bams/s126_sorted.bam  OUTPUT=./bams/s126_sorted_marked.bam METRICS_FILE=s126_metrics.txt ASSUME_SORTED=true VALIDATION_STRINGENCY=SILENT
/storage/home/users/pjt6/shelf_apps/apps/bwa-mem2-2.0pre2_x64-linux/bwa-mem2 mem -t 32 /storage/home/users/pjt6/fly_selective_sweeps/genome/Drosophila_pseudoobscura.Dpse_3.0_.dna.toplevel.fa s127_R1_paired.fq.gz s127_R2_paired.fq.gz | samtools view -@32 -b -o ./bams/s127.bam - 
# picard SortSam INPUT=./bams/s127.bam OUTPUT=./bams/s127_sorted.bam SORT_ORDER=coordinate VALIDATION_STRINGENCY=SILENT
# picard MarkDuplicates  INPUT=./bams/s127_sorted.bam  OUTPUT=./bams/s127_sorted_marked.bam METRICS_FILE=s127_metrics.txt ASSUME_SORTED=true VALIDATION_STRINGENCY=SILENT
/storage/home/users/pjt6/shelf_apps/apps/bwa-mem2-2.0pre2_x64-linux/bwa-mem2 mem -t 32 /storage/home/users/pjt6/fly_selective_sweeps/genome/Drosophila_pseudoobscura.Dpse_3.0_.dna.toplevel.fa s128_R1_paired.fq.gz s128_R2_paired.fq.gz | samtools view -@32 -b -o ./bams/s128.bam - 
# picard SortSam INPUT=./bams/s128.bam OUTPUT=./bams/s128_sorted.bam SORT_ORDER=coordinate VALIDATION_STRINGENCY=SILENT
# picard MarkDuplicates  INPUT=./bams/s128_sorted.bam  OUTPUT=./bams/s128_sorted_marked.bam METRICS_FILE=s128_metrics.txt ASSUME_SORTED=true VALIDATION_STRINGENCY=SILENT
/storage/home/users/pjt6/shelf_apps/apps/bwa-mem2-2.0pre2_x64-linux/bwa-mem2 mem -t 32 /storage/home/users/pjt6/fly_selective_sweeps/genome/Drosophila_pseudoobscura.Dpse_3.0_.dna.toplevel.fa s129_R1_paired.fq.gz s129_R2_paired.fq.gz | samtools view -@32 -b -o ./bams/s129.bam - 
# picard SortSam INPUT=./bams/s129.bam OUTPUT=./bams/s129_sorted.bam SORT_ORDER=coordinate VALIDATION_STRINGENCY=SILENT
# picard MarkDuplicates  INPUT=./bams/s129_sorted.bam  OUTPUT=./bams/s129_sorted_marked.bam METRICS_FILE=s129_metrics.txt ASSUME_SORTED=true VALIDATION_STRINGENCY=SILENT
/storage/home/users/pjt6/shelf_apps/apps/bwa-mem2-2.0pre2_x64-linux/bwa-mem2 mem -t 32 /storage/home/users/pjt6/fly_selective_sweeps/genome/Drosophila_pseudoobscura.Dpse_3.0_.dna.toplevel.fa s12_R1_paired.fq.gz s12_R2_paired.fq.gz | samtools view -@32 -b -o ./bams/s12.bam - 
# picard SortSam INPUT=./bams/s12.bam OUTPUT=./bams/s12_sorted.bam SORT_ORDER=coordinate VALIDATION_STRINGENCY=SILENT
# picard MarkDuplicates  INPUT=./bams/s12_sorted.bam  OUTPUT=./bams/s12_sorted_marked.bam METRICS_FILE=s12_metrics.txt ASSUME_SORTED=true VALIDATION_STRINGENCY=SILENT
/storage/home/users/pjt6/shelf_apps/apps/bwa-mem2-2.0pre2_x64-linux/bwa-mem2 mem -t 32 /storage/home/users/pjt6/fly_selective_sweeps/genome/Drosophila_pseudoobscura.Dpse_3.0_.dna.toplevel.fa s130_R1_paired.fq.gz s130_R2_paired.fq.gz | samtools view -@32 -b -o ./bams/s130.bam - 
# picard SortSam INPUT=./bams/s130.bam OUTPUT=./bams/s130_sorted.bam SORT_ORDER=coordinate VALIDATION_STRINGENCY=SILENT
# picard MarkDuplicates  INPUT=./bams/s130_sorted.bam  OUTPUT=./bams/s130_sorted_marked.bam METRICS_FILE=s130_metrics.txt ASSUME_SORTED=true VALIDATION_STRINGENCY=SILENT
/storage/home/users/pjt6/shelf_apps/apps/bwa-mem2-2.0pre2_x64-linux/bwa-mem2 mem -t 32 /storage/home/users/pjt6/fly_selective_sweeps/genome/Drosophila_pseudoobscura.Dpse_3.0_.dna.toplevel.fa s131_R1_paired.fq.gz s131_R2_paired.fq.gz | samtools view -@32 -b -o ./bams/s131.bam - 
# picard SortSam INPUT=./bams/s131.bam OUTPUT=./bams/s131_sorted.bam SORT_ORDER=coordinate VALIDATION_STRINGENCY=SILENT
# picard MarkDuplicates  INPUT=./bams/s131_sorted.bam  OUTPUT=./bams/s131_sorted_marked.bam METRICS_FILE=s131_metrics.txt ASSUME_SORTED=true VALIDATION_STRINGENCY=SILENT
/storage/home/users/pjt6/shelf_apps/apps/bwa-mem2-2.0pre2_x64-linux/bwa-mem2 mem -t 32 /storage/home/users/pjt6/fly_selective_sweeps/genome/Drosophila_pseudoobscura.Dpse_3.0_.dna.toplevel.fa s132_R1_paired.fq.gz s132_R2_paired.fq.gz | samtools view -@32 -b -o ./bams/s132.bam - 
# picard SortSam INPUT=./bams/s132.bam OUTPUT=./bams/s132_sorted.bam SORT_ORDER=coordinate VALIDATION_STRINGENCY=SILENT
# picard MarkDuplicates  INPUT=./bams/s132_sorted.bam  OUTPUT=./bams/s132_sorted_marked.bam METRICS_FILE=s132_metrics.txt ASSUME_SORTED=true VALIDATION_STRINGENCY=SILENT
/storage/home/users/pjt6/shelf_apps/apps/bwa-mem2-2.0pre2_x64-linux/bwa-mem2 mem -t 32 /storage/home/users/pjt6/fly_selective_sweeps/genome/Drosophila_pseudoobscura.Dpse_3.0_.dna.toplevel.fa s133_R1_paired.fq.gz s133_R2_paired.fq.gz | samtools view -@32 -b -o ./bams/s133.bam - 
# picard SortSam INPUT=./bams/s133.bam OUTPUT=./bams/s133_sorted.bam SORT_ORDER=coordinate VALIDATION_STRINGENCY=SILENT
# picard MarkDuplicates  INPUT=./bams/s133_sorted.bam  OUTPUT=./bams/s133_sorted_marked.bam METRICS_FILE=s133_metrics.txt ASSUME_SORTED=true VALIDATION_STRINGENCY=SILENT
/storage/home/users/pjt6/shelf_apps/apps/bwa-mem2-2.0pre2_x64-linux/bwa-mem2 mem -t 32 /storage/home/users/pjt6/fly_selective_sweeps/genome/Drosophila_pseudoobscura.Dpse_3.0_.dna.toplevel.fa s134_R1_paired.fq.gz s134_R2_paired.fq.gz | samtools view -@32 -b -o ./bams/s134.bam - 
# picard SortSam INPUT=./bams/s134.bam OUTPUT=./bams/s134_sorted.bam SORT_ORDER=coordinate VALIDATION_STRINGENCY=SILENT
# picard MarkDuplicates  INPUT=./bams/s134_sorted.bam  OUTPUT=./bams/s134_sorted_marked.bam METRICS_FILE=s134_metrics.txt ASSUME_SORTED=true VALIDATION_STRINGENCY=SILENT
/storage/home/users/pjt6/shelf_apps/apps/bwa-mem2-2.0pre2_x64-linux/bwa-mem2 mem -t 32 /storage/home/users/pjt6/fly_selective_sweeps/genome/Drosophila_pseudoobscura.Dpse_3.0_.dna.toplevel.fa s135_R1_paired.fq.gz s135_R2_paired.fq.gz | samtools view -@32 -b -o ./bams/s135.bam - 
# picard SortSam INPUT=./bams/s135.bam OUTPUT=./bams/s135_sorted.bam SORT_ORDER=coordinate VALIDATION_STRINGENCY=SILENT
# picard MarkDuplicates  INPUT=./bams/s135_sorted.bam  OUTPUT=./bams/s135_sorted_marked.bam METRICS_FILE=s135_metrics.txt ASSUME_SORTED=true VALIDATION_STRINGENCY=SILENT
/storage/home/users/pjt6/shelf_apps/apps/bwa-mem2-2.0pre2_x64-linux/bwa-mem2 mem -t 32 /storage/home/users/pjt6/fly_selective_sweeps/genome/Drosophila_pseudoobscura.Dpse_3.0_.dna.toplevel.fa s136_R1_paired.fq.gz s136_R2_paired.fq.gz | samtools view -@32 -b -o ./bams/s136.bam - 
# picard SortSam INPUT=./bams/s136.bam OUTPUT=./bams/s136_sorted.bam SORT_ORDER=coordinate VALIDATION_STRINGENCY=SILENT
# picard MarkDuplicates  INPUT=./bams/s136_sorted.bam  OUTPUT=./bams/s136_sorted_marked.bam METRICS_FILE=s136_metrics.txt ASSUME_SORTED=true VALIDATION_STRINGENCY=SILENT
/storage/home/users/pjt6/shelf_apps/apps/bwa-mem2-2.0pre2_x64-linux/bwa-mem2 mem -t 32 /storage/home/users/pjt6/fly_selective_sweeps/genome/Drosophila_pseudoobscura.Dpse_3.0_.dna.toplevel.fa s139_R1_paired.fq.gz s139_R2_paired.fq.gz | samtools view -@32 -b -o ./bams/s139.bam - 
# picard SortSam INPUT=./bams/s139.bam OUTPUT=./bams/s139_sorted.bam SORT_ORDER=coordinate VALIDATION_STRINGENCY=SILENT
# picard MarkDuplicates  INPUT=./bams/s139_sorted.bam  OUTPUT=./bams/s139_sorted_marked.bam METRICS_FILE=s139_metrics.txt ASSUME_SORTED=true VALIDATION_STRINGENCY=SILENT
/storage/home/users/pjt6/shelf_apps/apps/bwa-mem2-2.0pre2_x64-linux/bwa-mem2 mem -t 32 /storage/home/users/pjt6/fly_selective_sweeps/genome/Drosophila_pseudoobscura.Dpse_3.0_.dna.toplevel.fa s13_R1_paired.fq.gz s13_R2_paired.fq.gz | samtools view -@32 -b -o ./bams/s13.bam - 
# picard SortSam INPUT=./bams/s13.bam OUTPUT=./bams/s13_sorted.bam SORT_ORDER=coordinate VALIDATION_STRINGENCY=SILENT
# picard MarkDuplicates  INPUT=./bams/s13_sorted.bam  OUTPUT=./bams/s13_sorted_marked.bam METRICS_FILE=s13_metrics.txt ASSUME_SORTED=true VALIDATION_STRINGENCY=SILENT
/storage/home/users/pjt6/shelf_apps/apps/bwa-mem2-2.0pre2_x64-linux/bwa-mem2 mem -t 32 /storage/home/users/pjt6/fly_selective_sweeps/genome/Drosophila_pseudoobscura.Dpse_3.0_.dna.toplevel.fa s140_R1_paired.fq.gz s140_R2_paired.fq.gz | samtools view -@32 -b -o ./bams/s140.bam - 
# picard SortSam INPUT=./bams/s140.bam OUTPUT=./bams/s140_sorted.bam SORT_ORDER=coordinate VALIDATION_STRINGENCY=SILENT
# picard MarkDuplicates  INPUT=./bams/s140_sorted.bam  OUTPUT=./bams/s140_sorted_marked.bam METRICS_FILE=s140_metrics.txt ASSUME_SORTED=true VALIDATION_STRINGENCY=SILENT
/storage/home/users/pjt6/shelf_apps/apps/bwa-mem2-2.0pre2_x64-linux/bwa-mem2 mem -t 32 /storage/home/users/pjt6/fly_selective_sweeps/genome/Drosophila_pseudoobscura.Dpse_3.0_.dna.toplevel.fa s141_R1_paired.fq.gz s141_R2_paired.fq.gz | samtools view -@32 -b -o ./bams/s141.bam - 
# picard SortSam INPUT=./bams/s141.bam OUTPUT=./bams/s141_sorted.bam SORT_ORDER=coordinate VALIDATION_STRINGENCY=SILENT
# picard MarkDuplicates  INPUT=./bams/s141_sorted.bam  OUTPUT=./bams/s141_sorted_marked.bam METRICS_FILE=s141_metrics.txt ASSUME_SORTED=true VALIDATION_STRINGENCY=SILENT
/storage/home/users/pjt6/shelf_apps/apps/bwa-mem2-2.0pre2_x64-linux/bwa-mem2 mem -t 32 /storage/home/users/pjt6/fly_selective_sweeps/genome/Drosophila_pseudoobscura.Dpse_3.0_.dna.toplevel.fa s142_R1_paired.fq.gz s142_R2_paired.fq.gz | samtools view -@32 -b -o ./bams/s142.bam - 
# picard SortSam INPUT=./bams/s142.bam OUTPUT=./bams/s142_sorted.bam SORT_ORDER=coordinate VALIDATION_STRINGENCY=SILENT
# picard MarkDuplicates  INPUT=./bams/s142_sorted.bam  OUTPUT=./bams/s142_sorted_marked.bam METRICS_FILE=s142_metrics.txt ASSUME_SORTED=true VALIDATION_STRINGENCY=SILENT
/storage/home/users/pjt6/shelf_apps/apps/bwa-mem2-2.0pre2_x64-linux/bwa-mem2 mem -t 32 /storage/home/users/pjt6/fly_selective_sweeps/genome/Drosophila_pseudoobscura.Dpse_3.0_.dna.toplevel.fa s143_R1_paired.fq.gz s143_R2_paired.fq.gz | samtools view -@32 -b -o ./bams/s143.bam - 
# picard SortSam INPUT=./bams/s143.bam OUTPUT=./bams/s143_sorted.bam SORT_ORDER=coordinate VALIDATION_STRINGENCY=SILENT
# picard MarkDuplicates  INPUT=./bams/s143_sorted.bam  OUTPUT=./bams/s143_sorted_marked.bam METRICS_FILE=s143_metrics.txt ASSUME_SORTED=true VALIDATION_STRINGENCY=SILENT
/storage/home/users/pjt6/shelf_apps/apps/bwa-mem2-2.0pre2_x64-linux/bwa-mem2 mem -t 32 /storage/home/users/pjt6/fly_selective_sweeps/genome/Drosophila_pseudoobscura.Dpse_3.0_.dna.toplevel.fa s144_R1_paired.fq.gz s144_R2_paired.fq.gz | samtools view -@32 -b -o ./bams/s144.bam - 
# picard SortSam INPUT=./bams/s144.bam OUTPUT=./bams/s144_sorted.bam SORT_ORDER=coordinate VALIDATION_STRINGENCY=SILENT
# picard MarkDuplicates  INPUT=./bams/s144_sorted.bam  OUTPUT=./bams/s144_sorted_marked.bam METRICS_FILE=s144_metrics.txt ASSUME_SORTED=true VALIDATION_STRINGENCY=SILENT
/storage/home/users/pjt6/shelf_apps/apps/bwa-mem2-2.0pre2_x64-linux/bwa-mem2 mem -t 32 /storage/home/users/pjt6/fly_selective_sweeps/genome/Drosophila_pseudoobscura.Dpse_3.0_.dna.toplevel.fa s145_R1_paired.fq.gz s145_R2_paired.fq.gz | samtools view -@32 -b -o ./bams/s145.bam - 
# picard SortSam INPUT=./bams/s145.bam OUTPUT=./bams/s145_sorted.bam SORT_ORDER=coordinate VALIDATION_STRINGENCY=SILENT
# picard MarkDuplicates  INPUT=./bams/s145_sorted.bam  OUTPUT=./bams/s145_sorted_marked.bam METRICS_FILE=s145_metrics.txt ASSUME_SORTED=true VALIDATION_STRINGENCY=SILENT
/storage/home/users/pjt6/shelf_apps/apps/bwa-mem2-2.0pre2_x64-linux/bwa-mem2 mem -t 32 /storage/home/users/pjt6/fly_selective_sweeps/genome/Drosophila_pseudoobscura.Dpse_3.0_.dna.toplevel.fa s146_R1_paired.fq.gz s146_R2_paired.fq.gz | samtools view -@32 -b -o ./bams/s146.bam - 
# picard SortSam INPUT=./bams/s146.bam OUTPUT=./bams/s146_sorted.bam SORT_ORDER=coordinate VALIDATION_STRINGENCY=SILENT
# picard MarkDuplicates  INPUT=./bams/s146_sorted.bam  OUTPUT=./bams/s146_sorted_marked.bam METRICS_FILE=s146_metrics.txt ASSUME_SORTED=true VALIDATION_STRINGENCY=SILENT
/storage/home/users/pjt6/shelf_apps/apps/bwa-mem2-2.0pre2_x64-linux/bwa-mem2 mem -t 32 /storage/home/users/pjt6/fly_selective_sweeps/genome/Drosophila_pseudoobscura.Dpse_3.0_.dna.toplevel.fa s147_R1_paired.fq.gz s147_R2_paired.fq.gz | samtools view -@32 -b -o ./bams/s147.bam - 
# picard SortSam INPUT=./bams/s147.bam OUTPUT=./bams/s147_sorted.bam SORT_ORDER=coordinate VALIDATION_STRINGENCY=SILENT
# picard MarkDuplicates  INPUT=./bams/s147_sorted.bam  OUTPUT=./bams/s147_sorted_marked.bam METRICS_FILE=s147_metrics.txt ASSUME_SORTED=true VALIDATION_STRINGENCY=SILENT
/storage/home/users/pjt6/shelf_apps/apps/bwa-mem2-2.0pre2_x64-linux/bwa-mem2 mem -t 32 /storage/home/users/pjt6/fly_selective_sweeps/genome/Drosophila_pseudoobscura.Dpse_3.0_.dna.toplevel.fa s148_R1_paired.fq.gz s148_R2_paired.fq.gz | samtools view -@32 -b -o ./bams/s148.bam - 
# picard SortSam INPUT=./bams/s148.bam OUTPUT=./bams/s148_sorted.bam SORT_ORDER=coordinate VALIDATION_STRINGENCY=SILENT
# picard MarkDuplicates  INPUT=./bams/s148_sorted.bam  OUTPUT=./bams/s148_sorted_marked.bam METRICS_FILE=s148_metrics.txt ASSUME_SORTED=true VALIDATION_STRINGENCY=SILENT
/storage/home/users/pjt6/shelf_apps/apps/bwa-mem2-2.0pre2_x64-linux/bwa-mem2 mem -t 32 /storage/home/users/pjt6/fly_selective_sweeps/genome/Drosophila_pseudoobscura.Dpse_3.0_.dna.toplevel.fa s149_R1_paired.fq.gz s149_R2_paired.fq.gz | samtools view -@32 -b -o ./bams/s149.bam - 
# picard SortSam INPUT=./bams/s149.bam OUTPUT=./bams/s149_sorted.bam SORT_ORDER=coordinate VALIDATION_STRINGENCY=SILENT
# picard MarkDuplicates  INPUT=./bams/s149_sorted.bam  OUTPUT=./bams/s149_sorted_marked.bam METRICS_FILE=s149_metrics.txt ASSUME_SORTED=true VALIDATION_STRINGENCY=SILENT
/storage/home/users/pjt6/shelf_apps/apps/bwa-mem2-2.0pre2_x64-linux/bwa-mem2 mem -t 32 /storage/home/users/pjt6/fly_selective_sweeps/genome/Drosophila_pseudoobscura.Dpse_3.0_.dna.toplevel.fa s151_R1_paired.fq.gz s151_R2_paired.fq.gz | samtools view -@32 -b -o ./bams/s151.bam - 
# picard SortSam INPUT=./bams/s151.bam OUTPUT=./bams/s151_sorted.bam SORT_ORDER=coordinate VALIDATION_STRINGENCY=SILENT
# picard MarkDuplicates  INPUT=./bams/s151_sorted.bam  OUTPUT=./bams/s151_sorted_marked.bam METRICS_FILE=s151_metrics.txt ASSUME_SORTED=true VALIDATION_STRINGENCY=SILENT
/storage/home/users/pjt6/shelf_apps/apps/bwa-mem2-2.0pre2_x64-linux/bwa-mem2 mem -t 32 /storage/home/users/pjt6/fly_selective_sweeps/genome/Drosophila_pseudoobscura.Dpse_3.0_.dna.toplevel.fa s154_R1_paired.fq.gz s154_R2_paired.fq.gz | samtools view -@32 -b -o ./bams/s154.bam - 
# picard SortSam INPUT=./bams/s154.bam OUTPUT=./bams/s154_sorted.bam SORT_ORDER=coordinate VALIDATION_STRINGENCY=SILENT
# picard MarkDuplicates  INPUT=./bams/s154_sorted.bam  OUTPUT=./bams/s154_sorted_marked.bam METRICS_FILE=s154_metrics.txt ASSUME_SORTED=true VALIDATION_STRINGENCY=SILENT
/storage/home/users/pjt6/shelf_apps/apps/bwa-mem2-2.0pre2_x64-linux/bwa-mem2 mem -t 32 /storage/home/users/pjt6/fly_selective_sweeps/genome/Drosophila_pseudoobscura.Dpse_3.0_.dna.toplevel.fa s155_R1_paired.fq.gz s155_R2_paired.fq.gz | samtools view -@32 -b -o ./bams/s155.bam - 
# picard SortSam INPUT=./bams/s155.bam OUTPUT=./bams/s155_sorted.bam SORT_ORDER=coordinate VALIDATION_STRINGENCY=SILENT
# picard MarkDuplicates  INPUT=./bams/s155_sorted.bam  OUTPUT=./bams/s155_sorted_marked.bam METRICS_FILE=s155_metrics.txt ASSUME_SORTED=true VALIDATION_STRINGENCY=SILENT
/storage/home/users/pjt6/shelf_apps/apps/bwa-mem2-2.0pre2_x64-linux/bwa-mem2 mem -t 32 /storage/home/users/pjt6/fly_selective_sweeps/genome/Drosophila_pseudoobscura.Dpse_3.0_.dna.toplevel.fa s156_R1_paired.fq.gz s156_R2_paired.fq.gz | samtools view -@32 -b -o ./bams/s156.bam - 
# picard SortSam INPUT=./bams/s156.bam OUTPUT=./bams/s156_sorted.bam SORT_ORDER=coordinate VALIDATION_STRINGENCY=SILENT
# picard MarkDuplicates  INPUT=./bams/s156_sorted.bam  OUTPUT=./bams/s156_sorted_marked.bam METRICS_FILE=s156_metrics.txt ASSUME_SORTED=true VALIDATION_STRINGENCY=SILENT
/storage/home/users/pjt6/shelf_apps/apps/bwa-mem2-2.0pre2_x64-linux/bwa-mem2 mem -t 32 /storage/home/users/pjt6/fly_selective_sweeps/genome/Drosophila_pseudoobscura.Dpse_3.0_.dna.toplevel.fa s157_R1_paired.fq.gz s157_R2_paired.fq.gz | samtools view -@32 -b -o ./bams/s157.bam - 
# picard SortSam INPUT=./bams/s157.bam OUTPUT=./bams/s157_sorted.bam SORT_ORDER=coordinate VALIDATION_STRINGENCY=SILENT
# picard MarkDuplicates  INPUT=./bams/s157_sorted.bam  OUTPUT=./bams/s157_sorted_marked.bam METRICS_FILE=s157_metrics.txt ASSUME_SORTED=true VALIDATION_STRINGENCY=SILENT
/storage/home/users/pjt6/shelf_apps/apps/bwa-mem2-2.0pre2_x64-linux/bwa-mem2 mem -t 32 /storage/home/users/pjt6/fly_selective_sweeps/genome/Drosophila_pseudoobscura.Dpse_3.0_.dna.toplevel.fa s158_R1_paired.fq.gz s158_R2_paired.fq.gz | samtools view -@32 -b -o ./bams/s158.bam - 
# picard SortSam INPUT=./bams/s158.bam OUTPUT=./bams/s158_sorted.bam SORT_ORDER=coordinate VALIDATION_STRINGENCY=SILENT
# picard MarkDuplicates  INPUT=./bams/s158_sorted.bam  OUTPUT=./bams/s158_sorted_marked.bam METRICS_FILE=s158_metrics.txt ASSUME_SORTED=true VALIDATION_STRINGENCY=SILENT
/storage/home/users/pjt6/shelf_apps/apps/bwa-mem2-2.0pre2_x64-linux/bwa-mem2 mem -t 32 /storage/home/users/pjt6/fly_selective_sweeps/genome/Drosophila_pseudoobscura.Dpse_3.0_.dna.toplevel.fa s159_R1_paired.fq.gz s159_R2_paired.fq.gz | samtools view -@32 -b -o ./bams/s159.bam - 
# picard SortSam INPUT=./bams/s159.bam OUTPUT=./bams/s159_sorted.bam SORT_ORDER=coordinate VALIDATION_STRINGENCY=SILENT
# picard MarkDuplicates  INPUT=./bams/s159_sorted.bam  OUTPUT=./bams/s159_sorted_marked.bam METRICS_FILE=s159_metrics.txt ASSUME_SORTED=true VALIDATION_STRINGENCY=SILENT
/storage/home/users/pjt6/shelf_apps/apps/bwa-mem2-2.0pre2_x64-linux/bwa-mem2 mem -t 32 /storage/home/users/pjt6/fly_selective_sweeps/genome/Drosophila_pseudoobscura.Dpse_3.0_.dna.toplevel.fa s320_R1_paired.fq.gz s320_R2_paired.fq.gz | samtools view -@32 -b -o ./bams/s320.bam - 
# picard SortSam INPUT=./bams/s320.bam OUTPUT=./bams/s320_sorted.bam SORT_ORDER=coordinate VALIDATION_STRINGENCY=SILENT
# picard MarkDuplicates  INPUT=./bams/s320_sorted.bam  OUTPUT=./bams/s320_sorted_marked.bam METRICS_FILE=s320_metrics.txt ASSUME_SORTED=true VALIDATION_STRINGENCY=SILENT
/storage/home/users/pjt6/shelf_apps/apps/bwa-mem2-2.0pre2_x64-linux/bwa-mem2 mem -t 32 /storage/home/users/pjt6/fly_selective_sweeps/genome/Drosophila_pseudoobscura.Dpse_3.0_.dna.toplevel.fa s321_R1_paired.fq.gz s321_R2_paired.fq.gz | samtools view -@32 -b -o ./bams/s321.bam - 
# picard SortSam INPUT=./bams/s321.bam OUTPUT=./bams/s321_sorted.bam SORT_ORDER=coordinate VALIDATION_STRINGENCY=SILENT
# picard MarkDuplicates  INPUT=./bams/s321_sorted.bam  OUTPUT=./bams/s321_sorted_marked.bam METRICS_FILE=s321_metrics.txt ASSUME_SORTED=true VALIDATION_STRINGENCY=SILENT
/storage/home/users/pjt6/shelf_apps/apps/bwa-mem2-2.0pre2_x64-linux/bwa-mem2 mem -t 32 /storage/home/users/pjt6/fly_selective_sweeps/genome/Drosophila_pseudoobscura.Dpse_3.0_.dna.toplevel.fa s322_R1_paired.fq.gz s322_R2_paired.fq.gz | samtools view -@32 -b -o ./bams/s322.bam - 
# picard SortSam INPUT=./bams/s322.bam OUTPUT=./bams/s322_sorted.bam SORT_ORDER=coordinate VALIDATION_STRINGENCY=SILENT
# picard MarkDuplicates  INPUT=./bams/s322_sorted.bam  OUTPUT=./bams/s322_sorted_marked.bam METRICS_FILE=s322_metrics.txt ASSUME_SORTED=true VALIDATION_STRINGENCY=SILENT
/storage/home/users/pjt6/shelf_apps/apps/bwa-mem2-2.0pre2_x64-linux/bwa-mem2 mem -t 32 /storage/home/users/pjt6/fly_selective_sweeps/genome/Drosophila_pseudoobscura.Dpse_3.0_.dna.toplevel.fa s323_R1_paired.fq.gz s323_R2_paired.fq.gz | samtools view -@32 -b -o ./bams/s323.bam - 
# picard SortSam INPUT=./bams/s323.bam OUTPUT=./bams/s323_sorted.bam SORT_ORDER=coordinate VALIDATION_STRINGENCY=SILENT
# picard MarkDuplicates  INPUT=./bams/s323_sorted.bam  OUTPUT=./bams/s323_sorted_marked.bam METRICS_FILE=s323_metrics.txt ASSUME_SORTED=true VALIDATION_STRINGENCY=SILENT
/storage/home/users/pjt6/shelf_apps/apps/bwa-mem2-2.0pre2_x64-linux/bwa-mem2 mem -t 32 /storage/home/users/pjt6/fly_selective_sweeps/genome/Drosophila_pseudoobscura.Dpse_3.0_.dna.toplevel.fa s324_R1_paired.fq.gz s324_R2_paired.fq.gz | samtools view -@32 -b -o ./bams/s324.bam - 
# picard SortSam INPUT=./bams/s324.bam OUTPUT=./bams/s324_sorted.bam SORT_ORDER=coordinate VALIDATION_STRINGENCY=SILENT
# picard MarkDuplicates  INPUT=./bams/s324_sorted.bam  OUTPUT=./bams/s324_sorted_marked.bam METRICS_FILE=s324_metrics.txt ASSUME_SORTED=true VALIDATION_STRINGENCY=SILENT
/storage/home/users/pjt6/shelf_apps/apps/bwa-mem2-2.0pre2_x64-linux/bwa-mem2 mem -t 32 /storage/home/users/pjt6/fly_selective_sweeps/genome/Drosophila_pseudoobscura.Dpse_3.0_.dna.toplevel.fa s325_R1_paired.fq.gz s325_R2_paired.fq.gz | samtools view -@32 -b -o ./bams/s325.bam - 
# picard SortSam INPUT=./bams/s325.bam OUTPUT=./bams/s325_sorted.bam SORT_ORDER=coordinate VALIDATION_STRINGENCY=SILENT
# picard MarkDuplicates  INPUT=./bams/s325_sorted.bam  OUTPUT=./bams/s325_sorted_marked.bam METRICS_FILE=s325_metrics.txt ASSUME_SORTED=true VALIDATION_STRINGENCY=SILENT
/storage/home/users/pjt6/shelf_apps/apps/bwa-mem2-2.0pre2_x64-linux/bwa-mem2 mem -t 32 /storage/home/users/pjt6/fly_selective_sweeps/genome/Drosophila_pseudoobscura.Dpse_3.0_.dna.toplevel.fa s17_R1_paired.fq.gz s17_R2_paired.fq.gz | samtools view -@32 -b -o ./bams/s17.bam - 
# picard SortSam INPUT=./bams/s17.bam OUTPUT=./bams/s17_sorted.bam SORT_ORDER=coordinate VALIDATION_STRINGENCY=SILENT
# picard MarkDuplicates  INPUT=./bams/s17_sorted.bam  OUTPUT=./bams/s17_sorted_marked.bam METRICS_FILE=s17_metrics.txt ASSUME_SORTED=true VALIDATION_STRINGENCY=SILENT
/storage/home/users/pjt6/shelf_apps/apps/bwa-mem2-2.0pre2_x64-linux/bwa-mem2 mem -t 32 /storage/home/users/pjt6/fly_selective_sweeps/genome/Drosophila_pseudoobscura.Dpse_3.0_.dna.toplevel.fa s18_R1_paired.fq.gz s18_R2_paired.fq.gz | samtools view -@32 -b -o ./bams/s18.bam - 
# picard SortSam INPUT=./bams/s18.bam OUTPUT=./bams/s18_sorted.bam SORT_ORDER=coordinate VALIDATION_STRINGENCY=SILENT
# picard MarkDuplicates  INPUT=./bams/s18_sorted.bam  OUTPUT=./bams/s18_sorted_marked.bam METRICS_FILE=s18_metrics.txt ASSUME_SORTED=true VALIDATION_STRINGENCY=SILENT
/storage/home/users/pjt6/shelf_apps/apps/bwa-mem2-2.0pre2_x64-linux/bwa-mem2 mem -t 32 /storage/home/users/pjt6/fly_selective_sweeps/genome/Drosophila_pseudoobscura.Dpse_3.0_.dna.toplevel.fa s1_R1_paired.fq.gz s1_R2_paired.fq.gz | samtools view -@32 -b -o ./bams/s1.bam - 
# picard SortSam INPUT=./bams/s1.bam OUTPUT=./bams/s1_sorted.bam SORT_ORDER=coordinate VALIDATION_STRINGENCY=SILENT
# picard MarkDuplicates  INPUT=./bams/s1_sorted.bam  OUTPUT=./bams/s1_sorted_marked.bam METRICS_FILE=s1_metrics.txt ASSUME_SORTED=true VALIDATION_STRINGENCY=SILENT
/storage/home/users/pjt6/shelf_apps/apps/bwa-mem2-2.0pre2_x64-linux/bwa-mem2 mem -t 32 /storage/home/users/pjt6/fly_selective_sweeps/genome/Drosophila_pseudoobscura.Dpse_3.0_.dna.toplevel.fa s21_R1_paired.fq.gz s21_R2_paired.fq.gz | samtools view -@32 -b -o ./bams/s21.bam - 
# picard SortSam INPUT=./bams/s21.bam OUTPUT=./bams/s21_sorted.bam SORT_ORDER=coordinate VALIDATION_STRINGENCY=SILENT
# picard MarkDuplicates  INPUT=./bams/s21_sorted.bam  OUTPUT=./bams/s21_sorted_marked.bam METRICS_FILE=s21_metrics.txt ASSUME_SORTED=true VALIDATION_STRINGENCY=SILENT
/storage/home/users/pjt6/shelf_apps/apps/bwa-mem2-2.0pre2_x64-linux/bwa-mem2 mem -t 32 /storage/home/users/pjt6/fly_selective_sweeps/genome/Drosophila_pseudoobscura.Dpse_3.0_.dna.toplevel.fa s24_R1_paired.fq.gz s24_R2_paired.fq.gz | samtools view -@32 -b -o ./bams/s24.bam - 
# picard SortSam INPUT=./bams/s24.bam OUTPUT=./bams/s24_sorted.bam SORT_ORDER=coordinate VALIDATION_STRINGENCY=SILENT
# picard MarkDuplicates  INPUT=./bams/s24_sorted.bam  OUTPUT=./bams/s24_sorted_marked.bam METRICS_FILE=s24_metrics.txt ASSUME_SORTED=true VALIDATION_STRINGENCY=SILENT
/storage/home/users/pjt6/shelf_apps/apps/bwa-mem2-2.0pre2_x64-linux/bwa-mem2 mem -t 32 /storage/home/users/pjt6/fly_selective_sweeps/genome/Drosophila_pseudoobscura.Dpse_3.0_.dna.toplevel.fa s25_R1_paired.fq.gz s25_R2_paired.fq.gz | samtools view -@32 -b -o ./bams/s25.bam - 
# picard SortSam INPUT=./bams/s25.bam OUTPUT=./bams/s25_sorted.bam SORT_ORDER=coordinate VALIDATION_STRINGENCY=SILENT
# picard MarkDuplicates  INPUT=./bams/s25_sorted.bam  OUTPUT=./bams/s25_sorted_marked.bam METRICS_FILE=s25_metrics.txt ASSUME_SORTED=true VALIDATION_STRINGENCY=SILENT
/storage/home/users/pjt6/shelf_apps/apps/bwa-mem2-2.0pre2_x64-linux/bwa-mem2 mem -t 32 /storage/home/users/pjt6/fly_selective_sweeps/genome/Drosophila_pseudoobscura.Dpse_3.0_.dna.toplevel.fa s27_R1_paired.fq.gz s27_R2_paired.fq.gz | samtools view -@32 -b -o ./bams/s27.bam - 
# picard SortSam INPUT=./bams/s27.bam OUTPUT=./bams/s27_sorted.bam SORT_ORDER=coordinate VALIDATION_STRINGENCY=SILENT
# picard MarkDuplicates  INPUT=./bams/s27_sorted.bam  OUTPUT=./bams/s27_sorted_marked.bam METRICS_FILE=s27_metrics.txt ASSUME_SORTED=true VALIDATION_STRINGENCY=SILENT
/storage/home/users/pjt6/shelf_apps/apps/bwa-mem2-2.0pre2_x64-linux/bwa-mem2 mem -t 32 /storage/home/users/pjt6/fly_selective_sweeps/genome/Drosophila_pseudoobscura.Dpse_3.0_.dna.toplevel.fa s29_R1_paired.fq.gz s29_R2_paired.fq.gz | samtools view -@32 -b -o ./bams/s29.bam - 
# picard SortSam INPUT=./bams/s29.bam OUTPUT=./bams/s29_sorted.bam SORT_ORDER=coordinate VALIDATION_STRINGENCY=SILENT
# picard MarkDuplicates  INPUT=./bams/s29_sorted.bam  OUTPUT=./bams/s29_sorted_marked.bam METRICS_FILE=s29_metrics.txt ASSUME_SORTED=true VALIDATION_STRINGENCY=SILENT
/storage/home/users/pjt6/shelf_apps/apps/bwa-mem2-2.0pre2_x64-linux/bwa-mem2 mem -t 32 /storage/home/users/pjt6/fly_selective_sweeps/genome/Drosophila_pseudoobscura.Dpse_3.0_.dna.toplevel.fa s30_R1_paired.fq.gz s30_R2_paired.fq.gz | samtools view -@32 -b -o ./bams/s30.bam - 
# picard SortSam INPUT=./bams/s30.bam OUTPUT=./bams/s30_sorted.bam SORT_ORDER=coordinate VALIDATION_STRINGENCY=SILENT
# picard MarkDuplicates  INPUT=./bams/s30_sorted.bam  OUTPUT=./bams/s30_sorted_marked.bam METRICS_FILE=s30_metrics.txt ASSUME_SORTED=true VALIDATION_STRINGENCY=SILENT
/storage/home/users/pjt6/shelf_apps/apps/bwa-mem2-2.0pre2_x64-linux/bwa-mem2 mem -t 32 /storage/home/users/pjt6/fly_selective_sweeps/genome/Drosophila_pseudoobscura.Dpse_3.0_.dna.toplevel.fa s31_R1_paired.fq.gz s31_R2_paired.fq.gz | samtools view -@32 -b -o ./bams/s31.bam - 
# picard SortSam INPUT=./bams/s31.bam OUTPUT=./bams/s31_sorted.bam SORT_ORDER=coordinate VALIDATION_STRINGENCY=SILENT
# picard MarkDuplicates  INPUT=./bams/s31_sorted.bam  OUTPUT=./bams/s31_sorted_marked.bam METRICS_FILE=s31_metrics.txt ASSUME_SORTED=true VALIDATION_STRINGENCY=SILENT
/storage/home/users/pjt6/shelf_apps/apps/bwa-mem2-2.0pre2_x64-linux/bwa-mem2 mem -t 32 /storage/home/users/pjt6/fly_selective_sweeps/genome/Drosophila_pseudoobscura.Dpse_3.0_.dna.toplevel.fa s32_R1_paired.fq.gz s32_R2_paired.fq.gz | samtools view -@32 -b -o ./bams/s32.bam - 
# picard SortSam INPUT=./bams/s32.bam OUTPUT=./bams/s32_sorted.bam SORT_ORDER=coordinate VALIDATION_STRINGENCY=SILENT
# picard MarkDuplicates  INPUT=./bams/s32_sorted.bam  OUTPUT=./bams/s32_sorted_marked.bam METRICS_FILE=s32_metrics.txt ASSUME_SORTED=true VALIDATION_STRINGENCY=SILENT
/storage/home/users/pjt6/shelf_apps/apps/bwa-mem2-2.0pre2_x64-linux/bwa-mem2 mem -t 32 /storage/home/users/pjt6/fly_selective_sweeps/genome/Drosophila_pseudoobscura.Dpse_3.0_.dna.toplevel.fa s33_R1_paired.fq.gz s33_R2_paired.fq.gz | samtools view -@32 -b -o ./bams/s33.bam - 
# picard SortSam INPUT=./bams/s33.bam OUTPUT=./bams/s33_sorted.bam SORT_ORDER=coordinate VALIDATION_STRINGENCY=SILENT
# picard MarkDuplicates  INPUT=./bams/s33_sorted.bam  OUTPUT=./bams/s33_sorted_marked.bam METRICS_FILE=s33_metrics.txt ASSUME_SORTED=true VALIDATION_STRINGENCY=SILENT
/storage/home/users/pjt6/shelf_apps/apps/bwa-mem2-2.0pre2_x64-linux/bwa-mem2 mem -t 32 /storage/home/users/pjt6/fly_selective_sweeps/genome/Drosophila_pseudoobscura.Dpse_3.0_.dna.toplevel.fa s34_R1_paired.fq.gz s34_R2_paired.fq.gz | samtools view -@32 -b -o ./bams/s34.bam - 
# picard SortSam INPUT=./bams/s34.bam OUTPUT=./bams/s34_sorted.bam SORT_ORDER=coordinate VALIDATION_STRINGENCY=SILENT
# picard MarkDuplicates  INPUT=./bams/s34_sorted.bam  OUTPUT=./bams/s34_sorted_marked.bam METRICS_FILE=s34_metrics.txt ASSUME_SORTED=true VALIDATION_STRINGENCY=SILENT
/storage/home/users/pjt6/shelf_apps/apps/bwa-mem2-2.0pre2_x64-linux/bwa-mem2 mem -t 32 /storage/home/users/pjt6/fly_selective_sweeps/genome/Drosophila_pseudoobscura.Dpse_3.0_.dna.toplevel.fa s35_R1_paired.fq.gz s35_R2_paired.fq.gz | samtools view -@32 -b -o ./bams/s35.bam - 
# picard SortSam INPUT=./bams/s35.bam OUTPUT=./bams/s35_sorted.bam SORT_ORDER=coordinate VALIDATION_STRINGENCY=SILENT
# picard MarkDuplicates  INPUT=./bams/s35_sorted.bam  OUTPUT=./bams/s35_sorted_marked.bam METRICS_FILE=s35_metrics.txt ASSUME_SORTED=true VALIDATION_STRINGENCY=SILENT
/storage/home/users/pjt6/shelf_apps/apps/bwa-mem2-2.0pre2_x64-linux/bwa-mem2 mem -t 32 /storage/home/users/pjt6/fly_selective_sweeps/genome/Drosophila_pseudoobscura.Dpse_3.0_.dna.toplevel.fa s37_R1_paired.fq.gz s37_R2_paired.fq.gz | samtools view -@32 -b -o ./bams/s37.bam - 
# picard SortSam INPUT=./bams/s37.bam OUTPUT=./bams/s37_sorted.bam SORT_ORDER=coordinate VALIDATION_STRINGENCY=SILENT
# picard MarkDuplicates  INPUT=./bams/s37_sorted.bam  OUTPUT=./bams/s37_sorted_marked.bam METRICS_FILE=s37_metrics.txt ASSUME_SORTED=true VALIDATION_STRINGENCY=SILENT
/storage/home/users/pjt6/shelf_apps/apps/bwa-mem2-2.0pre2_x64-linux/bwa-mem2 mem -t 32 /storage/home/users/pjt6/fly_selective_sweeps/genome/Drosophila_pseudoobscura.Dpse_3.0_.dna.toplevel.fa s39_R1_paired.fq.gz s39_R2_paired.fq.gz | samtools view -@32 -b -o ./bams/s39.bam - 
# picard SortSam INPUT=./bams/s39.bam OUTPUT=./bams/s39_sorted.bam SORT_ORDER=coordinate VALIDATION_STRINGENCY=SILENT
# picard MarkDuplicates  INPUT=./bams/s39_sorted.bam  OUTPUT=./bams/s39_sorted_marked.bam METRICS_FILE=s39_metrics.txt ASSUME_SORTED=true VALIDATION_STRINGENCY=SILENT
/storage/home/users/pjt6/shelf_apps/apps/bwa-mem2-2.0pre2_x64-linux/bwa-mem2 mem -t 32 /storage/home/users/pjt6/fly_selective_sweeps/genome/Drosophila_pseudoobscura.Dpse_3.0_.dna.toplevel.fa s3_R1_paired.fq.gz s3_R2_paired.fq.gz | samtools view -@32 -b -o ./bams/s3.bam - 
# picard SortSam INPUT=./bams/s3.bam OUTPUT=./bams/s3_sorted.bam SORT_ORDER=coordinate VALIDATION_STRINGENCY=SILENT
# picard MarkDuplicates  INPUT=./bams/s3_sorted.bam  OUTPUT=./bams/s3_sorted_marked.bam METRICS_FILE=s3_metrics.txt ASSUME_SORTED=true VALIDATION_STRINGENCY=SILENT
/storage/home/users/pjt6/shelf_apps/apps/bwa-mem2-2.0pre2_x64-linux/bwa-mem2 mem -t 32 /storage/home/users/pjt6/fly_selective_sweeps/genome/Drosophila_pseudoobscura.Dpse_3.0_.dna.toplevel.fa s40_R1_paired.fq.gz s40_R2_paired.fq.gz | samtools view -@32 -b -o ./bams/s40.bam - 
# picard SortSam INPUT=./bams/s40.bam OUTPUT=./bams/s40_sorted.bam SORT_ORDER=coordinate VALIDATION_STRINGENCY=SILENT
# picard MarkDuplicates  INPUT=./bams/s40_sorted.bam  OUTPUT=./bams/s40_sorted_marked.bam METRICS_FILE=s40_metrics.txt ASSUME_SORTED=true VALIDATION_STRINGENCY=SILENT
/storage/home/users/pjt6/shelf_apps/apps/bwa-mem2-2.0pre2_x64-linux/bwa-mem2 mem -t 32 /storage/home/users/pjt6/fly_selective_sweeps/genome/Drosophila_pseudoobscura.Dpse_3.0_.dna.toplevel.fa s42_R1_paired.fq.gz s42_R2_paired.fq.gz | samtools view -@32 -b -o ./bams/s42.bam - 
# picard SortSam INPUT=./bams/s42.bam OUTPUT=./bams/s42_sorted.bam SORT_ORDER=coordinate VALIDATION_STRINGENCY=SILENT
# picard MarkDuplicates  INPUT=./bams/s42_sorted.bam  OUTPUT=./bams/s42_sorted_marked.bam METRICS_FILE=s42_metrics.txt ASSUME_SORTED=true VALIDATION_STRINGENCY=SILENT
/storage/home/users/pjt6/shelf_apps/apps/bwa-mem2-2.0pre2_x64-linux/bwa-mem2 mem -t 32 /storage/home/users/pjt6/fly_selective_sweeps/genome/Drosophila_pseudoobscura.Dpse_3.0_.dna.toplevel.fa s43_R1_paired.fq.gz s43_R2_paired.fq.gz | samtools view -@32 -b -o ./bams/s43.bam - 
# picard SortSam INPUT=./bams/s43.bam OUTPUT=./bams/s43_sorted.bam SORT_ORDER=coordinate VALIDATION_STRINGENCY=SILENT
# picard MarkDuplicates  INPUT=./bams/s43_sorted.bam  OUTPUT=./bams/s43_sorted_marked.bam METRICS_FILE=s43_metrics.txt ASSUME_SORTED=true VALIDATION_STRINGENCY=SILENT
/storage/home/users/pjt6/shelf_apps/apps/bwa-mem2-2.0pre2_x64-linux/bwa-mem2 mem -t 32 /storage/home/users/pjt6/fly_selective_sweeps/genome/Drosophila_pseudoobscura.Dpse_3.0_.dna.toplevel.fa s46_R1_paired.fq.gz s46_R2_paired.fq.gz | samtools view -@32 -b -o ./bams/s46.bam - 
# picard SortSam INPUT=./bams/s46.bam OUTPUT=./bams/s46_sorted.bam SORT_ORDER=coordinate VALIDATION_STRINGENCY=SILENT
# picard MarkDuplicates  INPUT=./bams/s46_sorted.bam  OUTPUT=./bams/s46_sorted_marked.bam METRICS_FILE=s46_metrics.txt ASSUME_SORTED=true VALIDATION_STRINGENCY=SILENT
/storage/home/users/pjt6/shelf_apps/apps/bwa-mem2-2.0pre2_x64-linux/bwa-mem2 mem -t 32 /storage/home/users/pjt6/fly_selective_sweeps/genome/Drosophila_pseudoobscura.Dpse_3.0_.dna.toplevel.fa s47_R1_paired.fq.gz s47_R2_paired.fq.gz | samtools view -@32 -b -o ./bams/s47.bam - 
# picard SortSam INPUT=./bams/s47.bam OUTPUT=./bams/s47_sorted.bam SORT_ORDER=coordinate VALIDATION_STRINGENCY=SILENT
# picard MarkDuplicates  INPUT=./bams/s47_sorted.bam  OUTPUT=./bams/s47_sorted_marked.bam METRICS_FILE=s47_metrics.txt ASSUME_SORTED=true VALIDATION_STRINGENCY=SILENT
/storage/home/users/pjt6/shelf_apps/apps/bwa-mem2-2.0pre2_x64-linux/bwa-mem2 mem -t 32 /storage/home/users/pjt6/fly_selective_sweeps/genome/Drosophila_pseudoobscura.Dpse_3.0_.dna.toplevel.fa s48_R1_paired.fq.gz s48_R2_paired.fq.gz | samtools view -@32 -b -o ./bams/s48.bam - 
# picard SortSam INPUT=./bams/s48.bam OUTPUT=./bams/s48_sorted.bam SORT_ORDER=coordinate VALIDATION_STRINGENCY=SILENT
# picard MarkDuplicates  INPUT=./bams/s48_sorted.bam  OUTPUT=./bams/s48_sorted_marked.bam METRICS_FILE=s48_metrics.txt ASSUME_SORTED=true VALIDATION_STRINGENCY=SILENT
/storage/home/users/pjt6/shelf_apps/apps/bwa-mem2-2.0pre2_x64-linux/bwa-mem2 mem -t 32 /storage/home/users/pjt6/fly_selective_sweeps/genome/Drosophila_pseudoobscura.Dpse_3.0_.dna.toplevel.fa s49_R1_paired.fq.gz s49_R2_paired.fq.gz | samtools view -@32 -b -o ./bams/s49.bam - 
# picard SortSam INPUT=./bams/s49.bam OUTPUT=./bams/s49_sorted.bam SORT_ORDER=coordinate VALIDATION_STRINGENCY=SILENT
# picard MarkDuplicates  INPUT=./bams/s49_sorted.bam  OUTPUT=./bams/s49_sorted_marked.bam METRICS_FILE=s49_metrics.txt ASSUME_SORTED=true VALIDATION_STRINGENCY=SILENT
/storage/home/users/pjt6/shelf_apps/apps/bwa-mem2-2.0pre2_x64-linux/bwa-mem2 mem -t 32 /storage/home/users/pjt6/fly_selective_sweeps/genome/Drosophila_pseudoobscura.Dpse_3.0_.dna.toplevel.fa s50_R1_paired.fq.gz s50_R2_paired.fq.gz | samtools view -@32 -b -o ./bams/s50.bam - 
# picard SortSam INPUT=./bams/s50.bam OUTPUT=./bams/s50_sorted.bam SORT_ORDER=coordinate VALIDATION_STRINGENCY=SILENT
# picard MarkDuplicates  INPUT=./bams/s50_sorted.bam  OUTPUT=./bams/s50_sorted_marked.bam METRICS_FILE=s50_metrics.txt ASSUME_SORTED=true VALIDATION_STRINGENCY=SILENT
/storage/home/users/pjt6/shelf_apps/apps/bwa-mem2-2.0pre2_x64-linux/bwa-mem2 mem -t 32 /storage/home/users/pjt6/fly_selective_sweeps/genome/Drosophila_pseudoobscura.Dpse_3.0_.dna.toplevel.fa s51_R1_paired.fq.gz s51_R2_paired.fq.gz | samtools view -@32 -b -o ./bams/s51.bam - 
# picard SortSam INPUT=./bams/s51.bam OUTPUT=./bams/s51_sorted.bam SORT_ORDER=coordinate VALIDATION_STRINGENCY=SILENT
# picard MarkDuplicates  INPUT=./bams/s51_sorted.bam  OUTPUT=./bams/s51_sorted_marked.bam METRICS_FILE=s51_metrics.txt ASSUME_SORTED=true VALIDATION_STRINGENCY=SILENT
/storage/home/users/pjt6/shelf_apps/apps/bwa-mem2-2.0pre2_x64-linux/bwa-mem2 mem -t 32 /storage/home/users/pjt6/fly_selective_sweeps/genome/Drosophila_pseudoobscura.Dpse_3.0_.dna.toplevel.fa s53_R1_paired.fq.gz s53_R2_paired.fq.gz | samtools view -@32 -b -o ./bams/s53.bam - 
# picard SortSam INPUT=./bams/s53.bam OUTPUT=./bams/s53_sorted.bam SORT_ORDER=coordinate VALIDATION_STRINGENCY=SILENT
# picard MarkDuplicates  INPUT=./bams/s53_sorted.bam  OUTPUT=./bams/s53_sorted_marked.bam METRICS_FILE=s53_metrics.txt ASSUME_SORTED=true VALIDATION_STRINGENCY=SILENT
/storage/home/users/pjt6/shelf_apps/apps/bwa-mem2-2.0pre2_x64-linux/bwa-mem2 mem -t 32 /storage/home/users/pjt6/fly_selective_sweeps/genome/Drosophila_pseudoobscura.Dpse_3.0_.dna.toplevel.fa s54_R1_paired.fq.gz s54_R2_paired.fq.gz | samtools view -@32 -b -o ./bams/s54.bam - 
# picard SortSam INPUT=./bams/s54.bam OUTPUT=./bams/s54_sorted.bam SORT_ORDER=coordinate VALIDATION_STRINGENCY=SILENT
# picard MarkDuplicates  INPUT=./bams/s54_sorted.bam  OUTPUT=./bams/s54_sorted_marked.bam METRICS_FILE=s54_metrics.txt ASSUME_SORTED=true VALIDATION_STRINGENCY=SILENT
/storage/home/users/pjt6/shelf_apps/apps/bwa-mem2-2.0pre2_x64-linux/bwa-mem2 mem -t 32 /storage/home/users/pjt6/fly_selective_sweeps/genome/Drosophila_pseudoobscura.Dpse_3.0_.dna.toplevel.fa s55_R1_paired.fq.gz s55_R2_paired.fq.gz | samtools view -@32 -b -o ./bams/s55.bam - 
# picard SortSam INPUT=./bams/s55.bam OUTPUT=./bams/s55_sorted.bam SORT_ORDER=coordinate VALIDATION_STRINGENCY=SILENT
# picard MarkDuplicates  INPUT=./bams/s55_sorted.bam  OUTPUT=./bams/s55_sorted_marked.bam METRICS_FILE=s55_metrics.txt ASSUME_SORTED=true VALIDATION_STRINGENCY=SILENT
/storage/home/users/pjt6/shelf_apps/apps/bwa-mem2-2.0pre2_x64-linux/bwa-mem2 mem -t 32 /storage/home/users/pjt6/fly_selective_sweeps/genome/Drosophila_pseudoobscura.Dpse_3.0_.dna.toplevel.fa s56_R1_paired.fq.gz s56_R2_paired.fq.gz | samtools view -@32 -b -o ./bams/s56.bam - 
# picard SortSam INPUT=./bams/s56.bam OUTPUT=./bams/s56_sorted.bam SORT_ORDER=coordinate VALIDATION_STRINGENCY=SILENT
# picard MarkDuplicates  INPUT=./bams/s56_sorted.bam  OUTPUT=./bams/s56_sorted_marked.bam METRICS_FILE=s56_metrics.txt ASSUME_SORTED=true VALIDATION_STRINGENCY=SILENT
/storage/home/users/pjt6/shelf_apps/apps/bwa-mem2-2.0pre2_x64-linux/bwa-mem2 mem -t 32 /storage/home/users/pjt6/fly_selective_sweeps/genome/Drosophila_pseudoobscura.Dpse_3.0_.dna.toplevel.fa s57_R1_paired.fq.gz s57_R2_paired.fq.gz | samtools view -@32 -b -o ./bams/s57.bam - 
# picard SortSam INPUT=./bams/s57.bam OUTPUT=./bams/s57_sorted.bam SORT_ORDER=coordinate VALIDATION_STRINGENCY=SILENT
# picard MarkDuplicates  INPUT=./bams/s57_sorted.bam  OUTPUT=./bams/s57_sorted_marked.bam METRICS_FILE=s57_metrics.txt ASSUME_SORTED=true VALIDATION_STRINGENCY=SILENT
/storage/home/users/pjt6/shelf_apps/apps/bwa-mem2-2.0pre2_x64-linux/bwa-mem2 mem -t 32 /storage/home/users/pjt6/fly_selective_sweeps/genome/Drosophila_pseudoobscura.Dpse_3.0_.dna.toplevel.fa s58_R1_paired.fq.gz s58_R2_paired.fq.gz | samtools view -@32 -b -o ./bams/s58.bam - 
# picard SortSam INPUT=./bams/s58.bam OUTPUT=./bams/s58_sorted.bam SORT_ORDER=coordinate VALIDATION_STRINGENCY=SILENT
# picard MarkDuplicates  INPUT=./bams/s58_sorted.bam  OUTPUT=./bams/s58_sorted_marked.bam METRICS_FILE=s58_metrics.txt ASSUME_SORTED=true VALIDATION_STRINGENCY=SILENT
/storage/home/users/pjt6/shelf_apps/apps/bwa-mem2-2.0pre2_x64-linux/bwa-mem2 mem -t 32 /storage/home/users/pjt6/fly_selective_sweeps/genome/Drosophila_pseudoobscura.Dpse_3.0_.dna.toplevel.fa s59_R1_paired.fq.gz s59_R2_paired.fq.gz | samtools view -@32 -b -o ./bams/s59.bam - 
# picard SortSam INPUT=./bams/s59.bam OUTPUT=./bams/s59_sorted.bam SORT_ORDER=coordinate VALIDATION_STRINGENCY=SILENT
# picard MarkDuplicates  INPUT=./bams/s59_sorted.bam  OUTPUT=./bams/s59_sorted_marked.bam METRICS_FILE=s59_metrics.txt ASSUME_SORTED=true VALIDATION_STRINGENCY=SILENT
/storage/home/users/pjt6/shelf_apps/apps/bwa-mem2-2.0pre2_x64-linux/bwa-mem2 mem -t 32 /storage/home/users/pjt6/fly_selective_sweeps/genome/Drosophila_pseudoobscura.Dpse_3.0_.dna.toplevel.fa s5_R1_paired.fq.gz s5_R2_paired.fq.gz | samtools view -@32 -b -o ./bams/s5.bam - 
# picard SortSam INPUT=./bams/s5.bam OUTPUT=./bams/s5_sorted.bam SORT_ORDER=coordinate VALIDATION_STRINGENCY=SILENT
# picard MarkDuplicates  INPUT=./bams/s5_sorted.bam  OUTPUT=./bams/s5_sorted_marked.bam METRICS_FILE=s5_metrics.txt ASSUME_SORTED=true VALIDATION_STRINGENCY=SILENT
/storage/home/users/pjt6/shelf_apps/apps/bwa-mem2-2.0pre2_x64-linux/bwa-mem2 mem -t 32 /storage/home/users/pjt6/fly_selective_sweeps/genome/Drosophila_pseudoobscura.Dpse_3.0_.dna.toplevel.fa s60_R1_paired.fq.gz s60_R2_paired.fq.gz | samtools view -@32 -b -o ./bams/s60.bam - 
# picard SortSam INPUT=./bams/s60.bam OUTPUT=./bams/s60_sorted.bam SORT_ORDER=coordinate VALIDATION_STRINGENCY=SILENT
# picard MarkDuplicates  INPUT=./bams/s60_sorted.bam  OUTPUT=./bams/s60_sorted_marked.bam METRICS_FILE=s60_metrics.txt ASSUME_SORTED=true VALIDATION_STRINGENCY=SILENT
/storage/home/users/pjt6/shelf_apps/apps/bwa-mem2-2.0pre2_x64-linux/bwa-mem2 mem -t 32 /storage/home/users/pjt6/fly_selective_sweeps/genome/Drosophila_pseudoobscura.Dpse_3.0_.dna.toplevel.fa s61_R1_paired.fq.gz s61_R2_paired.fq.gz | samtools view -@32 -b -o ./bams/s61.bam - 
# picard SortSam INPUT=./bams/s61.bam OUTPUT=./bams/s61_sorted.bam SORT_ORDER=coordinate VALIDATION_STRINGENCY=SILENT
# picard MarkDuplicates  INPUT=./bams/s61_sorted.bam  OUTPUT=./bams/s61_sorted_marked.bam METRICS_FILE=s61_metrics.txt ASSUME_SORTED=true VALIDATION_STRINGENCY=SILENT
/storage/home/users/pjt6/shelf_apps/apps/bwa-mem2-2.0pre2_x64-linux/bwa-mem2 mem -t 32 /storage/home/users/pjt6/fly_selective_sweeps/genome/Drosophila_pseudoobscura.Dpse_3.0_.dna.toplevel.fa s62_R1_paired.fq.gz s62_R2_paired.fq.gz | samtools view -@32 -b -o ./bams/s62.bam - 
# picard SortSam INPUT=./bams/s62.bam OUTPUT=./bams/s62_sorted.bam SORT_ORDER=coordinate VALIDATION_STRINGENCY=SILENT
# picard MarkDuplicates  INPUT=./bams/s62_sorted.bam  OUTPUT=./bams/s62_sorted_marked.bam METRICS_FILE=s62_metrics.txt ASSUME_SORTED=true VALIDATION_STRINGENCY=SILENT
/storage/home/users/pjt6/shelf_apps/apps/bwa-mem2-2.0pre2_x64-linux/bwa-mem2 mem -t 32 /storage/home/users/pjt6/fly_selective_sweeps/genome/Drosophila_pseudoobscura.Dpse_3.0_.dna.toplevel.fa s63_R1_paired.fq.gz s63_R2_paired.fq.gz | samtools view -@32 -b -o ./bams/s63.bam - 
# picard SortSam INPUT=./bams/s63.bam OUTPUT=./bams/s63_sorted.bam SORT_ORDER=coordinate VALIDATION_STRINGENCY=SILENT
# picard MarkDuplicates  INPUT=./bams/s63_sorted.bam  OUTPUT=./bams/s63_sorted_marked.bam METRICS_FILE=s63_metrics.txt ASSUME_SORTED=true VALIDATION_STRINGENCY=SILENT
/storage/home/users/pjt6/shelf_apps/apps/bwa-mem2-2.0pre2_x64-linux/bwa-mem2 mem -t 32 /storage/home/users/pjt6/fly_selective_sweeps/genome/Drosophila_pseudoobscura.Dpse_3.0_.dna.toplevel.fa s64_R1_paired.fq.gz s64_R2_paired.fq.gz | samtools view -@32 -b -o ./bams/s64.bam - 
# picard SortSam INPUT=./bams/s64.bam OUTPUT=./bams/s64_sorted.bam SORT_ORDER=coordinate VALIDATION_STRINGENCY=SILENT
# picard MarkDuplicates  INPUT=./bams/s64_sorted.bam  OUTPUT=./bams/s64_sorted_marked.bam METRICS_FILE=s64_metrics.txt ASSUME_SORTED=true VALIDATION_STRINGENCY=SILENT
/storage/home/users/pjt6/shelf_apps/apps/bwa-mem2-2.0pre2_x64-linux/bwa-mem2 mem -t 32 /storage/home/users/pjt6/fly_selective_sweeps/genome/Drosophila_pseudoobscura.Dpse_3.0_.dna.toplevel.fa s67_R1_paired.fq.gz s67_R2_paired.fq.gz | samtools view -@32 -b -o ./bams/s67.bam - 
# picard SortSam INPUT=./bams/s67.bam OUTPUT=./bams/s67_sorted.bam SORT_ORDER=coordinate VALIDATION_STRINGENCY=SILENT
# picard MarkDuplicates  INPUT=./bams/s67_sorted.bam  OUTPUT=./bams/s67_sorted_marked.bam METRICS_FILE=s67_metrics.txt ASSUME_SORTED=true VALIDATION_STRINGENCY=SILENT
/storage/home/users/pjt6/shelf_apps/apps/bwa-mem2-2.0pre2_x64-linux/bwa-mem2 mem -t 32 /storage/home/users/pjt6/fly_selective_sweeps/genome/Drosophila_pseudoobscura.Dpse_3.0_.dna.toplevel.fa s68_R1_paired.fq.gz s68_R2_paired.fq.gz | samtools view -@32 -b -o ./bams/s68.bam - 
# picard SortSam INPUT=./bams/s68.bam OUTPUT=./bams/s68_sorted.bam SORT_ORDER=coordinate VALIDATION_STRINGENCY=SILENT
# picard MarkDuplicates  INPUT=./bams/s68_sorted.bam  OUTPUT=./bams/s68_sorted_marked.bam METRICS_FILE=s68_metrics.txt ASSUME_SORTED=true VALIDATION_STRINGENCY=SILENT
/storage/home/users/pjt6/shelf_apps/apps/bwa-mem2-2.0pre2_x64-linux/bwa-mem2 mem -t 32 /storage/home/users/pjt6/fly_selective_sweeps/genome/Drosophila_pseudoobscura.Dpse_3.0_.dna.toplevel.fa s69_R1_paired.fq.gz s69_R2_paired.fq.gz | samtools view -@32 -b -o ./bams/s69.bam - 
# picard SortSam INPUT=./bams/s69.bam OUTPUT=./bams/s69_sorted.bam SORT_ORDER=coordinate VALIDATION_STRINGENCY=SILENT
# picard MarkDuplicates  INPUT=./bams/s69_sorted.bam  OUTPUT=./bams/s69_sorted_marked.bam METRICS_FILE=s69_metrics.txt ASSUME_SORTED=true VALIDATION_STRINGENCY=SILENT
/storage/home/users/pjt6/shelf_apps/apps/bwa-mem2-2.0pre2_x64-linux/bwa-mem2 mem -t 32 /storage/home/users/pjt6/fly_selective_sweeps/genome/Drosophila_pseudoobscura.Dpse_3.0_.dna.toplevel.fa s6_R1_paired.fq.gz s6_R2_paired.fq.gz | samtools view -@32 -b -o ./bams/s6.bam - 
# picard SortSam INPUT=./bams/s6.bam OUTPUT=./bams/s6_sorted.bam SORT_ORDER=coordinate VALIDATION_STRINGENCY=SILENT
# picard MarkDuplicates  INPUT=./bams/s6_sorted.bam  OUTPUT=./bams/s6_sorted_marked.bam METRICS_FILE=s6_metrics.txt ASSUME_SORTED=true VALIDATION_STRINGENCY=SILENT
/storage/home/users/pjt6/shelf_apps/apps/bwa-mem2-2.0pre2_x64-linux/bwa-mem2 mem -t 32 /storage/home/users/pjt6/fly_selective_sweeps/genome/Drosophila_pseudoobscura.Dpse_3.0_.dna.toplevel.fa s70_R1_paired.fq.gz s70_R2_paired.fq.gz | samtools view -@32 -b -o ./bams/s70.bam - 
# picard SortSam INPUT=./bams/s70.bam OUTPUT=./bams/s70_sorted.bam SORT_ORDER=coordinate VALIDATION_STRINGENCY=SILENT
# picard MarkDuplicates  INPUT=./bams/s70_sorted.bam  OUTPUT=./bams/s70_sorted_marked.bam METRICS_FILE=s70_metrics.txt ASSUME_SORTED=true VALIDATION_STRINGENCY=SILENT
/storage/home/users/pjt6/shelf_apps/apps/bwa-mem2-2.0pre2_x64-linux/bwa-mem2 mem -t 32 /storage/home/users/pjt6/fly_selective_sweeps/genome/Drosophila_pseudoobscura.Dpse_3.0_.dna.toplevel.fa s72_R1_paired.fq.gz s72_R2_paired.fq.gz | samtools view -@32 -b -o ./bams/s72.bam - 
# picard SortSam INPUT=./bams/s72.bam OUTPUT=./bams/s72_sorted.bam SORT_ORDER=coordinate VALIDATION_STRINGENCY=SILENT
# picard MarkDuplicates  INPUT=./bams/s72_sorted.bam  OUTPUT=./bams/s72_sorted_marked.bam METRICS_FILE=s72_metrics.txt ASSUME_SORTED=true VALIDATION_STRINGENCY=SILENT
/storage/home/users/pjt6/shelf_apps/apps/bwa-mem2-2.0pre2_x64-linux/bwa-mem2 mem -t 32 /storage/home/users/pjt6/fly_selective_sweeps/genome/Drosophila_pseudoobscura.Dpse_3.0_.dna.toplevel.fa s73_R1_paired.fq.gz s73_R2_paired.fq.gz | samtools view -@32 -b -o ./bams/s73.bam - 
# picard SortSam INPUT=./bams/s73.bam OUTPUT=./bams/s73_sorted.bam SORT_ORDER=coordinate VALIDATION_STRINGENCY=SILENT
# picard MarkDuplicates  INPUT=./bams/s73_sorted.bam  OUTPUT=./bams/s73_sorted_marked.bam METRICS_FILE=s73_metrics.txt ASSUME_SORTED=true VALIDATION_STRINGENCY=SILENT
/storage/home/users/pjt6/shelf_apps/apps/bwa-mem2-2.0pre2_x64-linux/bwa-mem2 mem -t 32 /storage/home/users/pjt6/fly_selective_sweeps/genome/Drosophila_pseudoobscura.Dpse_3.0_.dna.toplevel.fa s74_R1_paired.fq.gz s74_R2_paired.fq.gz | samtools view -@32 -b -o ./bams/s74.bam - 
# picard SortSam INPUT=./bams/s74.bam OUTPUT=./bams/s74_sorted.bam SORT_ORDER=coordinate VALIDATION_STRINGENCY=SILENT
# picard MarkDuplicates  INPUT=./bams/s74_sorted.bam  OUTPUT=./bams/s74_sorted_marked.bam METRICS_FILE=s74_metrics.txt ASSUME_SORTED=true VALIDATION_STRINGENCY=SILENT
/storage/home/users/pjt6/shelf_apps/apps/bwa-mem2-2.0pre2_x64-linux/bwa-mem2 mem -t 32 /storage/home/users/pjt6/fly_selective_sweeps/genome/Drosophila_pseudoobscura.Dpse_3.0_.dna.toplevel.fa s76_R1_paired.fq.gz s76_R2_paired.fq.gz | samtools view -@32 -b -o ./bams/s76.bam - 
# picard SortSam INPUT=./bams/s76.bam OUTPUT=./bams/s76_sorted.bam SORT_ORDER=coordinate VALIDATION_STRINGENCY=SILENT
# picard MarkDuplicates  INPUT=./bams/s76_sorted.bam  OUTPUT=./bams/s76_sorted_marked.bam METRICS_FILE=s76_metrics.txt ASSUME_SORTED=true VALIDATION_STRINGENCY=SILENT
/storage/home/users/pjt6/shelf_apps/apps/bwa-mem2-2.0pre2_x64-linux/bwa-mem2 mem -t 32 /storage/home/users/pjt6/fly_selective_sweeps/genome/Drosophila_pseudoobscura.Dpse_3.0_.dna.toplevel.fa s77_R1_paired.fq.gz s77_R2_paired.fq.gz | samtools view -@32 -b -o ./bams/s77.bam - 
# picard SortSam INPUT=./bams/s77.bam OUTPUT=./bams/s77_sorted.bam SORT_ORDER=coordinate VALIDATION_STRINGENCY=SILENT
# picard MarkDuplicates  INPUT=./bams/s77_sorted.bam  OUTPUT=./bams/s77_sorted_marked.bam METRICS_FILE=s77_metrics.txt ASSUME_SORTED=true VALIDATION_STRINGENCY=SILENT
/storage/home/users/pjt6/shelf_apps/apps/bwa-mem2-2.0pre2_x64-linux/bwa-mem2 mem -t 32 /storage/home/users/pjt6/fly_selective_sweeps/genome/Drosophila_pseudoobscura.Dpse_3.0_.dna.toplevel.fa s78_R1_paired.fq.gz s78_R2_paired.fq.gz | samtools view -@32 -b -o ./bams/s78.bam - 
# picard SortSam INPUT=./bams/s78.bam OUTPUT=./bams/s78_sorted.bam SORT_ORDER=coordinate VALIDATION_STRINGENCY=SILENT
# picard MarkDuplicates  INPUT=./bams/s78_sorted.bam  OUTPUT=./bams/s78_sorted_marked.bam METRICS_FILE=s78_metrics.txt ASSUME_SORTED=true VALIDATION_STRINGENCY=SILENT
/storage/home/users/pjt6/shelf_apps/apps/bwa-mem2-2.0pre2_x64-linux/bwa-mem2 mem -t 32 /storage/home/users/pjt6/fly_selective_sweeps/genome/Drosophila_pseudoobscura.Dpse_3.0_.dna.toplevel.fa s7_R1_paired.fq.gz s7_R2_paired.fq.gz | samtools view -@32 -b -o ./bams/s7.bam - 
# picard SortSam INPUT=./bams/s7.bam OUTPUT=./bams/s7_sorted.bam SORT_ORDER=coordinate VALIDATION_STRINGENCY=SILENT
# picard MarkDuplicates  INPUT=./bams/s7_sorted.bam  OUTPUT=./bams/s7_sorted_marked.bam METRICS_FILE=s7_metrics.txt ASSUME_SORTED=true VALIDATION_STRINGENCY=SILENT
/storage/home/users/pjt6/shelf_apps/apps/bwa-mem2-2.0pre2_x64-linux/bwa-mem2 mem -t 32 /storage/home/users/pjt6/fly_selective_sweeps/genome/Drosophila_pseudoobscura.Dpse_3.0_.dna.toplevel.fa s80_R1_paired.fq.gz s80_R2_paired.fq.gz | samtools view -@32 -b -o ./bams/s80.bam - 
# picard SortSam INPUT=./bams/s80.bam OUTPUT=./bams/s80_sorted.bam SORT_ORDER=coordinate VALIDATION_STRINGENCY=SILENT
# picard MarkDuplicates  INPUT=./bams/s80_sorted.bam  OUTPUT=./bams/s80_sorted_marked.bam METRICS_FILE=s80_metrics.txt ASSUME_SORTED=true VALIDATION_STRINGENCY=SILENT
/storage/home/users/pjt6/shelf_apps/apps/bwa-mem2-2.0pre2_x64-linux/bwa-mem2 mem -t 32 /storage/home/users/pjt6/fly_selective_sweeps/genome/Drosophila_pseudoobscura.Dpse_3.0_.dna.toplevel.fa s81_R1_paired.fq.gz s81_R2_paired.fq.gz | samtools view -@32 -b -o ./bams/s81.bam - 
# picard SortSam INPUT=./bams/s81.bam OUTPUT=./bams/s81_sorted.bam SORT_ORDER=coordinate VALIDATION_STRINGENCY=SILENT
# picard MarkDuplicates  INPUT=./bams/s81_sorted.bam  OUTPUT=./bams/s81_sorted_marked.bam METRICS_FILE=s81_metrics.txt ASSUME_SORTED=true VALIDATION_STRINGENCY=SILENT
/storage/home/users/pjt6/shelf_apps/apps/bwa-mem2-2.0pre2_x64-linux/bwa-mem2 mem -t 32 /storage/home/users/pjt6/fly_selective_sweeps/genome/Drosophila_pseudoobscura.Dpse_3.0_.dna.toplevel.fa s82_R1_paired.fq.gz s82_R2_paired.fq.gz | samtools view -@32 -b -o ./bams/s82.bam - 
# picard SortSam INPUT=./bams/s82.bam OUTPUT=./bams/s82_sorted.bam SORT_ORDER=coordinate VALIDATION_STRINGENCY=SILENT
# picard MarkDuplicates  INPUT=./bams/s82_sorted.bam  OUTPUT=./bams/s82_sorted_marked.bam METRICS_FILE=s82_metrics.txt ASSUME_SORTED=true VALIDATION_STRINGENCY=SILENT
/storage/home/users/pjt6/shelf_apps/apps/bwa-mem2-2.0pre2_x64-linux/bwa-mem2 mem -t 32 /storage/home/users/pjt6/fly_selective_sweeps/genome/Drosophila_pseudoobscura.Dpse_3.0_.dna.toplevel.fa s83_R1_paired.fq.gz s83_R2_paired.fq.gz | samtools view -@32 -b -o ./bams/s83.bam - 
# picard SortSam INPUT=./bams/s83.bam OUTPUT=./bams/s83_sorted.bam SORT_ORDER=coordinate VALIDATION_STRINGENCY=SILENT
# picard MarkDuplicates  INPUT=./bams/s83_sorted.bam  OUTPUT=./bams/s83_sorted_marked.bam METRICS_FILE=s83_metrics.txt ASSUME_SORTED=true VALIDATION_STRINGENCY=SILENT
/storage/home/users/pjt6/shelf_apps/apps/bwa-mem2-2.0pre2_x64-linux/bwa-mem2 mem -t 32 /storage/home/users/pjt6/fly_selective_sweeps/genome/Drosophila_pseudoobscura.Dpse_3.0_.dna.toplevel.fa s8_R1_paired.fq.gz s8_R2_paired.fq.gz | samtools view -@32 -b -o ./bams/s8.bam - 
# picard SortSam INPUT=./bams/s8.bam OUTPUT=./bams/s8_sorted.bam SORT_ORDER=coordinate VALIDATION_STRINGENCY=SILENT
# picard MarkDuplicates  INPUT=./bams/s8_sorted.bam  OUTPUT=./bams/s8_sorted_marked.bam METRICS_FILE=s8_metrics.txt ASSUME_SORTED=true VALIDATION_STRINGENCY=SILENT
/storage/home/users/pjt6/shelf_apps/apps/bwa-mem2-2.0pre2_x64-linux/bwa-mem2 mem -t 32 /storage/home/users/pjt6/fly_selective_sweeps/genome/Drosophila_pseudoobscura.Dpse_3.0_.dna.toplevel.fa s90_R1_paired.fq.gz s90_R2_paired.fq.gz | samtools view -@32 -b -o ./bams/s90.bam - 
# picard SortSam INPUT=./bams/s90.bam OUTPUT=./bams/s90_sorted.bam SORT_ORDER=coordinate VALIDATION_STRINGENCY=SILENT
# picard MarkDuplicates  INPUT=./bams/s90_sorted.bam  OUTPUT=./bams/s90_sorted_marked.bam METRICS_FILE=s90_metrics.txt ASSUME_SORTED=true VALIDATION_STRINGENCY=SILENT
/storage/home/users/pjt6/shelf_apps/apps/bwa-mem2-2.0pre2_x64-linux/bwa-mem2 mem -t 32 /storage/home/users/pjt6/fly_selective_sweeps/genome/Drosophila_pseudoobscura.Dpse_3.0_.dna.toplevel.fa s92_R1_paired.fq.gz s92_R2_paired.fq.gz | samtools view -@32 -b -o ./bams/s92.bam - 
# picard SortSam INPUT=./bams/s92.bam OUTPUT=./bams/s92_sorted.bam SORT_ORDER=coordinate VALIDATION_STRINGENCY=SILENT
# picard MarkDuplicates  INPUT=./bams/s92_sorted.bam  OUTPUT=./bams/s92_sorted_marked.bam METRICS_FILE=s92_metrics.txt ASSUME_SORTED=true VALIDATION_STRINGENCY=SILENT
/storage/home/users/pjt6/shelf_apps/apps/bwa-mem2-2.0pre2_x64-linux/bwa-mem2 mem -t 32 /storage/home/users/pjt6/fly_selective_sweeps/genome/Drosophila_pseudoobscura.Dpse_3.0_.dna.toplevel.fa s95_R1_paired.fq.gz s95_R2_paired.fq.gz | samtools view -@32 -b -o ./bams/s95.bam - 
# picard SortSam INPUT=./bams/s95.bam OUTPUT=./bams/s95_sorted.bam SORT_ORDER=coordinate VALIDATION_STRINGENCY=SILENT
# picard MarkDuplicates  INPUT=./bams/s95_sorted.bam  OUTPUT=./bams/s95_sorted_marked.bam METRICS_FILE=s95_metrics.txt ASSUME_SORTED=true VALIDATION_STRINGENCY=SILENT
/storage/home/users/pjt6/shelf_apps/apps/bwa-mem2-2.0pre2_x64-linux/bwa-mem2 mem -t 32 /storage/home/users/pjt6/fly_selective_sweeps/genome/Drosophila_pseudoobscura.Dpse_3.0_.dna.toplevel.fa s96_R1_paired.fq.gz s96_R2_paired.fq.gz | samtools view -@32 -b -o ./bams/s96.bam - 
# picard SortSam INPUT=./bams/s96.bam OUTPUT=./bams/s96_sorted.bam SORT_ORDER=coordinate VALIDATION_STRINGENCY=SILENT
# picard MarkDuplicates  INPUT=./bams/s96_sorted.bam  OUTPUT=./bams/s96_sorted_marked.bam METRICS_FILE=s96_metrics.txt ASSUME_SORTED=true VALIDATION_STRINGENCY=SILENT
/storage/home/users/pjt6/shelf_apps/apps/bwa-mem2-2.0pre2_x64-linux/bwa-mem2 mem -t 32 /storage/home/users/pjt6/fly_selective_sweeps/genome/Drosophila_pseudoobscura.Dpse_3.0_.dna.toplevel.fa s98_R1_paired.fq.gz s98_R2_paired.fq.gz | samtools view -@32 -b -o ./bams/s98.bam - 
# picard SortSam INPUT=./bams/s98.bam OUTPUT=./bams/s98_sorted.bam SORT_ORDER=coordinate VALIDATION_STRINGENCY=SILENT
# picard MarkDuplicates  INPUT=./bams/s98_sorted.bam  OUTPUT=./bams/s98_sorted_marked.bam METRICS_FILE=s98_metrics.txt ASSUME_SORTED=true VALIDATION_STRINGENCY=SILENT
/storage/home/users/pjt6/shelf_apps/apps/bwa-mem2-2.0pre2_x64-linux/bwa-mem2 mem -t 32 /storage/home/users/pjt6/fly_selective_sweeps/genome/Drosophila_pseudoobscura.Dpse_3.0_.dna.toplevel.fa s9_R1_paired.fq.gz s9_R2_paired.fq.gz | samtools view -@32 -b -o ./bams/s9.bam - 
# picard SortSam INPUT=./bams/s9.bam OUTPUT=./bams/s9_sorted.bam SORT_ORDER=coordinate VALIDATION_STRINGENCY=SILENT
# picard MarkDuplicates  INPUT=./bams/s9_sorted.bam  OUTPUT=./bams/s9_sorted_marked.bam METRICS_FILE=s9_metrics.txt ASSUME_SORTED=true VALIDATION_STRINGENCY=SILENT
