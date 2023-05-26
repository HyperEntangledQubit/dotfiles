#!/usr/bin/env zsh

# Needs a refactor

# install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# NOTE: Get the actual packages user  installed via brew is `brew leaves`
# Standard command is `brew list`. This includes all dependancies

# export HOMEBREW_CASK_OPTS="--no-quarantine" to skip the macosx gatekeeping
# Don't want the standard command because may get uncompatible versions of deps

brew bundle --verbose
