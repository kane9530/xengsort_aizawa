#!/bin/bash

STAR --runThreadN 12 \
	--runMode genomeGenerate \
	--genomeDir star_index_hg38 star_index_grch38 \
	--genomeFastaFiles grch38.primary_assembly.fa \
	--sjdbGTFfile gencode.v42.primary_assembly.annotation.gtf 
