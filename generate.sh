#!/usr/bin/env bash

protoc --cpp_out=./cpp/ \
       --go_opt=paths=source_relative \
       --go_out=./go \
       hll.proto