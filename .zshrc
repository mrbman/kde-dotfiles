# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/brett/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Completion for kitty 
kitty + complete setup zsh | source /dev/stdin

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias config="git --git-dir=$HOME/.dotfiles --work-tree=$HOME"
alias ll="exa -lahF --color=always --icons --sort=size --group-directories-first"
alias fetch="neofetch --config ~/.config/neofetch/config.conf-new"
alias show="feh"
alias update="sudo pacman -Syu"
alias install="sudo pacman -S"
alias untar="tar -zxvf"
alias pipes="pipes.sh"
alias cbonsai-up="cbonsai -l --seed=$(date +%s) -m 'Hi Unixporn' -p"

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:$PATH

# pfetch
export PF_INFO="os kernel uptime wm shell pkgs palette"

# Add Startship Prompt
eval "$(starship init zsh)"
