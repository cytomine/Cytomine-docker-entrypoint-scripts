# This image is used a a comple holder of entrypoint scripts
FROM scratch
LABEL maintainer="Cytomine <dev@cytomine.com>"

WORKDIR /

# Pick all bash scripts
COPY *.sh .

# docker build . -t cytomine/entrypoint-scripts:v0.0.1 -t cytomine/entrycpoint-scripts:latest