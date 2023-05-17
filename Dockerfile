FROM golang:1.20.4 as builder
COPY server.go .
RUN go build \
  -ldflags "-linkmode external -extldflags -static" \
  -a server.go

RUN groupadd --gid 1000 static \
  && useradd --uid 1000 --gid static --shell /bin/bash --create-home static


FROM scratch as main
COPY --from=builder /etc/passwd /etc/passwd
COPY --from=builder /go/server /

USER static
WORKDIR /home/static
