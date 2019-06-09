#!/bin/bash

# CCDL 2019
# Create the txome indices with decoy sequences

# directory to hold txome indices for all organisms
mkdir index_with_decoy

# species scientific names
# moving to the gentrome data found here: 
# https://github.com/COMBINE-lab/salmon/tree/b1edd526e1e8cdad6f01daaba2f9dc3f2abf19f4
declare -a species_arr=("human" "mouse" "zebrafish")

# for each species we need to make two indices with different k values
for species in "${species_arr[@]}"
do
	# directory to hold the txome index with decoy
	mkdir index_with_decoy/${species}

	# use k=23 for use with mapping validation
	salmon index \
		-t data/hybrid/${species}/gentrome.fa \
		-d data/hybrid/${species}/decoys.txt \
		-i index_with_decoy/${species}/k23_index \
		-k 23
done