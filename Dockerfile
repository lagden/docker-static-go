# Builder
# --------------------
# --------------------
FROM joseluisq/static-web-server:2.16.0-alpine AS builder


# Main
# --------------------
# --------------------
FROM scratch as main
COPY --from=builder /usr/local/bin/static-web-server /sws
