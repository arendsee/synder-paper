all:
	./1_retrieve_data.sh -g input_gff  -f input_fna
	./2_extract_ty1.sh -g input_gff/*cerivisiae* -f input_fna/*cerivisiae* > ty1.fna
	./3_blast_ty1.sh -q ty1.fna -t input_fna > ty1.tab
	./4_synder_analysis.R -s synmaps -b ty1.tab

.PHONY: clean
clean:
	rm -rf input_fna input_gff ty1.fna ty1.tab
