#!/bin/bash

# CCDL 2019
# We'll use this shell script to obtain the genome FASTAs, cDNA FASTAs, and GTF files from Ensembl

# create a directory to hold the cDNA FASTA files
cdna_directory=data/cdna
mkdir -p ${cdna_directory}

# wget for the following organisms: human, mouse, zebrafish, dog
wget --directory-prefix=${cdna_directory} ftp://ftp.ensembl.org/pub/release-96/fasta/homo_sapiens/cdna/Homo_sapiens.GRCh38.cdna.all.fa.gz
wget --directory-prefix=${cdna_directory} ftp://ftp.ensembl.org/pub/release-96/fasta/mus_musculus/cdna/Mus_musculus.GRCm38.cdna.all.fa.gz
wget --directory-prefix=${cdna_directory} ftp://ftp.ensembl.org/pub/release-96/fasta/danio_rerio/cdna/Danio_rerio.GRCz11.cdna.all.fa.gz
wget --directory-prefix=${cdna_directory} ftp://ftp.ensembl.org/pub/release-96/fasta/canis_familiaris/cdna/Canis_familiaris.CanFam3.1.cdna.all.fa.gz
gunzip ${cdna_directory}/*

# now we'll do the GTF files -- we need these to generate the tx2gene mapping
# for use with tximport and for generating the indices with decoy sequences
gtf_directory=data/gtf
mkdir ${gtf_directory}

# wget for the following organisms: human, mouse, zebrafish, dog
wget --directory-prefix=${gtf_directory} ftp://ftp.ensembl.org/pub/release-96/gtf/homo_sapiens/Homo_sapiens.GRCh38.96.gtf.gz
wget --directory-prefix=${gtf_directory} ftp://ftp.ensembl.org/pub/release-96/gtf/mus_musculus/Mus_musculus.GRCm38.96.gtf.gz
wget --directory-prefix=${gtf_directory} ftp://ftp.ensembl.org/pub/release-96/gtf/danio_rerio/Danio_rerio.GRCz11.96.gtf.gz
wget --directory-prefix=${gtf_directory} ftp://ftp.ensembl.org/pub/release-96/gtf/canis_familiaris/Canis_familiaris.CanFam3.1.96.gtf.gz
gunzip ${gtf_directory}/*

# create a directory to hold the genome FASTA files
dna_directory=data/dna
mkdir ${dna_directory}

# wget for the following organisms: human, mouse, zebrafish, dog
wget --directory-prefix=${dna_directory} ftp://ftp.ensembl.org/pub/release-96/fasta/homo_sapiens/dna/Homo_sapiens.GRCh38.dna.toplevel.fa.gz
wget --directory-prefix=${dna_directory} ftp://ftp.ensembl.org/pub/release-96/fasta/mus_musculus/dna/Mus_musculus.GRCm38.dna.toplevel.fa.gz
wget --directory-prefix=${dna_directory} ftp://ftp.ensembl.org/pub/release-96/fasta/danio_rerio/dna/Danio_rerio.GRCz11.dna.toplevel.fa.gz
wget --directory-prefix=${dna_directory} ftp://ftp.ensembl.org/pub/release-96/fasta/canis_familiaris/dna/Canis_familiaris.CanFam3.1.dna.toplevel.fa.gz
gunzip ${dna_directory}/*
