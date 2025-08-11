#!/bin/bash
if [ -z "$1" ]; then
    echo "More parameter is required."
    echo ' - "make clean" may clean the compiling, and "make new" may start to compile.'
else
    ./make/gcc/gcc_make.sh "$1"
fi
