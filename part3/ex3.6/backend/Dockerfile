FROM golang AS build

WORKDIR /usr/src/app

COPY example-backend/ .

RUN go build

FROM alpine:latest

WORKDIR /app

COPY --from=build /usr/src/app/server /app/server

RUN adduser -D backend_user

EXPOSE 8080

USER backend_user

CMD ./server 
