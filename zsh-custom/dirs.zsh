builtin echo "  setting PATH and NVM"

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
addToPath "${DROPBOXDIR}"

# nvm
export NVM_DIR="/Users/tgo/Documents/scripts/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm

