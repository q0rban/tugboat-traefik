FROM traefik

RUN apk update && apk add git && apk add openssh-client
