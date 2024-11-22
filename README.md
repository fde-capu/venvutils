# venvutils
## Automated set up for Python3 virtual environment and dependencies

Mus be a subdirectory or a submodule from the Python3 repository.
After `source venvutils/source.me` finishes, do:

`activate`
..._stuff_...
`deactivate`

The above is all that is needed.
Extra commands:

`venv` creates the virtual environment.
`deps` installs dependencies (in venv) from `requirements.txt`.
`activate` actually does `venv && __pyvenv__/bin/activate && deps`.
`deactivate` is what it states, however, one must manually
  run `source venvutils/unalias.rc` if they will.
`build` sets up but does not activate.
`re`, `clean` or `reset` affect `__pyvenv__` and `__pycache__` as well.
Directory name `__pyvenv__` is a fixed name of choice.
