#!/bin/bash

# Emma Gibson egibson@dons.usfca.edu
# September 20, 2017
# Example script to checkquality of fasta files

# unzip data files
echo "unzipping data files..."
unzip data/*.zip
rm data/*.zip
echo "unzipped data files"


# state purpose of script and date
echo "Output from preliminary quality control checks on selected .fasta files."
echo "$(date)"
