#!/bin/bash

# Create a Python3 Virtual Environment
# There are so many fucking gotchas in doing this, I've tried to make it easier.

echo -e "Building Python 3 Virtual Environment!"
echo -e "    Building base Python3 Virtual Environment via venv..."
python3 -m venv $1
PYTHON_VERSION=$($1/bin/python -V)
echo -e "        ...created with $PYTHON_VERSION"

echo -e "    Entering venv..."
source $1/bin/activate

echo -e "    Upgrading pip3..."
pip3 install --upgrade pip
PIP3_VERSION=$(pip3 -V)

echo -e "Done: $PYTHON_VERSION, $PIP3_VERSION @ $1"
echo -e "To activate:"
echo -e "    source $1/bin/activate"
