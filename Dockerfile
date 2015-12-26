FROM debian:stable

RUN apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y \
    opendnssec \
    softhsm \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/sbin/ods-control"]
