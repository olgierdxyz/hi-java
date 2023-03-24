FROM docker.io/redhat/ubi8-minimal
RUN set -eux; \
    microdnf -y --nodocs --noplugins --setopt=install_weak_deps=0 --setopt=allow_vendor_change=0 --setopt=keepcache=0 install git docker java-17-openjdk-headless && \
    microdnf -y clean all && \
    git clone https://github.com/olgierdxyz/hi-java.git && \
    cd hi-java && \
    docker build --no-cache -t result .