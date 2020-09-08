FROM traefik

USER root

RUN apk add --update \
    git \
    openssh-client \
    bash \
    runit \
    netcat-openbsd \
  && rm -rf /var/cache/apk/*

RUN mkdir -p /etc/service/traefik
COPY dist/run /etc/service/traefik/run

HEALTHCHECK CMD /usr/bin/nc -z 127.0.0.1 80

ENTRYPOINT []
CMD ["/sbin/runsvdir", "-P", "/etc/service"]
