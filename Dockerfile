FROM ubuntu:latest

RUN apt update && yes | unminimize && apt install -y man less
