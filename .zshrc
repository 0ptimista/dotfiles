# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# ZSH Settings:
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH="/opt/homebrew/bin:$PATH"
# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="powerlevel10k/powerlevel10k"

# Standard plugins can be found in $ZSH/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=( git brew  zsh-autosuggestions zsh-syntax-highlighting)
export VI_MODE_RESET_PROMPT_ON_MODE_CHANGE=true

# 禁止自动添加反斜杠
DISABLE_MAGIC_FUNCTIONS=true
source $ZSH/oh-my-zsh.sh



export EDITOR='nvim'
export MANPAGER='nvim +Man!'
mixedPort=7890
export https_proxy=http://127.0.0.1:$mixedPort;
export http_proxy=http://127.0.0.1:$mixedPort;
export all_proxy=socks5://127.0.0.1:7891;

export no_proxy=dev-prom.jlpay.io

alias vi='nvim'
alias vim='nvim'
alias noproxy='export https_proxy=;http_proxy=;all_proxy=;'
alias tree='exa -T'
alias ll='exa -l --icons'
alias ls='exa --icons'
alias evimrc='vi ~/.config/nvim/init.vim'
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/luo/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/luo/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/luo/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/luo/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# fzf settings
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
#CTRL-R
export FZF_CTRL_R_OPTS='--exact' # exact match
export FZF_CTRL_R_OPTS="--preview 'echo {}' --preview-window down:3:hidden:wrap --bind '?:toggle-preview'" #press ? to preview long command
#CTRL-T
export FZF_CTRL_T_OPTS="--preview '(highlight -O ansi -l {} 2> /dev/null || cat {} || tree -C {}) 2> /dev/null | head -200'" #file preview

