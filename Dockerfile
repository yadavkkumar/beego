FROM golang:latest

# Install beego and the bee dev tool
RUN go get github.com/astaxie/beego && go get github.com/beego/bee

# Expose the application on port 8080
EXPOSE 80

# Set the entry point of the container to the bee command that runs the
# application and watches for changes
CMD ["bee", "run"]
