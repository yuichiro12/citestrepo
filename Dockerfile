FROM alpine:latest
RUN apk add --no-cache git openssh
RUN git clone https://${GIT_USER}:${GIT_TOKEN}@github.com/${GIT_REPOSITORY} && cd privaterepo
CMD cat test.txt
