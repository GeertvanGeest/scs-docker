FROM tensorflow/tensorflow:latest-gpu-jupyter

RUN useradd --uid 1000 --user-group -m -s /bin/bash jupyter

USER 1000:1000
WORKDIR /home/jupyter
