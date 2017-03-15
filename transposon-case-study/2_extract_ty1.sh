#!/usr/bin/env bash

usage (){
cat << EOF
Extract the Ty1 transposon DNA sequences from S. cerivisiae given a GFF and genome

ARGUMENTS
  -g FILE  The S. cerivisiae GFF file
  -f FILE  The S. cerivisiae genome fasta file
EOF
    exit 0
}

# print help with no arguments
[[ $# -eq 0 ]] && usage

gff= genome=
while getopts "hg:f:" opt; do
    case $opt in
        h)
            usage ;;
        g) 
            gff=$OPTARG ;;
        f) 
            genome=$OPTARG ;;
    esac 
done

extract_ty1_entries (){
  # unimplemented
}

extract_fasta (){
  # unimplemented
}

extract_fasta <(extract_ty1_entries $gff) $genome
