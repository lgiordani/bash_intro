FROM ubuntu:latest

RUN apt update && apt install -y man less unminimize && yes | unminimize
