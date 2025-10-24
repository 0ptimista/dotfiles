bindkey -e # 使用emacs快捷键

# 启用别人写好的自动补全
# git 自动补全：https://gist.github.com/juno/5546179
fpath=(~/.config/zsh/completion $fpath)

autoload -U compinit; compinit # 启动TAB补全
_comp_options+=(globdots) # 可以补全以.开头的文件
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}' # 自动补全忽略大小写



http_port=6152
socks_port=6153
export https_proxy=http://127.0.0.1:$http_port;
export http_proxy=http://127.0.0.1:$http_port;
export all_proxy=socks5://127.0.0.1:$socks_port;

export PATH="$HOME/.bin/:$PATH" # personal tools/scripts
export PATH="/opt/homebrew/bin/:$PATH"

alias vi='nvim'
alias vim='nvim'
alias noproxy='export https_proxy=;http_proxy=;all_proxy=;'
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias lzgit='lazygit -g $HOME/.cfg/ -w $HOME'
alias cls='clear'
# alias ll='ls -ltha'

alias ls="eza --icons --group-directories-first --git"
alias ll="eza -lah --icons --group-directories-first --git"
alias lt="eza --tree --level=2 --icons"

alias ranger='TERM=xterm-256color ranger'

# 插件
# zsh-autosuggestions https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md#homebrew
# 历史命令提示和补全
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
# fzf
source <(fzf --zsh)

# uv uvx zsh-autocompletion
eval "$(uv generate-shell-completion zsh)"
eval "$(uvx --generate-shell-completion zsh)"

# Add Nexus CLI to PATH
export PATH="/Users/luo/.nexus/bin:$PATH"

# Starship 提示符修改工具
eval "$(starship init zsh)"

test -e "${ZDOTDIR}/.iterm2_shell_integration.zsh" && source "${ZDOTDIR}/.iterm2_shell_integration.zsh"

