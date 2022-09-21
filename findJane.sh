#!/bin/bash
grep " jane " ../data/list.txt | cut -d ' ' -f 3 > tempFile.txt
files=$(<tempFile.txt)
for i in $files ; do
 if test -e "$HOME$i"; then echo "$HOME$i" >> oldFiles.txt;
 fi
done
