FROM ubuntu:22.04

WORKDIR /app
COPY . /app

RUN apt-get update

RUN apt-get install -y \
    build-essential \
    curl

RUN apt-get update

RUN curl https://sh.rustup.rs -sSf | bash -s -- -y

ENV PATH="/root/.cargo/bin:${PATH}"
RUN rustup update stable
RUN cargo build