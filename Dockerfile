FROM ubuntu:22.04
RUN mkdir -p /app
ADD ./pebble /app/
ADD ./pebble-config.json /app/
CMD ["/app/pebble", "-config", "/app/pebble-config.json", "-strict"]
EXPOSE 8080