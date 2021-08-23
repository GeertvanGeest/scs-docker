FROM rocker/ml:4.1.1

RUN sudo apt-get update

RUN sudo apt-get install -y \
libxt6 \
libgl1-mesa-glx \
libcurl4-openssl-dev \
libglpk-dev \
libxml2-dev

COPY install_packages.R ./

RUN Rscript install_packages.R

