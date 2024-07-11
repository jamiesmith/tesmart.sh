#!/bin/sh

command=$0

export PATH=${PATH}:~/Dropbox/bin:/opt/homebrew/bin:/usr/local/bin/:~/bin/

minInput=1
maxInput=8

tmp=${command%*.sh}
input=${tmp##*-}
cur=$(tesmart-ctl get-input | head -1 | awk '{print $4}')

if [ "$input" = "previous" ]
then
    input=$(($cur - 1))
    [ $input -lt $minInput ] && input=$maxInput
elif [ "$input" = "next" ]
then
    input=$(($cur + 1))
    [ $input -gt $maxInput ] && input=$minInput
fi


tesmart-ctl s $input
tesmart-ctl g

