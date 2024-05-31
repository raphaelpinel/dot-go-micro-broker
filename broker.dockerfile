# base go image
FROM golang:1.18-alpine as builder

RUN mkdir /app

COPY . /app

WORKDIR /app

# Build the brokerApp binary using the go tool
RUN CGO_ENABLED=0 go build -o brokerApp ./cmd/api

# Make the brokerApp binary executable
RUN chmod +x /app/brokerApp

# build a tiny docker image
FROM alpine:latest

RUN mkdir /app

# Copy the brokerApp binary from the builder stage to the base image
COPY --from=builder /app/brokerApp /app

CMD [ "/app/brokerApp"]
