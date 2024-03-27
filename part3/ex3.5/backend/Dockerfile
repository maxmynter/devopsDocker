FROM golang

WORKDIR /usr/src/app

COPY example-backend/ .

RUN go build

EXPOSE 8080

RUN adduser backend_user

USER backend_user

CMD ./server 
