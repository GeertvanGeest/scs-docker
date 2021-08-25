FROM tensorflow/tensorflow:2.2.3-gpu-jupyter

RUN useradd --uid 1000 --user-group -m -s /bin/bash jupyter

USER 1000:1000
WORKDIR /home/jupyter

COPY requirements.txt .

RUN pip install -r requirements.txt
