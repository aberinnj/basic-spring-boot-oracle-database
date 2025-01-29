FROM ubuntu:latest
LABEL authors="naberin"

ENTRYPOINT ["top", "-b"]