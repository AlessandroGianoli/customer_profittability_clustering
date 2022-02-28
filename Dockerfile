FROM jupyter/datascience-notebook:ubuntu-20.04
USER root
COPY requirements.txt ./
RUN apt-get update
RUN pip install --no-cache-dir -r requirements.txt 
RUN apt-get clean && rm -rf var/lib/apt/list/*
USER jovyan
