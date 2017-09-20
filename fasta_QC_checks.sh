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
	echo " "
	echo " "
	echo "#####################################################"
# prints file name without suffixes (data/example.fasta becomes ecample.fasta)
	echo "Output for ${file##*/}"
	echo " "
# prints file size without file name
	echo "Size = $(du -h "$file" | cut -f1)"
	echo " "
# counts number of sequences in file
	echo "Number of sequences = $(grep -c "^>" $file)"
	echo " "
# lists first and last 3 lines of each file
	echo "First three lines:"
	head -3 $file
	echo " "
	echo "Last three lines:"
	tail -3 $file
	echo " "
# lists sequence names in alphabetical order
        echo "Sequence Names:"
        echo "$(grep ">" -f2 $file | sort)"
done

#POTENTIAL ISSUE: 'head -3' isn't an ideal command because 
#	some of the files don't start with the sequences
#POTENTIAL ISSUE: 'tail -3' has similar issues to 'head -3'
