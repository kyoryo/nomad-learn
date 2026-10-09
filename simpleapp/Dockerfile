# Build stage
FROM golang:1.25.7-alpine AS builder

WORKDIR /app

# Copy dependency files (if using modules)
COPY go.mod ./
RUN go mod download

# Copy source code
COPY . .

# Build the binary statically
RUN CGO_ENABLED=0 GOOS=linux go build -o /health-app .

# Final lightweight stage
FROM alpine:3.19

WORKDIR /root/

# Copy the compiled binary from the builder stage
COPY --from=builder /health-app .

EXPOSE 8080

CMD ["./health-app"]
