FROM ubuntu:22.04
RUN mkdir -p /app
ADD ./pebble /app/
CMD /app/pebble
EXPOSE 14000