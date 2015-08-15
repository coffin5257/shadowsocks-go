FROM golang:latest
RUN go get github.com/shadowsocks/shadowsocks-go/cmd/shadowsocks-server

ENV SERVER_ADDR 0.0.0.0
ENV SERVER_PORT 8388
ENV PASSWORD=
ENV METHOD      aes-256-cfb
ENV TIMEOUT     300

EXPOSE $SERVER_PORT

CMD shadowsocks-server -p $SERVER_PORT \
                       -k $PASSWORD \
                       -m $METHOD \
                       -t $TIMEOUT \
                       -d
