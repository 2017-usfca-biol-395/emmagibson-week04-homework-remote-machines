
# Week 5 Remote Machine & Fasta QC Homerork Reflection


## Overall Thoughts
Overall, this assignment was very useful, because it both taught me new unix commands and
helped meget used to working with .fasta files. I had some trouble getting the file size
to display correctly, but figuring it out helped me learn about how to use pipes.

## Challenges
One of the only issues I couldn't solve was the output of someof the last/first 3 lines.
Some of the files had blank or extremely long lines at the beginning or end, and I wanted
to find a way to make those outputs look prettier. In the end, I decided that it was best
to just leave the lines how they were, because wether they look pretty or not, those *are*
the first/last lines of the file.

Similarly, I wanted to make the sequence names read with clean, simple species names like
the example, but the long, cluttered names didn't seem to have a common naming convention
across files. I tried using `$(grep ">" $file | grep -v "family*" $file | sort)`, which 
trimmed the ends of the names. But in the end, I couln't find a good way to edit the 
beginning of the names, so I decided it was best to leave them long.

Also, I added the unzipping lines after I had already unzipped the files, but they *should*
still work on zipped files.
