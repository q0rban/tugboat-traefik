FROM traefik

USER root

RUN apk update && apk add git openssh-client bash runit

CMD ["/sbin/runsvdir", "-P", "/etc/service"]
