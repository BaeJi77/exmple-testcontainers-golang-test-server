# Set the base image to golang 1.20
FROM golang:1.20

# Create a new directory inside the container at /app
RUN mkdir /app

# Copy the current directory contents into the new /app directory
COPY . /app

# Set the working directory to /app
WORKDIR /app

# Expose port 10000
EXPOSE 10000

# Build the application using the command "go build -o main ."
RUN go build -o main .

# Set the default command to run the application with the command "./main"
CMD ["./main"]
