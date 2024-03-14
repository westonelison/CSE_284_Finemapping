This directory contains information relevant to the AD GWAS fine-mapping.

Summary statistics were found using PAN-UKBB. They have a [table of tested phenotypes](https://docs.google.com/spreadsheets/d/1AeeADtT0U1AukliiNyiVzVRdLYPkTbruQSk38DeutU8/edit#gid=1450719288) and I used the wget commands from that to download the Alzheimer's/Dimentia summary statistics. Information on number of samples and cases can be found in the document. The commands to download the summary statistics are in panukbb_AD/get_panukbb_AD_sumstats.sh. This should be run from the panukbb_AD directory.

The command panukbb_AD/getting_eur_ld.sh generated the correct LD matrix for this finemapping. This should be run from the panukbb_AD directory.

The downstream analysis of these inputs are in the AD_GWAS_Finemapping.ipynb notebook. In essence we read it in, do a few checks, run SuSiE and then make the outputs for running the other fine-mapping methods. To run these methods there are panukbb_AD/run-finemap.sh and panukbb_AD/run-inf-finemapping.sh, which should be run from the panukbb_AD directory. After these scripts we jump back into the notebook to make plots and look at the results.
