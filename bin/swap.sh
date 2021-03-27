#!/bin/sh

# Requires OS variable to be set in shell configuration

if test $OS = "FreeBSD"; then
    TOTAL=`swapinfo -m`
    echo $TOTAL | awk '{print $NF}'
fi
