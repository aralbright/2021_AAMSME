# 2021_AAMSME

Author: Ashley Albright

This repository contains the necessary files and notebooks to reproduce figures and analysis from 'Single-nucleus RNA-sequencing in pre-cellularization Drosophila melanogaster embryos' and _eventual link_. The notebooks are hosted on Google Colab, making the analysis usable and reproducible. 

## Notebooks: 

1. Preprocessing.ipynb

    - Input: control and ctcf adata objects generated from kb count
    - Output: filtered and concatenated adata 

2. scVI_clustering.ipynb

    - Input: filtered and concatenated adata from preprocessing.ipynb
    - Output: final adata - batch corrected adata using scVI, clustered using scanpy, removed 'bad' clusters

3. Differential_Expression.ipynb

    - Input: final adata
    - Output: volcano plots, upset plot, single gene plots

4. novosparc.ipynb

    - Input: final adata
    - Output: virtual in situ hybridizations

## Acknowledgements

Thank you to Sina Booeshaghi, Tara Chari, and Lior Pachter for helpful discussions on single-nucleus/cell RNA-sequencing analysis. 
