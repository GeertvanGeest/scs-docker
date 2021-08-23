FROM jupyter/minimal-notebook:70178b8e48d7


USER root
RUN cat /etc/skel/.bashrc >> /etc/bash.bashrc

RUN apt-get update

RUN apt-get install -y \
curl \
libhdf5-dev \
gcc \
g++

# change back to notebook user
USER $NB_UID

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY multiomics-environment.yml .

RUN /opt/conda/bin/conda install -y nb_conda_kernels

RUN /opt/conda/bin/conda env create -f multiomics-environment.yml

