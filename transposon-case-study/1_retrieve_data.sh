#!/usr/bin/env bash

usage (){
cat << EOF
Get all data required for this analysis:

    1. Yeast genomes (fasta files)
    2. Yeast gene models (gff3 files)

ARGUMENTS
  -g DIR  output directory for gene models
  -f DIR  output directory for genomes 
EOF
    exit 0
}

# print help with no arguments
[[ $# -eq 0 ]] && usage

gff= genomes=
while getopts "hg:f:" opt; do
    case $opt in
        h)
            usage ;;
        g)
            gff=$OPTARG ;;
        f)
            genomes=$OPTARG ;;
    esac 
done

get_gene_models () {
  # unimplemented
}

get_genomes () {
  # unimplemented
}

get_gene_models $gff
get_genomes $genomes
