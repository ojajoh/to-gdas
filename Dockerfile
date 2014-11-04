# to-gdas
#
# VERSION       1.0

# use the ubuntu base image provided by Docker
FROM ubuntu

MAINTAINER Joost Venema, joost.venema@kadaster.nl

# make sure the package repository is up to date
RUN apt-get update

# install software dependecies
RUN apt-get install -y git python3-lxml python3-requests python3-bottle python3-waitress

# pull latest to-gdas version from github
RUN git clone https://github.com/joostvenema/to-gdas.git

# set workingdir
WORKDIR /to-gdas

# expose the default port
EXPOSE 9090

# bring app to live
CMD python3 webapp.py


