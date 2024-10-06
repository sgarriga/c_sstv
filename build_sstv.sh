#!/bin/bash

if [ ! -d "sstv/sstv" ]; then
    echo Cloning Repo...
    git clone https://github.com/colaclanth/sstv.git
fi

echo Ensure Repo is up to date...
cd sstv
git pull


echo Convert Python to C
cd sstv
cythonize -i *.py
cython __main__.py --embed

echo Builing the C program
PYTHONLIBVER=python$(python3 -c 'import sys; print(".".join(map(str, sys.version_info[:2])))')$(python3-config --abiflags)
gcc -Os $(python3-config --includes) __main__.c -o sstv $(python3-config --ldflags) -l$PYTHONLIBVER

echo Done!
