eval "$(/opt/homebrew/bin/brew shellenv)"
eval "$(zoxide init zsh --cmd cd)"

HISTFILE="$HOME/.zhistory"
SAVEHIST=1000
HISTSIZE=999

setopt share_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_verify

bindkey "^[[A" history-search-backward
bindkey "^[[B" history-search-forward

export LANG=en_US.UTF-8

export ZSH="$HOME/.config/ohmyzsh"

export PATH="/opt/homebrew/opt/curl/bin:$PATH"
export LDFLAGS="-L/opt/homebrew/opt/curl/lib"
export CPPFLAGS="-I/opt/homebrew/opt/curl/include"
