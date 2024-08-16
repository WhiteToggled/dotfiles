EDITOR=nvim
# Installing zinit the plugin manager
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
if [ ! -d "$ZINIT_HOME" ]; then
    mkdir -p "$(dirname $ZINIT_HOME)"
    git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi
source "${ZINIT_HOME}/zinit.zsh"

# Start starship.rs
eval "$(starship init zsh)"

# Shell Integrations
eval "$(fzf --zsh)"

# Pywal
# cat ~/.cache/wal/sequences

# ---------------------------------------
#               PLUGINS
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions
zinit light Aloxaf/fzf-tab
# ---------------------------------------

# ---------------------------------------
#               OPTIONS
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

# Removes partial lines
unsetopt PROMPT_SP

zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' menu no
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath'
# ---------------------------------------

# ---------------------------------------
#               ALIASES
alias shutdown='systemctl poweroff'
alias c='clear'
alias neofetch='fastfetch'
alias calculator='quich'
alias md='glow'

alias ls='eza -a --icons'
alias ll='eza -al --icons'

alias dot="cd ~/dotfiles-git"
alias dotedit="cd ~/dotfiles-git && $EDITOR"
alias update-grub='sudo grub-mkconfig -o /boot/grub/grub.cfg'
alias edit='fzf -m --preview="bat --color=always {}" --bind "enter:become(nvim {+})"'
alias test-colors='curl -s https://raw.githubusercontent.com/JohnMorales/dotfiles/master/colors/24-bit-color.sh | bash'
# ---------------------------------------

# ---------------------------------------
#               BINDINGS
bindkey -e
bindkey '^p' history-search-backward
bindkey '^n' history-search-forward
# ---------------------------------------

autoload -U compinit && compinit
fastfetch
