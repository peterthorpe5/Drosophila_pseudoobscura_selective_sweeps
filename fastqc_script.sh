cd /storage/home/users/pjt6/fly_selective_sweeps/raw/

fq_files=*fq.gz
for fq in ${fq_files}


do
    /storage/home/users/pjt6/fly_selective_sweeps/raw/FastQC/fastqc ${fq}
done


cd /storage/home/users/pjt6/fly_selective_sweeps/trimmed/


fq_files=*fq.gz
for fq in ${fq_files}


do
    /storage/home/users/pjt6/fly_selective_sweeps/raw/FastQC/fastqc ${fq}

done
