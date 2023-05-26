
# Set Variables
export MANPAGER="sh -c 'col -bx | bat -l man -p --theme=gruvbox-dark'"
export LS_COLORS="$(vivid generate gruvbox-dark)"

# Change ZSH options
bindkey -v # Set vi mode

# Create aliases
alias ls="lsd"
alias cat="bat --theme=gruvbox-dark"

alias vzsh="vim ~/.zshrc"
alias szsh="source ~/.zshrc"

alias vvim="vim ~/.vimrc"

alias brave="open /Applications/Brave\ Browser.app/Contents/MacOS/Brave\ Browser"

# Customize prompt
# Shows current directory time and λ
PROMPT='$THEME_PROMPT_PREFIX%f%B%F{240}%1 %d %T~%f%b %(?.%F{green}$THEME_VI_MODE_SYMBOL.%F{red}$THEME_VI_MODE_SYMBOL)%f '
## Init
setopt PROMPT_SUBST

## Options
THEME_PROMPT_PREFIX=${THEME_PROMPT_PREFIX:-''}
THEME_VI_INS_MODE_SYMBOL=${THEME_VI_INS_MODE_SYMBOL:-'λ'}
THEME_VI_CMD_MODE_SYMBOL=${THEME_VI_CMD_MODE_SYMBOL:-'ᐅ'}

## Set symbol for the initial mode
THEME_VI_MODE_SYMBOL="${THEME_VI_INS_MODE_SYMBOL}"

# on keymap change, define the mode and redraw prompt
zle-keymap-select() {
  if [ "${KEYMAP}" = 'vicmd' ]; then
    THEME_VI_MODE_SYMBOL="${THEME_VI_CMD_MODE_SYMBOL}"
  else
    THEME_VI_MODE_SYMBOL="${THEME_VI_INS_MODE_SYMBOL}"
  fi
  zle reset-prompt
}
zle -N zle-keymap-select

# reset to default mode at the end of line input reading
zle-line-finish() {
  THEME_VI_MODE_SYMBOL="${THEME_VI_INS_MODE_SYMBOL}"
}
zle -N zle-line-finish

# Fix a bug when you C-c in CMD mode, you'd be prompted with CMD mode indicator
# while in fact you would be in INS mode.
# Fixed by catching SIGINT (C-c), set mode to INS and repropagate the SIGINT,
# so if anything else depends on it, we will not break it.
TRAPINT() {
  THEME_VI_MODE_SYMBOL="${THEME_VI_INS_MODE_SYMBOL}"
  return $(( 128 + $1 ))
}

# Add locations to $PATH
export CPLUS_INCLUDE_PATH=/usr/local/include
export LIBRARY_PATH=/usr/local/lib

export PATH="/usr/local/opt/bison/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/bison/lib"

# Use zsh plugins

# Adding GPG env var
export GPG_TTY=$(tty)
