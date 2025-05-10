FROM golang:1.20 as build
WORKDIR /app
COPY . .
RUN go build -o collector

FROM debian:bullseye-slim
COPY --from=build /app/collector /collector
COPY config.yaml /app/config.yaml
CMD ["/collector"]