# venvutils
## Automated set up for Python3 virtual environment and dependencies

After `source venvutils/source.me` finishes, one will do:

`activate`
..._stuff_...
`deactivate`

The above is all one needs.
Extra commands:

`venv` creates the virtual environment.
`deps` installs dependencies (in venv) from `requirements.txt`.
`activate` actually does `venv && __pyvenv__/bin/activate && deps`.
`deactivate` is what it states, however, one must manually
  run `source venvutils/unalias.rc` if they will.

Directory name `__pyvenv__` is a fixed name of choice.
`re`, `clean` or `reset` affect `__pyvenv__` and `__pycache__` as well.
`build` sets up but does not activate.
