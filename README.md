# venvutils
## Automated set up for Python3 virtual environment and dependencies

### First things first

You do `source venvutils/source.me`.
After that, the commands below will be available.

### Main commands

`activate`
    does the activation cicle, equivalent to:
    `venv && __pyvenv__/bin/activate && deps`.

..._do stuff_...

`deactivate`
    does what it states.

### Details

This project must be a subdirectory in the target Python3 repository.
You will have the aliases mentioned above and below.
Note: directory named `__pyvenv__` is a fixed name of choice.

#### Intermediate steps:
Those are usefull only to set and track details of the configuration.

`venv` creates the virtual environment.
`deps` installs dependencies (in venv) from `requirements.txt`.
  run `source venvutils/unalias.rc` if they will.
`build` sets up but does not activate.
`re`, `clean` or `reset` affect `__pyvenv__` **and `__pycache__`** as well.
