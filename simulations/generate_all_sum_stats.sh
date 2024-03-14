cd 1KGP_Regions
vcfs=$(ls *.vcf.gz)
cd ..

for v in $vcfs; do Rscript --vanilla generate_summary_stats_multi_CV.Rscript $v simulation_summary_stats 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50 1 20000 20000 > sim_$v.log; done
for v in $vcfs; do Rscript --vanilla generate_summary_stats_multi_CV.Rscript $v simulation_summary_stats 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50 1 20000 2000 > sim_$v.log; done

for v in $vcfs; do Rscript --vanilla generate_summary_stats_multi_CV.Rscript $v simulation_summary_stats 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50 2 20000 2000 > sim_$v.log; done
for v in $vcfs; do Rscript --vanilla generate_summary_stats_multi_CV.Rscript $v simulation_summary_stats 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50 2 20000 2000 > sim_$v.log; done

for v in $vcfs; do Rscript --vanilla generate_summary_stats_multi_CV.Rscript $v simulation_summary_stats 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50 3,4,5 20000 20000 > sim_$v.log; done
for v in $vcfs; do Rscript --vanilla generate_summary_stats_multi_CV.Rscript $v simulation_summary_stats 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50 3,4,5 20000 2000 > sim_$v.log; done
