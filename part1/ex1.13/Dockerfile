FROM golang

WORKDIR /usr/src/app

COPY example-backend/ .

RUN go build

EXPOSE 8080

CMD ./server 
