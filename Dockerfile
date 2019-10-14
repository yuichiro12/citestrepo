FROM alpine:latest
RUN apk add --no-cache git
RUN git clone https://github.com/yuichiro12/privaterepo && cd privaterepo
CMD cat test.txt