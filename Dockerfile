FROM alpine:latest as builder
RUN wget https://github.com/nemasu/asmttpd/releases/download/0.4.6/asmttpd
RUN chmod +x asmttpd
RUN adduser -D static

FROM scratch as main
COPY --from=builder /etc/passwd /etc/passwd
COPY --from=builder asmttpd /

USER static
WORKDIR /home/static
