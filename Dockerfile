FROM alpine:3.4
MAINTAINER Daniel Guerra <daniel.guerra69@gmail.com>
RUN apk --update --no-cache add tshark
COPY bin /bin
CMD ["dump.sh"]
