#!/bin/bash

# ------------------------------------------------------- Generic PATH handling

# on all OSes I store all my files under Document with the following hierarchy
#   ${HOME}/Documents
#   ${HOME}/Documents/scripts/      all scripts and locally installed tools
#   ${HOME}/Documents/Programming/
#   ${HOME}/Documents/sources/      symlink to Programming (linux only)
#   ${HOME}/Documents/Dropbox/      not always present
#   ${HOME}/Documents/Personal/

export SCRIPTSDIR="${HOME}/Documents/scripts"
export DROPBOXDIR="${HOME}/Documents/Dropbox"

addToPath() {
  if [[ -d "${1:-}" ]]; then
    export PATH="${PATH}:${1:-}"
  else
    echo "Cannot add to PATH (missing): ${1:-}"
    return 1
  fi
  return 0
}

addToPath "${SCRIPTSDIR}"
addToPath "$( npm bin -g 2> /dev/null)" # binaries in prefix defined in .npmrc

# imagemagick
export MAGICK_HOME="${SCRIPTSDIR}/ImageMagick-6.9.0"
export DYLD_LIBRARY_PATH="${MAGICK_HOME}/lib/"
addToPath "${MAGICK_HOME}/bin"
[[ $? -eq 1 ]] && {
  unset MAGICK_HOME DYLD_LIBRARY_PATH
}

# mongodb
addToPath "${SCRIPTSDIR}/mongodb/bin"
