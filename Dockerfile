FROM continuumio/miniconda3:latest
RUN apt-get update -qq && apt-get upgrade -qq -y && \
    git clone https://github.com/noraracht/kf2d.git
