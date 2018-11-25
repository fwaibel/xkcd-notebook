FROM jupyter/scipy-notebook:e8613d84128b
# Only hashes available in https://hub.docker.com/r/jupyter/scipy-notebook/tags/

USER root

RUN apt-get update
RUN apt-get install -y apt-utils fonts-humor-sans

USER jovyan

RUN rm -rf /home/jovyan/.cache/matplotlib/
