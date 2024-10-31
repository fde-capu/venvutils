#!/bin/sh

path=$(dirname "$0")
[ ! -z "$VIRTUAL_ENV" ] && echo "Not cleaning. Must \`deactivate\` first."
[ ! -z "$VIRTUAL_ENV" ] && exit 1
rm -rf "$path"/../__pycache__
rm -rf "$path"/../__pyvenv__
