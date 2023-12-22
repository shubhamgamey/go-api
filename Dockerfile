# use official Golang image
FROM golang:1.17.13-alpine

# set working directory
WORKDIR /app

# Copy the source code
COPY . . 

# Download and install the dependencies
RUN go get -d -v ./...

# Build the Go app
RUN go build -o main go.com/go-api .

#EXPOSE the port
EXPOSE 8000

# Run the executable
CMD ["./api"]