FROM tensorflow/tensorflow:2.2.3-gpu-jupyter

RUN useradd --uid 1000 --user-group -m -s /bin/bash jupyter

USER 1000:1000
WORKDIR /home/jupyter

COPY requirements.txt .

RUN pip install -r requirements.txt

RUN curl -O https://repo.anaconda.com/miniconda/Miniconda3-py38_4.10.3-Linux-x86_64.sh

RUN bash Miniconda3-py38_4.10.3-Linux-x86_64.sh \
-b \
-p ~/opt/miniconda \
&& rm -f Miniconda3-py38_4.10.3-Linux-x86_64.sh 

RUN ~/opt/miniconda/bin/conda init
