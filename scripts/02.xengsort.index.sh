#!/bin/bash

nohup xengsort index --index human_mouse_index.zarr -G <(zcat Homo_sapiens.GRCh38.cdna.all.fa.gz Homo_sapiens.GRCh38.dna.toplevel.fa.gz) -H <(zcat Mus_musculus.GRCm39.cdna.all.fa.gz Mus_musculus.GRCm39.dna.toplevel.fa.gz) -n 4496607845 -p 4 --fill 0.88 -W 11 &> nohup.xengsort.index.out &
