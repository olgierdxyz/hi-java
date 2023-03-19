FROM docker.io/redhat/ubi8-minimal
RUN set -eux; \
    microdnf -y --nodocs --noplugins install git java-17-openjdk-headless && \
    microdnf clean all
