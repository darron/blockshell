FROM golang:1.17.2 AS build

WORKDIR /src/
ADD . /src/
RUN go build -o blockshell main.go 

FROM scratch

COPY --from=build /src/blockshell blockshell
WORKDIR /

ENTRYPOINT ["./blockshell"]