#!/bin/bash

# CCDL 2019
# Create the txome indices with decoy sequences

# directory to hold txome indices for all organisms
mkdir index_with_decoy

# species scientific names
declare -a species_arr=("Homo_sapiens" "Mus_musculus" "Danio_rerio" "Canis_familiaris")

# for each species we need to make two indices with different k values
for species in "${species_arr[@]}"
do
	# directory to hold the txome index with decoy
	mkdir index_with_decoy/${species}

	# shorter reads
	salmon index \
		-t data/hybrid/${species}/gentrome.fa \
		-d data/hybrid/${species}/decoys.txt \
		-i index_with_decoy/${species}/k23_index \
		-k 23
done