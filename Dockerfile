FROM golang:1.24.0

RUN mkdir /app

WORKDIR /app

COPY go.mod go.sum proxy.go registrationrequest.go /app/

RUN go build

ENTRYPOINT ["/app/go-rev-proxy"]
