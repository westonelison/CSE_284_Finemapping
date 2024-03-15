mamba create -n simGWAS r-base python r-devtools r-ggplot2 r-dplyr r-stringr r-data.table r-ggrepel r-remotes -c conda-forge
mamba activate simGWAS

# Install FINEMAP
mkdir tools

cd tools

wget http://www.christianbenner.com/finemap_v1.4.1_x86_64.tgz
tar -xzvf finemap_v1.4.1_x86_64.tgz
mkdir -p ~/bin
cp ./finemap_v1.4.1_x86_64/finemap_v1.4.1_x86_64 ~/bin/finemap
export PATH=$PATH:$HOME/bin

cd ..

# Inf

cd tools

git clone https://github.com/FinucaneLab/fine-mapping-inf.git
cd fine-mapping-inf

mamba install -c conda-forge -c bioconda setuptools numpy pandas scipy wheel py-bgzip

### SuSiE-Inf

cd susieinf
python setup.py bdist_wheel
pip install .
cd ..

### FINEMAP-Inf

cd finemapinf
python setup.py bdist_wheel
pip install .
cd ..

python run_fine_mapping.py -h

cd ../..

# SimGWAS

Rscript --vanilla install.simGWAS.Rscript

# SuSiE

Rscript --vanilla install.susieR.Rscript

cd ..
