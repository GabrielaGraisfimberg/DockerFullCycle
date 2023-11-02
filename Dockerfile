FROM golang:1.21.3

WORKDIR /app

COPY go.mod ./
COPY main.go ./

RUN  go build -o /fullcycle


CMD ["/fullcycle"]
