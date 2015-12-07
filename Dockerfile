FROM debian:stable

RUN apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y \
    opendnssec \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
