[[ -f $HOME/.zprofile ]] && source $HOME/.zprofile
[[ -f $HOME/.p10k.zsh ]] && source $HOME/.p10k.zsh

source $ZSH/oh-my-zsh.sh

alias lg="lazygit"
alias ls="eza --icons=auto"

source /opt/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

if command -v tmux &>/dev/null; then
    if [ -z "$TMUX" ]; then
        tmux attach -t seiki || tmux new -s seiki -n main
    fi
fi
