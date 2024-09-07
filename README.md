# submission checklist
Tooling to make sure you don't forget anything for the submission


This can be used to check what files a project's workflow requires and creates.
These file lists are then checked against the project's git tree to identify any
local files that are not in the git tree.

## How to use this

1. Edit the `Makefile` to point to the research project's parent directory and .git directory.
2. `make`  # to generate file list and git file list
3. work on `parse_notebooks.ipynb`


This is a work in progress.
