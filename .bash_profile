#!/bin/bash

# in .bash_profile, put everything needed in login shells. Keep everything
# non-interactive in .bashrc.

# first thing, source .bashrc to avoid duplication
source ~/.bashrc

# ------------------------------------------------- Generic aliases and helpers
# set all aliases for linux based systems.  Mac OS specific section below
# will overrided when needed

alias ll='ls -laF --color=auto'
alias l='ll'
alias less='less -F' # auto exit if one screen or less
alias cgrep='grep -iHn --color=auto'
alias cegrep='egrep --color=auto'
manf() { man $1 | less -p "^ +$2"; } # open manpage and jump to option
randpwd() { tr -dc "[:alnum:]" < /dev/urandom | head -c ${1:-8}; echo; }
spot() { locate "$@"; }

export EDTIOR="/usr/bin/vim"

# --------------------------------------------------------------------- History
HISTCONTROL=ignoreboth  # avoid duplicates
shopt -s histappend     # do not overwrite
HISTSIZE=2000

# ----------------------------------------- Mac OS Specific aliases and helpers
if [[ "$OSTYPE" == "darwin"* ]]; then
  alias ll='ls -laFG'
  alias gvim='mvim +NERDTree'
  alias cleanupDS="find . -type f -name '*.DS_Store' -ls -delete"
  alias ql='qlmanage -p 2>/dev/null' # quicklook a file with ql <file>
  spot() { mdfind "kMDItemDisplayName == '$@'wc"; }
  randpwd() {
    LC_ALL=C tr -dc 'A-Za-z0-9_!@#$%&()\-+=' < /dev/urandom | head -c ${1:-8};
    echo;
  }
  # toggle viewing hidden files in finder
  alias hidden='CUR=$( defaults read com.apple.finder AppleShowAllFiles ); SETTO="NO"; [ "$CUR" == "NO" ] && SETTO="YES"; defaults write com.apple.finder AppleShowAllFiles $SETTO; killall Finder /System/Library/CoreServices/Finder.app;'
fi

# Host specific stuff, it happens...
SPECIFICRC=".bash_specific.$( hostname -s)"
[[ -s "$SPECIFICRC" ]] && {
  source "${HOME}/${SPECIFICRC}"
}
