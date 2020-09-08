FROM traefik

USER root

RUN apk update && apk add git openssh-client bash runit

RUN mkdir -p /etc/service/traefik
COPY dist/run /etc/service/traefik/run

HEALTHCHECK CMD /bin/nc -z 127.0.0.1 80

ENTRYPOINT []
CMD ["/sbin/runsvdir", "-P", "/etc/service"]
