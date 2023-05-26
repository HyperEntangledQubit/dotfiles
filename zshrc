
# Set Variables

# Change ZSH options

# Create aliases
alias ls="lsd"
alias cat="bat --theme=gruvbox-dark"

alias vzsh="vim ~/.zshrc"
alias szsh="source ~/.zshrc"

alias vvim="vim ~/.vimrc"

alias brave="open /Applications/Brave\ Browser.app/Contents/MacOS/Brave\ Browser"

# Customize prompt
# Shows current directory time and λ
PROMPT='%B%d %T%B λ%b '

# Add locations to $PATH
export CPLUS_INCLUDE_PATH=/usr/local/include
export LIBRARY_PATH=/usr/local/lib

export PATH="/usr/local/opt/bison/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/bison/lib"

# Use zsh plugins

# Adding GPG env var
export GPG_TTY=$(tty)
