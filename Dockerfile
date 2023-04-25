# This image is used a a comple holder of entrypoint scripts
FROM scratch
MAINTAINER Cytomine <dev@cytomine.com>

# Pick all bash scripts
COPY *.sh .

# docker build . -t cytomine/entrypoint-scripts:v0.0.1 -t cytomine/entrycpoint-scripts:latest