FROM traefik

RUN apk update && apk add git openssh-client bash
