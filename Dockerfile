FROM continuumio/miniconda3

ADD environment.yml .
RUN conda install --file environment.yml

RUN apt update && apt install -y unzip zip

RUN mkdir /srv/flood
ADD . /srv/flood
WORKDIR /srv/flood
