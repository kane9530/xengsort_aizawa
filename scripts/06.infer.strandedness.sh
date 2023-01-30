#!/bin/bash

# Generate the reference bed file from the GENCODE GTF file
gtf2bed < gencode.v42.primary_assembly.annotation.gtf > gencode.v42.primary_assembly.annotation.bed

# Check the strandedness from a randomly chosen .bam file 
infer_experiment.py -r gencode.v42.primary_assembly.annotation.bed -i DRR259325_Illumina_NovaSeq_6000_paired_end_sequencing_of_SAMD00263607Aligned.out.bam
