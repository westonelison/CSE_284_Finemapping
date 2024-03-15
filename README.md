# CSE_284_Finemapping
This repository contains the relevant code and data to benchmark various fine-mapping tools. Fine-mapping is a valuable analysis in GWAS and QTL analysis to define a set of variants containing a causal variant.  

This repository focuses on four fine-mappign tools; [FINEMAP](http://www.christianbenner.com/), [SuSiE](https://github.com/stephenslab/susieR), [FINEMAP-Inf and SuSiE-Inf](https://github.com/FinucaneLab/fine-mapping-inf). Each of these tools can be run using summary statistic information from GWAS.  

To benchmark these results we generate simulation data using [simGWAS](https://github.com/chr1swallace/simGWAS). Simulation data contains known signals with specific effects that can be used to benchmark accuracy. Additionally we will benchmark speed and resource usage across simulations including different number of SNPs and different number of causal signals.  

Finally, these methods will be tested on signals with a molecularly verified causal effect like APOE in Alzhiemer's Disease.

# Installation Instructions
To run these different tests we need a few different tools. Here is an overview of how I set up my conda evironment to
contain the packages we need (simGWAS, FINEMAP, SuSiE and SuSiE-Inf/FINEMAP-Inf)  

The installation of these tools are based on the instructions found on their respective websites. I found no issue with installing all of them concurrently.  

I prefer to set up conda envirmonets using the mamba solver when creating analysis specific programming contexts. Edit this code to say conda instead of mamba if mamba isn't installed:

The entire installation is wrapped up in setup.sh which should be run from this directory. It will make a tools directory and install the separate tools and make a conda environment.
```
setup.sh
```

# Manual Install

Create conda environment in bash
``` 
# In bash (terminal)
mamba create -n simGWAS r-base python r-devtools r-ggplot2 r-dplyr r-stringr r-data.table r-ggrepel r-remotes -c conda-forge
mamba activate simGWAS
```

#### simGWAS
```
# In R
devtools::install_github("chr1swallace/simGWAS")
```

See https://github.com/chr1swallace/simGWAS/blob/master/FAQ.md

#### FINEMAP
```
# In bash
cd tools
wget http://www.christianbenner.com/finemap_v1.4.1_x86_64.tgz
tar -xzvf finemap_v1.4.1_x86_64.tgz
mkdir -p ~/bin
cp ./finemap_v1.4.1_x86_64/finemap_v1.4.1_x86_64 ~/bin/finemap
export PATH=$PATH:$HOME/bin
cd ..
```

See http://www.christianbenner.com/

#### SusieR
```
# In R
remotes::install_github("stephenslab/susieR")
```

See https://github.com/stephenslab/susieR

##### Infinitesimal Tools
Clone the repo:
```
# In bash
cd tools
git clone https://github.com/FinucaneLab/fine-mapping-inf.git
cd fine-mapping-inf
```
Install dependencies:
```
# In bash
mamba install -c conda-forge -c bioconda setuptools numpy pandas scipy wheel py-bgzip
```
To install SuSiE-inf:
```
# In bash
cd susieinf
python setup.py bdist_wheel
pip install .
cd ..
```
Similarly, to install FINEMAP-inf:
```
# In bash
cd finemapinf
python setup.py bdist_wheel
pip install .
cd ..
```
Once completed, run  
```
# In bash
python run_fine_mapping.py -h
cd ../..
```

See https://github.com/FinucaneLab/fine-mapping-inf

# Usage

### Simulations
The simulations folder contains all of the data and code to 1) Generate simulated summary statistics from a GWAS for 21 different loci using simGWAS and 2) run fine-mapping tools on these summary results and finally 3) examine specific simulations. See the readME in that folder for more details.

### Alzheimer's Disease GWAS
The AD folder contains the code to finemap the APOE locus for an AD GWAS. See the readME in the folder for further details.


# Credits
Repo created by Weston Elison for CS_284, taught by Melissa Gymrek. 

Benner, C., Spencer, C. C., Havulinna, A. S., Salomaa, V., Ripatti, S., & Pirinen, M. (2016). FINEMAP: efficient variable selection using summary data from genome-wide association studies. Bioinformatics (Oxford, England), 32(10), 1493–1501. https://doi.org/10.1093/bioinformatics/btw018
Cui, R., Elzur, R.A., Kanai, M. et al. Improving fine-mapping by modeling infinitesimal effects. Nat Genet 56, 162–169 (2024). https://doi.org/10.1038/s41588-023-01597-3
Fortune, M. D., & Wallace, C. (2019). simGWAS: a fast method for simulation of large scale case-control GWAS summary statistics. Bioinformatics (Oxford, England), 35(11), 1901–1906. https://doi.org/10.1093/bioinformatics/bty898
G. Wang, G., Sarkar, A., Carbonetto, P. & Stephens, M. (2020). A simple new approach to variable selection in regression, with application to genetic fine mapping. Journal of the Royal Statistical Society, Series B 82, 1273–1300. https://doi.org/10.1111/rssb.12388
Zou, Y., Carbonetto, P., Wang, G. & Stephens, M. (2022). Fine-mapping from summary data with the "Sum of Single Effects" model. PLoS Genetics 18, e1010299. https://doi.org/10.1371/journal.pgen.1010299
