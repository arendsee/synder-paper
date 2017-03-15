#!/usr/bin/env bash

usage (){
cat << EOF
Blast S. cerivisiae transposon sequences against the other yeasts

ARGUMENTS
  -q FILE  a DNA fasta file containing the query sequences
  -t DIR   a directory containing all target genomes
EOF
    exit 0
}

# print help with no arguments
[[ $# -eq 0 ]] && usage

query= target_dir=
while getopts "hq:t:" opt; do
    case $opt in
        h)
            usage ;;
        q)
            query=$OPTARG ;;
        t)
            target_dir=$OPTARG ;;
    esac 
done

make_blast_database () {
  # unimplemented
}

run_blast () {
  # unimplemented
}

db=$(make_blast_database $target_dir) || echo "Failed to make the blast database" >&2 && exit 1

run_blast $query $db || echo "BLAST failed" && exit 1
