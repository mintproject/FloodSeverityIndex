FROM continuumio/miniconda3

RUN conda install -c conda-forge cartopy -y \
		&& conda install  xarray  numpy pandas matplotlib imageio -y

RUN apt update && apt install -y unzip zip

RUN mkdir /srv/flood
ADD . /srv/flood
RUN cd /srv/topoflow && pip install .
