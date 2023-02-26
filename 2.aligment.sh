#bowtie2: 2.3.4.3
#samtools: 1.9

bowtie2 -x genome-1 clean_data/sample.R1.fq.gz -2 clean_data/sample.R2.fq.gz  -p 8 --end-to-end --sensitive  2> Mapping/sample.bowtie2.log | samtools view -Shb -m 20G -@8 -| samtools sort -@8  -o Mapping/sample.bam

