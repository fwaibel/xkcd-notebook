FROM jupyter/scipy-notebook:5197709e9f23
# Only hashes available in https://hub.docker.com/r/jupyter/scipy-notebook/tags/

USER root

RUN apt-get update
RUN apt-get install -y apt-utils fonts-humor-sans

# Add graphviz (system package)
RUN apt-get install -y graphviz

# 'local' Python environment
USER jovyan

# Add graphviz (Python package)
RUN pip install graphviz

# Add support to connect to S3 buckets (e.g. from AWS)
RUN pip install boto3
RUN pip install smart_open

RUN rm -rf /home/jovyan/.cache/matplotlib/
