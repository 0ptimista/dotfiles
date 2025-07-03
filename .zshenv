export XDG_CONFIG_HOME="$HOME/.config"

export VISUAL='nvim'
export EDITOR='nvim'
export MANPAGER='nvim +Man!'

export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export HISTFILE="$ZDOTDIR/.zhistory"    # History filepath
export HISTSIZE=10000                   # Maximum events for internal history
export SAVEHIST=10000                   # Maximum events in history file

export PATH="$HOME/.local/bin:$PATH"    # uv tools
