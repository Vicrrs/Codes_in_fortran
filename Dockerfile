FROM debian:stable-slim

RUN apt update && apt install -y \
    gfortran \
    build-essential \
    make \
    nano \
    tree \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /work

CMD ["bash"]
