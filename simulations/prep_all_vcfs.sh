cd 1KGP_Regions
vcfs=$(ls *.vcf.gz)
cd ..
for v in $vcfs; do Rscript --vanilla prep_vcf_for_simulation.Rscript 1KGP_Regions $v simulation_summary_stats; done
