#!/bin/bash

# First tries to launch a new client frame. If the server is not up, then
# launches a regular emacs instance.

if ! emacsclient -c "$@"; then
  emacs "$@"
fi
