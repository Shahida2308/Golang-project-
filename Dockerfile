FROM golang:latest

RUN mkdir /app
WORKDIR /app
COPY go.mod ./
RUN go mod download
COPY *.go ./

RUN go build -o my-app

EXPOSE 8090

CMD [ "./my-app" ]