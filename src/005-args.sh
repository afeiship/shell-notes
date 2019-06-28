#!/usr/bin/env bash

ARG1=${1:-foo}
ARG2=${2:-bar}
ARG3=${3:-1}
ARG4=${4:-$(date)}

echo "$ARG1"
echo "$ARG2"
echo "$ARG3"
echo "$ARG4"
