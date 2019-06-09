#!/bin/bash

# CCDL 2019
# Create the augmented hybrid fasta file for decoy transcriptome purposes
# using the script from COMBINE-lab/SalmonTools 

hybrid_directory=data/hybrid
mkdir ${hybrid_directory}

# Human ------------------------------------------------------------------
human_output=${hybrid_directory}/Homo_sapiens 
mkdir ${human_output}

bash scripts/generateDecoyTranscriptome.sh \
	-j 8 \
	-g data/dna/Homo_sapiens.GRCh38.dna.toplevel.fa \
	-t data/cdna/Homo_sapiens.GRCh38.cdna.all.fa \
	-a data/gtf/Homo_sapiens.GRCh38.96.gtf \
	-o ${human_output}

# Mouse ------------------------------------------------------------------
mouse_output=${hybrid_directory}/Mus_musculus
mkdir ${mouse_output}

bash scripts/generateDecoyTranscriptome.sh \
	-j 8 \
	-g data/dna/Mus_musculus.GRCm38.dna.toplevel.fa \
	-t data/cdna/Mus_musculus.GRCm38.cdna.all.fa \
	-a data/gtf/Mus_musculus.GRCm38.96.gtf \
	-o ${mouse_output}

# Zebrafish --------------------------------------------------------------
zebrafish_output=${hybrid_directory}/Danio_rerio
mkdir ${zebrafish_output}

bash scripts/generateDecoyTranscriptome.sh \
	-j 8 \
	-g data/dna/Danio_rerio.GRCz11.dna.toplevel.fa \
	-t data/cdna/Danio_rerio.GRCz11.cdna.all.fa \
	-a data/gtf/Danio_rerio.GRCz11.96.gtf \
	-o ${zebrafish_output}

# Dog --------------------------------------------------------------------
dog_output=${hybrid_directory}/Canis_familiaris
mkdir ${dog_output}

bash scripts/generateDecoyTranscriptome.sh \
	-j 8 \
	-g data/dna/Canis_familiaris.CanFam3.1.dna.toplevel.fa \
	-t data/cdna/Canis_familiaris.CanFam3.1.cdna.all.fa \
	-a data/gtf/Canis_familiaris.CanFam3.1.96.gtf \
	-o ${dog_output}
