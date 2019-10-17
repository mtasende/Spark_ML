#!/bin/bash

conda remove --name spark --all
conda create -n spark python=3 anaconda --yes
source activate spark
conda install -c conda-forge jupyterthemes --yes
conda install -c conda-forge pyspark --yes
conda install -c conda-forge lightgbm --yes
conda install -c conda-forge xgboost --yes
conda install -c pytorch pytorch torchvision cudatoolkit=9.0 --yes
#conda install pytorch-cpu torchvision-cpu --yes

# Install the Ipython kernel
python -m ipykernel install --user --name spark --display-name "spark"


