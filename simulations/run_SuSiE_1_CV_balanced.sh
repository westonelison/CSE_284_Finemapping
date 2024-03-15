cd 1KGP_Regions
vcfs=$(ls *.vcf.gz)
cd ..

for v in $vcfs; do for i in {1..50}; do { time Rscript --vanilla run_SuSiE.Rscript $v $i 1 20000 20000 ; } 2> finemapping_results/${v}_$i/ss_1_CV_20000_ctrl_20000_case.susie.time; done; done
#for v in $vcfs; do for i in {1..50}; do echo ${v}_$i; done; done
