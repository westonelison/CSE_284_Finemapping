for reg in *_1MB.vcf.gz; do plink1.9 --vcf $reg --r --matrix --out $reg; done
for reg in *_1MB.vcf.gz; do plink1.9 --vcf $reg --r2 --matrix --out $reg; done
