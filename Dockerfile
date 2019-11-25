FROM continuumio/miniconda3

RUN conda install -c conda-forge -y
        cartopy \
	   && conda install -y \
        xarray=0.12.1 \
        numpy \
        pandas \
        matplotlib \
        imageio

RUN apt update && apt install -y unzip zip

RUN mkdir /srv/flood
ADD . /srv/flood
WORKDIR /srv/flood
