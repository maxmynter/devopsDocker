FROM golang:1.21.8-alpine3.18 AS build

WORKDIR /usr/src/app

COPY example-backend/ .

RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o server

RUN echo "backend_user:x:10001:10001::/:" > /etc/passwd.min


FROM scratch

WORKDIR /app

COPY --from=build /usr/src/app/server /app/server
COPY --from=build /etc/passwd.min /etc/passwd

USER 10001

EXPOSE 8080

USER backend_user

CMD ["./server"]
