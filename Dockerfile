FROM jupyter/base-notebook:latest

USER root

RUN \
  apt-get update && \
  apt-get upgrade -y && \
  apt-get install -y build-essential git && \
  apt-get clean -y && \
  rm -rf /var/lib/apt/lists/*

COPY notebooks/ ${HOME}
RUN chown -R ${NB_UID} ${HOME}

USER $NB_USER

RUN \
  conda install autograd matplotlib numpy pandas patsy scikit-learn scipy && \
  conda install -c conda-forge cvxopt glpk keras tensorflow && \
  conda install -c cvxgrp ecos multiprocess scs

RUN \
  git clone https://github.com/cvxgrp/cvxpy.git /tmp/cvxpy && \
  cd /tmp/cvxpy && \
  git checkout 1.0 && \
  python setup.py install && \
  rm -rf /tmp/cvxpy
