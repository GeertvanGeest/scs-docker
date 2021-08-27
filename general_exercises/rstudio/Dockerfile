FROM rocker/rstudio:4.1.0

RUN apt-get update

RUN apt-get install -y \
libbz2-dev \
libz-dev \
libclang-dev \
libxt6 \
libgl1-mesa-glx \
libcurl4-openssl-dev \
libglpk-dev \
libxml2-dev \
liblzma-dev

COPY installations_CRAN.R .

RUN Rscript installations_CRAN.R 

COPY installations_bioc.R . 

RUN Rscript installations_bioc.R 

COPY additional_installations.R .

RUN Rscript additional_installations.R 

RUN apt-get install -y \
curl \
libhdf5-dev

RUN apt-get -y upgrade 

RUN apt-get install -y python3-pip pipenv libmagick++-dev


# RUN apt-get install -y \
# libbz2-dev \
# libz-dev \
# libclang-dev \
# libxt6 \
# libgl1-mesa-glx \
# libcurl4-openssl-dev \
# libglpk-dev \
# libxml2-dev \
# liblzma-dev

# COPY installations_CRAN.R .

# RUN Rscript installations_CRAN.R 

# COPY installations_bioc.R . 

# RUN Rscript installations_bioc.R 

# COPY additional_installations.R .

# RUN Rscript additional_installations.R 

# RUN apt-get install -y \
# curl \
# libhdf5-dev


# # RUN wget https://repo.anaconda.com/miniconda/Miniconda3-py38_4.10.3-Linux-x86_64.sh

# # RUN bash Miniconda3-py38_4.10.3-Linux-x86_64.sh \
# # -b \
# # -p /opt/miniconda \
# # && rm -f Miniconda3-py38_4.10.3-Linux-x86_64.sh 

# # ENV PATH="/opt/miniconda3/bin:${PATH}"
# # ARG PATH="/opt/miniconda3/bin:${PATH}"

# # COPY sc21.yaml .

# # RUN /opt/miniconda/bin/conda env create -f sc21.yaml

# # USER rstudio 

# # RUN /opt/miniconda/bin/conda init

# # SHELL ["conda", "run", "-n", "scRNAseq2021", "/bin/bash", "-c"]
