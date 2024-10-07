FROM alpine:latest
    MAINTAINER ashroyer-admin <contact@alexshroyer.com>

RUN apk update && \
    apk add --no-cache curl jq

CMD ["sh", "-c", "curl 'https://swapi.dev/api/starships/' | jq '.results[] | select(.pilots != null and (.pilots | length) > 0) | {name, pilots}'"]
