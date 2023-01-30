#!/bin/bash

#https://groups.google.com/g/rna-star/c/jmszy_UjyKY/m/2drCEkG3CQAJ
DIR=/media/gedac/kane/raw_data/xenograft_DRA011243

for fq1 in $DIR/*-graft.1.fq; do
    fq2=${fq1%-graft.1.fq}-graft.2.fq
    STAR --genomeDir /media/gedac/kane/raw_data/xenograft_DRA011243/star_index_hg38 \
    --runThreadN 20 \
    --readFilesIn $fq1 $fq2 \
    --outSAMtype BAM Unsorted \
    --outFileNamePrefix ${fq1%-graft.1.fq} \
    --outFilterScoreMinOverLread 0.50 \
    --outFilterMatchNminOverLread 0.50
done


