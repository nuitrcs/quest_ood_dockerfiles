FROM quay.io/jupyter/pyspark-notebook:spark-3.5.1


RUN python3 -m pip install mlflow==2.15.1

USER root

# munge and slurm stuff
ARG MUNGEUSER=493
ARG MUNGEGROUP=493
ARG SLURMUSER=496
ARG SLURMGROUP=494
RUN groupadd -f -g $SLURMGROUP slurm \
    && useradd --no-create-home -u $SLURMUSER -g slurm  -s /bin/bash slurm
RUN groupadd -f -g $MUNGEGROUP munge \
    && useradd --no-create-home -u $MUNGEUSER -g munge -s /sbin/nologin munge

RUN apt-get update -y && apt-get install -y uuid-runtime
