#!/bin/bash

DIR=/media/gedac/kane/raw_data/xenograft_DRA011243

for fq1 in $DIR/*_1.fastq.gz; do
    fq2=${fq1%_1.fastq.gz}_2.fastq.gz
    fastp -i $fq1 -I $fq2 -o ${fq1%.fastq.gz}.trimmed.fastq.gz -O ${fq2%.fastq.gz}.trimmed.fastq.gz
done

