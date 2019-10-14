FROM alpine:latest
WORKDIR /root
ARG GIT_USER
ARG GIT_TOKEN
ARG GIT_REPOSITORY
RUN apk add --no-cache git openssh
RUN git clone https://${GIT_USER}:${GIT_TOKEN}@github.com/${GIT_REPOSITORY} project && cd project
CMD cat project/test.txt
