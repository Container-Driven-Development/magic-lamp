FROM ubuntu:noble-20240225

LABEL org.opencontainers.image.source https://github.com/Container-Driven-Development/magic-lamp
LABEL org.opencontainers.image.description "Container Toolbox test, data migration and other stuff"

ENTRYPOINT ["/bin/bash"]

CMD ["-c", "while true; do echo sleep 3;sleep 3; done"]

RUN export DEBIAN_FRONTEND=noninteractive && \
    export DEBCONF_NONINTERACTIVE_SEEN=true && \
    apt-get update && apt-get install -y curl telnet ssh rsync screen && rm -rf /var/lib/apt/lists/*
