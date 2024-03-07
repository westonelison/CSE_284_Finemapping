There are two scripts here. First is prep_vcf_for_simulation.Rscript, then generate_summary_stats.Rscript.

### prep_vcf_for_simulation.Rscript (REUPLOAD)

This script takes the vcf and generates the files needed for simGWAS. This only needs to be run once per locus.

It has parameters for (in order) chromosome (int), vcf_path (no end /), vcf file name (string), simulation path which is where the outputs are written, and a seed (unused). 

### generate_summary_stats.Rscript

This script runs simGWAS to create GWAS summary statistics for a given locus.

It has parameters (in order): vcf file, simulation path, seed, number of causal snps (int), number of control individuals (int), and number of cases (int).



These are functional but will likely be tweaked.

I also want to make a wrapper for generate_summary_stats.Rscript to generate many GWAS summary statistics or modify the code to allow for lists to be passed in so many summary statistics could be generated.
