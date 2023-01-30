#!/bin/bash

DIR=/media/gedac/kane/raw_data/xenograft_DRA011243

featureCounts --verbose \
-T 12 \
-t exon \
--extraAttributes gene_name \
-g gene_id \
-s 2 \
-F GTF \
-p --countReadPairs \
-a gencode.v42.primary_assembly.annotation.gtf \
-o counts.txt \
$(find . -name "*default_graft*.bam") 2> run.log

