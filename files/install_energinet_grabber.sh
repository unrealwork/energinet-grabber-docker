#!/usr/bin/env bash

git clone https://github.com/unrealwork/engrginet-grabber.git \
    && cd engrginet-grabber/ \
    && mvn clean package \
    && mkdir /opt/energinet-grabber \
    && tar -xvf target/energinet-grabber-0.0.2-bin.tar.gz --strip 1 -C /opt/energinet-grabber \
    && rm -rf ../engrginet-grabber \
    && ls /opt/energinet-grabber