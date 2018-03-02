FROM ubuntu:trusty

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -q -y --no-install-recommends \
  build-essential checkinstall git vim screen wget man curl tmux openssh-server \
  python-dev erlang libicu-dev software-properties-common libsqlite3-dev docker docker.io
