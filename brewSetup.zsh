#!/usr/bin/env zsh

# Needs a refactor

# install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# NOTE: Get the actual packages user  installed via brew is `brew leaves`
# Standard command is `brew list`. This includes all dependancies
# Don't want the standard command because may get uncompatible versions of deps
brew install bat
brew install bazelbuild/bazel
brew install bison
brew install cmake
brew install coreutils
brew install gnupg
brew install graphviz # This was for doxygen. May redo this to get the doxywizard
brew install httpie
brew install lcov
brew install libiconv
brew install the_silver_searcher
