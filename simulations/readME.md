This folder contains all the information to generate simulated GWAS sumamry statistics and fine-map them. There are a series of scripts which will be covered in order.

### Prepare simGWAS inputs

First, we need genotypes as input for simGWAS. Scripts and initial region vcfs can be found in the 1KGP_Regions directory, as well as a script to generate the appropriate LD matrix.

Next, we need to prep the inputs for simGWAS. To prepare a single region run prep_vcf_for_simulation.Rscript. This has a few arguments (in order) (but there are defaults available). First is the path to the folder containing the vcf, in this case 1KGP_Regions. Next is the vcf file, something like 1KGP_hg19_APOE_1MB.vcf.gz. Finally, we need the output folder, I used simulated_summary_stats. Here is an example command.

```
Rscript --vanilla prep_vcf_for_simulation.Rscript 1KGP_Regions 1KGP_hg19_APOE_1MB.vcf.gz simulated_summary_stats
```

There is also a script to prep all the vcfs in the 1KGP_Regions directoy, prep_all_vcfs.sh.

```
bash prep_all_vcfs.sh
```

### Run simGWAS

Next we need to run simGWAS. This is in the Rscripts generate_summary_stats.Rscript and generate_summary_stats_multi_CV.Rscript. generate_summary_stats.Rscript will generate the results of a single simulation GWAS, with the input paramaters (in order) being the vcf file (1KGP_hg19_APOE_1MB), the path to the summary stats (simulated_summary_stats), a seed (42), a number of causal variants (1 to 5), number of controls (10000), and number of cases (10000). 

```
Rscript --vanilla generate_summary_stats.Rscript 1KGP_hg19_APOE_1MB.vcf.gz simulated_summary_stats 42 2 10000 10000
```
This script was adapted to generate multiple summary statistics in generate_summary_stats_multi_CV.Rscript. The main difference is that a comma separated (no spaces) list of causal variants and seeds can be used to generate many summary statistics.

```
Rscript --vanilla generate_summary_stats_multi_CV.Rscript 1KGP_hg19_APOE_1MB.vcf.gz simulated_summary_stats 40,41,42,43,44,45 1,2,3,4,5 10000 10000
```

Finally, this has been put into a bash script to run across many vcfs with different contexts (50 seeds, multiple causal snps, balanced and unbalanced design). THIS IS SLOW.

```
bash generate_all_sum_stats.sh
```
The results are saved in simulated_summary_stats with a folder per vcf/seed.

### Prepare the outputs for fine-mapping

There is a little adjusting that needs to be done to the summary stats in order to go through fine-mapping. This has a similar structure to the last step. prep_finemapping.Rscript will take one summary statistic and prepare it for all four fine-mapping methods. It's parameters (in order) are the vcf, seed, number of causal variants, number of controls, and number of cases matching an output from the last step.

```
Rscript --vanilla prep_finemapping.Rscript 1KGP_hg19_CEL_1MB.vcf.gz 4 2 20000 2000
```
This has been expanded to handle multiple gwas based on different seeds in prep_finemapping_multi.Rscript. 

```
Rscript --vanilla prep_finemapping_multi.Rscript 1KGP_hg19_CEL_1MB.vcf.gz 40,41,42,43,44 2 20000 20000
```

Finally, this has been put into a bash script to go through multiple vcfs. This is only set to run only on one causal variant simulations with a balanced (equal case and control) design, but could be easily adapted.

```
bash prep_finemapping_1_CV_balanced.sh
```

### Fine-map
