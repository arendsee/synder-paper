#!/usr/bin/env Rscript

require(data.table, quietly=TRUE)
require(plyr, quietly=TRUE)

version <- '0.0.0'

suppressPackageStartupMessages(library("argparse"))
parser <- ArgumentParser(
  formatter_class='argparse.RawTextHelpFormatter',
  description='Map the trasposon intervals in S. cerivisiae to the other yeast species. Determine how many of these search intervals include a BLAST hit.',
  usage='./4_synder_analysis.R')

parser$add_argument(
  '-v', '--version',
  action='store_true',
  default=FALSE)

parser$add_argument(
  '-s' , '--synteny-maps',
  help='Synteny map directory'
)

parser$add_argument(
  '-b' , '--blast-results',
  help='Blast result directory'
)

args <- parser$parse_args()

cat("stub\n")
