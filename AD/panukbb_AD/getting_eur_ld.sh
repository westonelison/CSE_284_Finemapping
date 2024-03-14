bcftools view ../../simulations/1KGP_Regions/1KGP_hg19_APOE_1MB.vcf.gz -S eur.samples.txt --force-samples -Oz -o 1KGP_hg19_APOE_1MB_EUR.vcf.gz

bcftools view 1KGP_hg19_APOE_1MB_EUR.vcf.gz --include ID==@snps_in_both.txt -Oz -o 1KGP_hg19_APOE_1MB_EUR_PANUKBB.vcf.gz

plink1.9 --vcf 1KGP_hg19_APOE_1MB_EUR_PANUKBB.vcf.gz --keep-allele-order --r --matrix --out 1KGP_hg19_APOE_1MB_EUR_PANUKBB
