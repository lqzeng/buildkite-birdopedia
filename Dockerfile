
FROM golang:1.16-alpine

# creates working directory inside the image we are building
WORKDIR /app

COPY go.mod ./
COPY go.sum ./

# modules will be installed into a directory inside the image
RUN go mod download

# copy assets onto image
COPY ./assets ./assets

# copy source code onto the image
COPY *.go ./

# compile application into root
RUN go build -o /birdopedia

EXPOSE 8080

CMD ["/birdopedia"]