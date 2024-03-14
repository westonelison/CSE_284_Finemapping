This folder contains the genotyping data needed to generate the simulation data and the LD matrices.

The region vcfs were pulled from 1000 Genomes Project Phase 3 using the script make_region_vcf.sh. The original data is too big to be downloaded. These vcfs are filtered for biallelic SNPs with maf > 0.05. 

Additionally, ld matrices were not uploaded due to their size. Instead, there is the command make_ld_r.sh which will generate them when run from this folder. 
