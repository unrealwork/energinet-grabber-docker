#!/usr/bin/env bash

git clone https://github.com/unrealwork/engrginet-grabber.git \
    && cd engrginet-grabber/ \
    && mvn clean package \
    && mkdir /opt/energinet-grabber \
    && tar -xzf target/energinet-grabber-*.tar.gz -C /opt/energinet-grabber --strip 1 \
    && cd .. \
    && rm -rf enrrginet-grabber