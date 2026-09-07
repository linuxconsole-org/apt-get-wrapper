FROM debian:bookworm
LABEL maintainer="Yann Le Doaré <services@linuxconsole.org>"
RUN apt-get update -y
RUN apt-get install lz4
