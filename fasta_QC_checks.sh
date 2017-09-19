#!/bin/bash

# Emma Gibson egibson@dons.usfca.edu
# September 20, 2017
# Example script to checkquality of fasta files

# unzip data files
echo "unzipping data files..."
unzip "data/*.zip"
rm data/*.zip
echo "unzipped data files"


# state purpose of script and date
echo "$(date)"
echo "Output from preliminary quality control checks on selected .fasta files."
echo "Output for each .fasta includes:"
echo "Filename, file size, first three lines, last three lines, the number of"
echo "sequences in each file, and the sequence identifier lines, sorted alphabetically."

# for loop to do the above for each .fasta
# run with the argument data/*.fasta for desires result
for file in $@
do
	echo "#####################################################"
	echo "Output for ${file##*/}"
	echo "Size = $(cut -b $file)"
	echo "Number of sequences = $(grep -c "^>" $file)"
	echo "Sequence Names:"
	echo "$(grep ">" $file | sort)"
	echo "First three lines:"
	head -3 $file
	echo "Last three lines:"
	tail -3 $file
done

#POTENTIAL ISSUE: figure out how to get line breaks between outputs

#POTENTIAL ISSUE: 'head -3' isn't an ideal command because 
#	some of the files don't start with the sequences

#POTENTIAL ISSUE: 'tail -3' has similar issues to 'head -3'
