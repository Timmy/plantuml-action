FROM alpine:3.11

RUN apk add --no-cache openjdk11-jre graphviz ttf-droid ttf-droid-nonlatin

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

CMD [ "-h" ]
