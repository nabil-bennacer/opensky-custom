FROM ghcr.io/openskynetwork/opensky-collector:latest
COPY config.yaml /app/config.yaml
CMD ["./collector"]
