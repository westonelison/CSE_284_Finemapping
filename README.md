# CSE_284_Finemapping
Class project testing out different fine mapping methods.




### Installations
I prefer conda envirmonets using the mamba solver:

```
mamba create -n simGWAS r-base python
mamba activate simGWAS
```

##### simGWAS
```
install.packages("devtools") # if not already installed
devtools::install_github("chr1swallace/simGWAS")
```

See https://github.com/chr1swallace/simGWAS/blob/master/FAQ.md

##### Finemap
```
wget http://www.christianbenner.com/finemap_v1.4.1_x86_64.tgz
tar -xzvf finemap_v1.4.1_x86_64.tgz
mkdir -p ~/bin
cp ./finemap_v1.4.1_x86_64/finemap_v1.4.1_x86_64 ~/bin/finemap
export PATH=$PATH:$HOME/bin
```

See http://www.christianbenner.com/

##### SusieR
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
```
python run_fine_mapping.py -h
```

See https://github.com/FinucaneLab/fine-mapping-inf
