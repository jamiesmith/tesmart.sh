#!/bin/sh

for input in $(seq 1 8)
do
    ln -s kvminput.sh kvminput-${input}.sh
done
