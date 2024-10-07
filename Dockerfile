FROM alpine:latest
    MAINTAINER ashroyer-admin <contact@alexshroyer.com>

# deps
RUN apk update && \
    apk add --no-cache curl jq python3 && \
    mkdir -p /app

COPY ./script.sh ./display.py /app

WORKDIR /app

# this is all we want to do
CMD ["sh", "/app/script.sh"]
