#!/bin/sh

path=$(dirname "$0")
env_name="$path/../$PYVENV"
python3 -m venv "${env_name}"
