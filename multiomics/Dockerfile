FROM jupyter/minimal-notebook:70178b8e48d7

COPY multiomics-environment.yml .

RUN /opt/conda/bin/conda install -y nb_conda_kernels

RUN /opt/conda/bin/conda env create -f multiomics-environment.yml
