This section contains the code used to generate vcfs for the regions selected from 1KGP (hg19) v3 data.

Unfortunately, due to file size LD matrices cannot be stored on github, but a script to make them using plink is stored here.

Regions were selected for [APOE](https://www.snpedia.com/index.php/ApoE) snp [rs7412](https://www.ncbi.nlm.nih.gov/snp/?term=rs7412) and 20 non-overlapping highest pip SNPs from the credible set in the paper [here](https://www.nature.com/articles/s41586-021-03552-w)


Commands to generate files:

Generic:
bcftools view {PATH_TO_1KGP_vcf} -r chromosome:start:end -O z -o {Output file}

Run:
bcftools view /nfs/lab/relgamal/1KGP_hg19/ALL.autosomes.phase3_shapeit2_mvncall_integrated_v5a.20130502.genotypes.vcf.gz -r 19:44912079-45912079 -O z -o 1KGP_hg19_APOE_1MB.vcf.gz


