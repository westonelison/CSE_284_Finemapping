# CSE_284_Finemapping
This repository contains the relevant code and data to benchmark various fine-mapping tools. Fine-mapping is a valuable analysis in GWAS and QTL analysis to define a set of variants containing a causal variant.  

This repository focuses on four fine-mappign tools; [FINEMAP](http://www.christianbenner.com/), [SuSiE](https://github.com/stephenslab/susieR), [FINEMAP-Inf and SuSiE-Inf](https://github.com/FinucaneLab/fine-mapping-inf). Each of these tools can be run using summary statistic information from GWAS.  

To benchmark these results we generate simulation data using [simGWAS](https://github.com/chr1swallace/simGWAS). Simulation data contains known signals with specific effects that can be used to benchmark accuracy. Additionally we will benchmark speed and resource usage across simulations including different number of SNPs and different number of causal signals.  

Finally, these methods will be tested on signals with a molecularly verified causal effect like APOE in Alzhiemer's Disease.

# Installation Instructions
To run these different tests we need a few different tools. Here is an overview of how I set up my conda evironment to
contain the packages we need (simGWAS, FINEMAP, SuSiE and SuSiE-Inf/FINEMAP-Inf)  

The installation of these tools are based on the instructions found on their respective websites. I found no issue with installing all of them concurrently.  

I prefer to set up conda envirmonets using the mamba solver when creating analysis specific programming contexts:

```
mamba create -n simGWAS r-base python
mamba activate simGWAS
```

#### simGWAS
```
install.packages("devtools") # if not already installed
devtools::install_github("chr1swallace/simGWAS")
```

See https://github.com/chr1swallace/simGWAS/blob/master/FAQ.md

#### FINEMAP
```
wget http://www.christianbenner.com/finemap_v1.4.1_x86_64.tgz
tar -xzvf finemap_v1.4.1_x86_64.tgz
mkdir -p ~/bin
cp ./finemap_v1.4.1_x86_64/finemap_v1.4.1_x86_64 ~/bin/finemap
export PATH=$PATH:$HOME/bin
```

See http://www.christianbenner.com/

#### SusieR
```
# install.packages("remotes")
remotes::install_github("stephenslab/susieR")
```

See https://github.com/stephenslab/susieR

##### Infinitesimal Tools
Clone the repo:
```
git clone https://github.com/FinucaneLab/fine-mapping-inf.git
cd fine-mapping-inf
```
Install dependencies:
```
mamba install -c conda-forge -c bioconda setuptools numpy pandas scipy wheel py-bgzip
```
To install SuSiE-inf:
```
cd susieinf
python setup.py bdist_wheel
pip install .
```
Similarly, to install FINEMAP-inf:
```
cd finemapinf
python setup.py bdist_wheel
pip install .
```
Once completed, run  

# Usage

# Credits
```
python run_fine_mapping.py -h
```

See https://github.com/FinucaneLab/fine-mapping-inf
