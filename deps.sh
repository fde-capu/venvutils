#!/bin/bash

  path=$(dirname "$0")
  requirements="$path/../requirements.txt"

  if [[ ! -f $requirements ]]; then
    echo "requirements.txt file not found. Make one or, from within the virtual environment, install each dependency manually. Check the project documentation to find out what they are."
  else
    echo "These dependencies are required:"
    echo "---"
    cat requirements.txt
    echo "---"
    echo "Proceed? [Y/n] " && read answer
    [[ "$answer" != "${answer#[Yy]}" ]] && echo "Continuing without dependency installs." && exit

    if [[ "$SECTION_NOT_IMPLEMENTED_SO_SKIPPING" ]]; then
      echo -ne "Do you want to install them system-wide? You won't need to activate a virtual environment before launching the program, however, this will use 'pip install --break-system-packages', so do it at your own risk!
      [y/N] " && read answer
      [[ "$answer" != "${answer#[Yy]}" ]] && globally="true" || globally=""
      if [[ ! -z "$globally" ]]; then
        echo "Global install not implemented (yet)."
        exit 1
      fi
    fi

    pip install -r $requirements

  fi
