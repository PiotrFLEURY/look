FROM ubuntu:22.04

# Prerequisites
RUN apt update && apt install -y curl git unzip xz-utils zip libglu1-mesa openjdk-8-jdk wget

RUN useradd -ms /bin/bash developer
USER developer
WORKDIR /home/developer

RUN git clone https://github.com/flutter/flutter.git -b stable

ENV PATH "$PATH:/home/developer/flutter/bin:/home/developer/flutter/bin/cache/dart-sdk/bin"

RUN flutter precache