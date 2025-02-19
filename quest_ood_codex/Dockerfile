FROM docker.io/ollama/ollama:0.5.7

RUN apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get install --no-install-recommends --yes \
        ncat \
        vim \
        curl \
        openssl \
        nano \
        emacs \
        xauth \
        tcl \
        lua5.3 \
        wget \
        ca-certificates \
        curl \
        pkg-config \
        make \
        autoconf \
        automake \
        cmake \
        binutils \
        websockify \
        locales

RUN locale-gen en_US.UTF-8
ENV LC_ALL="en_US.UTF-8"
ENV LANG="en_US.UTF-8"

# Install Mamba
RUN curl -L -O "https://github.com/conda-forge/miniforge/releases/latest/download/Miniforge3-$(uname)-$(uname -m).sh"
RUN bash Miniforge3-$(uname)-$(uname -m).sh -b -p /miniconda

# Install Jupyter into the base environment
RUN eval "$(/miniconda/bin/conda shell.bash hook)" && mamba install -c conda-forge jupyterlab jupyter-server-proxy notebook=6 ipykernel --yes

# Create a ML Data Science Kernel
RUN eval "$(/miniconda/bin/conda shell.bash hook)" && CONDA_OVERRIDE_CUDA="12" mamba create --name codex-workshop-py311 -c conda-forge -c nvidia python=3.11 tensorflow[build=*cuda*] pytorch::pytorch pytorch-cuda=12.1 seaborn h5py numba pandas matplotlib ipykernel scikit-learn scikit-image openpyxl sqlalchemy numexpr pyspark dask spacy transformers mlflow --yes && rm -rf /miniconda/pkgs

RUN eval "$(/miniconda/bin/conda shell.bash hook)" && conda activate codex-workshop-py311 && python -m pip install ollama && python -m ipykernel install --name codex-workshop-py311 --display-name "Python (codex-workshop-py311)" && conda clean --all --yes
