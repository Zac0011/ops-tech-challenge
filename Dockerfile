FROM golang:1.16-alpine

ARG secret

WORKDIR /go/src/app

COPY go.mod ./
RUN go mod download


ENV SECRET $secret
COPY *.go .
RUN go build -o /ops-tech-challenge

EXPOSE 8080

CMD [ "/ops-tech-challenge" ]