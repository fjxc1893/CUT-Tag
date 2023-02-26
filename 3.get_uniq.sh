#samtools: 1.9

samtools view -@8  -H Mapping/sample.bam > Mapping/header.sam && samtools view -F 4  Mapping/sample.bam  | grep -v "XS:" | cat  Mapping/header.sam - | samtools view -@8 -b - | samtools sort -@8   -o   Mapping/sample.uniq.bam && rm  Mapping/header.sam