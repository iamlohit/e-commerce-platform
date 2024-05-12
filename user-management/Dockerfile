# Use the official Go image as a parent image
FROM golang:1.22

# Set the working directory inside the container
WORKDIR /app

# Copy the local code to the container's workspace
ADD . /app

# Download all dependencies. Dependencies will be cached if the go.mod and go.sum files are not changed
RUN go mod download

# Build the application
RUN go build -o main .

# Run the application
CMD ["/app/main"]
