#!/bin/sh

if [ -z "${CXX}" ]; then
    CXX=g++
fi

${CXX} -I${PREFIX}/include -o test test.cc

./test
