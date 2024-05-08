FROM continuumio/miniconda3:latest
RUN apt-get update -qq && apt-get upgrade -qq -y && \
    apt-get install -qq -y jellyfish && \
    git clone https://github.com/noraracht/kf2d.git && \
    conda env create --file=kf2d/kf2d/dependencies.yml && \
    source activate kf2d && \
    conda activate kf2d && \
    echo "source activate kf2d" > ~/.bashrc
ENV PATH /opt/conda/envs/kf2d/bin:$PATH
