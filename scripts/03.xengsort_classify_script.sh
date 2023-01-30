#!/bin/bash

DIR=/media/gedac/kane/raw_data/xenograft_DRA011243

for fq1 in $DIR/*_1.trimmed.fastq.gz; do
    fq2=${fq1%_1.trimmed.fastq.gz}_2.trimmed.fastq.gz
    xengsort classify --index human_mouse_index.zarr --fastq <(zcat $fq1) --pairs <(zcat $fq2) --out ${fq1%_1.trimmed.fastq.gz} -T 8
done 
