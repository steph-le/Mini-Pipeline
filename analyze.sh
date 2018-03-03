#!/bin/bash

module load R


read -p "Do you want to analyze SNPs or Insertions? " answer
python pipe.py $answer
cat datafile.txt
Rscript graph.r datafile.txt $answer
