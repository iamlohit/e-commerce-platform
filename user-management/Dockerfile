# Use the official Go image as a builder stage
FROM golang:1.22 as builder

# Set the Current Working Directory inside the container
WORKDIR /app

# Set environment variables necessary for our image
ENV GOOS=linux \
    GOARCH=amd64 \
    CGO_ENABLED=0  
    # Disable CGO for static building if not using cgo in your app

# Copy go mod and sum files
COPY user-management/go.mod user-management/go.sum ./

# Download all dependencies. Dependencies will be cached if the go.mod and go.sum files are not changed
RUN go mod download

# Copy the rest of the application's source code
COPY user-management ./

# Build the application
RUN go build -o main .

# Start a new stage from scratch for running the application
FROM alpine:latest  

# Set the working directory
WORKDIR /root/

# Copy the Pre-built binary file from the previous stage
COPY --from=builder /app/main .

# Command to run the executable
CMD ["./main"]
