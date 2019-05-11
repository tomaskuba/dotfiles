#!/bin/bash

# Setup PATH variable
export PATH="/usr/local/sbin:./bin:$PATH"

# Load our dotfiles like ~/.bash_prompt, etc…
#   ~/.extra can be used for settings you don’t want to commit,
#   Use it to configure your PATH, thus it being first in line.
for file in ~/.{aliases,functions,bash_prompt}; do
    [ -r "$file" ] && source "$file"
done
unset file

# Set CLICOLOR if you want Ansi Colors in iTerm2
export CLICOLOR=1

# Set "ls" colors
export LSCOLORS=Gxfxcxdxbxegedabagacad

# set 256 color profile where possible
if [[ $COLORTERM == gnome-* && $TERM == xterm ]] && infocmp gnome-256color >/dev/null 2>&1; then
    export TERM=gnome-256color
elif infocmp xterm-256color >/dev/null 2>&1; then
    export TERM=xterm-256color
fi

# Set PHP Dev variable
export PHP_ENV=development

# Set some locale variables to fix Sed "error: illegal byte sequence"
export LANG=C
export LC_CTYPE=C

# Bash completion (installed via Homebrew)
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

