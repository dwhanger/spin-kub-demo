FROM golang

ADD . /go/src/github.com/dwhanger/spin-kub-demo

RUN go install github.com/dwhanger/spin-kub-demo

ADD ./content /content

ENTRYPOINT /go/bin/spin-kub-demo
