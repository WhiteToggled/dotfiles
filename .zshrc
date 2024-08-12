export EDITOR=nvim
# Installing zinit the plugin manager
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
if [ ! -d "$ZINIT_HOME" ]; then
    mkdir -p "$(dirname $ZINIT_HOME)"
    git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi
source "${ZINIT_HOME}/zinit.zsh"

# Start starship.rs
eval "$(starship init zsh)"
# Pywal
cat ~/.cache/wal/sequences
# Removes partial lines
unsetopt PROMPT_SP

# Plugins
# zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions

autoload -U compinit && compinit

alias calculator='quich'
alias md='glow'
alias ls='eza -a --icons'
alias ll='eza -al --icons'
alias shutdown='systemctl poweroff'
alias dot="cd ~/dotfiles"
alias update-grub='sudo grub-mkconfig -o /boot/grub/grub.cfg'

bindkey -e
bindkey '^p' history-search-backward
bindkey '^n' history-search-forward

HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_dups
setopt hist_save_no_dups
setopt hist_ignore_all_dups
setopt hist_find_no_dups

zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

nitch
