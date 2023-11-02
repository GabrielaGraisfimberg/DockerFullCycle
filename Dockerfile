# Etapa de compilação
FROM golang:1.21.3 AS build

WORKDIR /app

COPY go.mod ./
COPY main.go ./

RUN  go build -o /fullcyclelang

FROM scratch

WORKDIR /

COPY --from=build /fullcyclelang /fullcyclelang

CMD [ "/fullcyclelang" ] 
