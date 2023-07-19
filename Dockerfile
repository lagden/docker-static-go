# Builder
# --------------------
# --------------------
FROM joseluisq/static-web-server:2.20 AS builder


# Main
# --------------------
# --------------------
FROM scratch as main
COPY --from=builder /static-web-server /sws
