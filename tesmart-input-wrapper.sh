#!/bin/sh

command=$0

tmp=${command%*.sh}
input=${tmp##*-}

export PATH=${PATH}:~/Dropbox/bin:/opt/homebrew/bin:~/bin/

tesmart-ctl s $input
tesmart-ctl g

