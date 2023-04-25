# This image is used as a wrapper of entrypoint scripts of other containers.
FROM scratch
LABEL maintainer="Cytomine <dev@cytomine.com>"

# Set current directory
WORKDIR /

# Pick all bash scripts
COPY *.sh .

# No ENTRYPOINT nor CMD, this container is not meant to run.