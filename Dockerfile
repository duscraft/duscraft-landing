FROM golang:alpine AS builder

WORKDIR /app

COPY go.* ./
RUN go mod download

COPY . .
RUN apk add gcc musl-dev
RUN go build .

CMD ["./duscraft-landing"]
