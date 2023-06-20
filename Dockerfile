# This image is used as a wrapper of entrypoint scripts of other containers.
FROM scratch

# Set current directory
WORKDIR /

# Pick all bash scripts
COPY *.sh .

ARG IMAGE_VERSION
ARG IMAGE_REVISION

LABEL org.opencontainers.image.authors='support@cytomine.com' \
      org.opencontainers.image.url='https://www.cytomine.org/' \
      org.opencontainers.image.documentation='https://doc.cytomine.org/' \
      org.opencontainers.image.source='https://github.com/cytomine/Cytomine-docker-entrypoint-scripts' \
      org.opencontainers.image.vendor='Cytomine Corporation SA' \
      org.opencontainers.image.version=${IMAGE_VERSION} \
      org.opencontainers.image.revision=${IMAGE_REVISION} \

# No ENTRYPOINT nor CMD, this container is not meant to run.