export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

HIST_STAMPS="yyyy-mm-dd"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(zsh-autosuggestions gitfast)

# 自动补全
fpath+=${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions/src
source $ZSH/oh-my-zsh.sh

# User configuration

### 应用设置
#tmux
# if [[ $TMUX != "" ]] then
#     export TERM="tmux-256color"
# else
#   export TERM="xterm-256color"
# fi
# bat
export BAT_THEME="gruvbox-dark"

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
#CTRL-R
export FZF_CTRL_R_OPTS='--exact' # exact match
export FZF_CTRL_R_OPTS="--preview 'echo {}' --preview-window down:3:hidden:wrap --bind '?:toggle-preview'" #press ? to preview long command
#CTRL-T
export FZF_CTRL_T_OPTS="--preview '(highlight -O ansi -l {} 2> /dev/null || cat {} || tree -C {}) 2> /dev/null | head -200'" #file preview


export VI_MODE_RESET_PROMPT_ON_MODE_CHANGE=true
export ZSH=$HOME/.oh-my-zsh
export PROMPT_EOL_MARK='' # 防止ZSH 在末尾添加额外符号, 通常是%


# 通用设置
http_port=6152
socks_port=6153
export https_proxy=http://127.0.0.1:$http_port;
export http_proxy=http://127.0.0.1:$http_port;
export all_proxy=socks5://127.0.0.1:$socks_port;
export EDITOR='nvim'
export MANPAGER='nvim +Man!'

export PATH="$HOME/.bin/:$PATH" # personal tools/scripts
export PATH="/opt/homebrew/bin/:$PATH"

alias vi='nvim'
alias vim='nvim'
alias noproxy='export https_proxy=;http_proxy=;all_proxy=;'
alias tree='eza -T'
alias ll='eza -l --icons'
alias ls='eza --icons'
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias lzgit='lazygit -g $HOME/.cfg/ -w $HOME'
alias cls='clear'
eval "$(~/.local/bin/mise activate zsh)"
