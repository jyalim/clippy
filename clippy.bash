#!/usr/bin/env bash

myhome=$(eval echo ~$(whoami))
target=${myhome}/.clippy

if [[ -p /dev/stdin ]]; then
    cat > $target
elif ! [[ -z $@ ]]; then
    echo $@ > $target
else
    cat $target
fi
