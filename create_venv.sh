#!/bin/sh

path=$(dirname "$0")
env_name="$path/../$PYVENV"
parent_name=$(basename $(pwd))
python3 -m venv "${env_name}" --prompt "$parent_name"
