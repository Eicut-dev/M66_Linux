#!/bin/bash
# gcc_make.sh — Linux version of gcc_make.bat

set -e  # Stop on error

case "$1" in
    new)
        cp -f libs/app_image_bin.cfg build/gcc/app_image_bin.cfg
        make -f make/gcc/gcc_makefile 2> build/gcc/build.log
        ;;
    clean)
        make clean -f make/gcc/gcc_makefile
        rm -f build/gcc/build.log
        rm -f build/gcc/app_image_bin.cfg
        ;;
    help)
        make help -f make/gcc/gcc_makefile
        ;;
    *)
        echo "Incorrect input argument."
        echo "Usage: $0 {new|clean|help}"
        ;;
esac
