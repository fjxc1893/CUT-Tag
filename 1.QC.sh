#fastp：0.20.1

fastp -a auto --adapter_sequence_r2 auto --detect_adapter_for_pe  -i data_abstract/sample.R1.fq.gz -I data_abstract/sample.R2.fq.gz --cut_front --cut_tail --n_base_limit 5 --cut_window_size 4 --cut_mean_quality 20 --length_required 75 --qualified_quality_phred 15 -o cleandata/sample.clean_RD1 -O  cleandata/sample.clean_RD2
fastp  -i raw/sample.R1.fastq.gz -I raw/sample.R2.fastq.gz --disable_adapter_trimming --disable_trim_poly_g --disable_quality_filtering --disable_length_filtering 