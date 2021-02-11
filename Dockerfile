FROM ubuntu:20.04

ENV LANG C.UTF-8
ENV PATH /root/anaconda3/bin:$PATH

WORKDIR /home/base

RUN apt-get update

COPY Anaconda3-2020.11-Linux-x86_64.sh .
COPY . .
RUN bash Anaconda3*.sh -b

RUN conda install -y -c plotly plotly
RUN conda install -y -c conda-forge fbprophet
RUN conda install -y Django==3.1.6
