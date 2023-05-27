#!/usr/bin/env zsh

echo "Checking to see if user have homebrew installed..."

if exists brew; then
    echo "brew exists, skipping install"
else
    # install homebrew
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# NOTE: Get the actual packages user  installed via brew is `brew leaves`
# Standard command is `brew list`. This includes all dependancies

# export HOMEBREW_CASK_OPTS="--no-quarantine" to skip the macosx gatekeeping
# Don't want the standard command because may get uncompatible versions of deps

brew bundle --verbose
