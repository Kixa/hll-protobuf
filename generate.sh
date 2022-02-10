#!/usr/bin/env bash

protoc --cpp_out=. \
       --go_opt=paths=source_relative \
       --go_out=. \
       hll.proto

# Add exclusions to the c++ so we don't need cgo.
echo -e -n "// go:build exclude\n// +build exclude\n\n" | cat - hll.pb.cc > hll.pb.cc.tmp
mv hll.pb.cc.tmp hll.pb.cc

echo -e -n "// go:build exclude\n// +build exclude\n\n" | cat - hll.pb.h > hll.pb.h.tmp
mv hll.pb.h.tmp hll.pb.h
