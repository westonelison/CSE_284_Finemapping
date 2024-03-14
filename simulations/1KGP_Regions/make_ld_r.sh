for reg in *_1MB.vcf.gz; do plink1.9 --vcf $reg --maf 0.05 --keep-allele-order --r --matrix --out $reg.r.maf.order; done
for ld in *.ld; do gzip $ld --keep; done
