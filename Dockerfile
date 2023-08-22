FROM ubuntu:22.04
RUN mkdir -p /app/test/certs
ADD ./pebble /app/
ADD ./pebble-config.json /app/
COPY ./test/certs /app/test/certs
CMD ["/app/pebble", "-config", "/app/pebble-config.json", "-strict"]
EXPOSE 8080