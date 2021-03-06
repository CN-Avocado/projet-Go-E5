# syntax=docker/dockerfile:1
FROM golang:1.18 AS builder
WORKDIR /go/src/github.com/estiam/choaching
COPY ./ ./
RUN CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o api .

FROM alpine:latest  
RUN apk --no-cache add ca-certificates
WORKDIR /root/
COPY --from=builder /go/src/github.com/estiam/choaching/api ./
CMD ["./api"]