FROM alpine:latest
RUN apk add --no-cache busybox
RUN apk add iperf
RUN apk add python3
RUN apk add socat
COPY ./config.sh /config.sh
RUN chmod +x /config.sh

