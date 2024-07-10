#!/bin/sh

for input in $(seq 1 8)
do
    ln -s tesmart-input-wrapper.sh kvminput-${input}.sh
done
