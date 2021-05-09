#!/bin/bash

echo "print everything to terminal"
echo -e "command => cat pokemon.txt\n"
cat pokemon.txt

echo "pipe to only get the second column"
echo -e "command => cat pokemon.txt | cut -f 2\n"
cat pokemon.txt | cut -f 2

echo "Consolidate all uniques in column 2"
echo "command => cat pokemon.txt | cut -f 2 | uniq -c"
echo -e "Note that uniq can only consolidate entries that are right after each other\n"
cat pokemon.txt | cut -f 2 | uniq -c

echo -e "\nSort column 2"
echo "command => cat pokemon.txt | cut -f 2 | sort"
cat pokemon.txt | cut -f 2 | sort

echo -e "\nConsolidate all uniques in column 2"
echo -e "command => cat pokemon.txt | cut -f 2 | sort | uniq -c\n"
cat pokemon.txt | cut -f 2 | sort | uniq -c

echo -e "\nSort the output by counts"
echo "command => cat pokemon.txt | cut -f 2 | sort | uniq -c | sort -k1,1nr"
echo -e "-k1,1nr: k1,1 => only columns 1 through 1, n => numerically, r => reverse\n"
cat pokemon.txt | cut -f 2 | sort | uniq -c | sort -k1,1nr

echo -e "\nquick help printout"
echo -e "sort --help\n"
echo "manual for command"
echo "man sort"
