#!/bin/sh

path=$(dirname "$0")
clear="$path"/clean.sh
clear || echo "Not resetting."
clear || exit 1
[ -z "$PYVENV" ] && echo "Must \`source utils/source.me\` first."
[ -z "$PYVENV" ] && exit 2
activate
