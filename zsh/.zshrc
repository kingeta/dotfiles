# Zsh history
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt hist_ignore_all_dups
setopt hist_ignore_space

# Emulate vim
bindkey -v

# Stuff
zstyle :compinstall filename '/home/herby/.zshrc'
[[ -n "${key[Home]}" ]] && bindkey "${key[Home]}" beginning-of-line
[[ -n "${key[End]}" ]] && bindkey "${key[End]}" end-of-line

# Loading stuff
autoload -Uz compinit promptinit
compinit
promptinit
setopt correct

# Prompt
autoload -U colors && colors
RPROMPT="%{$fg_bold[white]%}%~%{$reset_color%}"
#PROMPT="%{$fg_bold[yellow]%}§ %{$reset_color%}"
PROMPT="%{$fg_bold[yellow]%}- %{$reset_color%}"

# Completion
setopt autocd
zstyle ':completion:*:descriptions' format '%B%d%b'
zstyle ':completion:*:warnings' format '%BSorry, no matches for: %d%b'

# Man
man() {
    env LESS_TERMCAP_mb=$'\E[01;31m' \
    LESS_TERMCAP_md=$'\E[01;38;5;74m' \
    LESS_TERMCAP_me=$'\E[0m' \
    LESS_TERMCAP_se=$'\E[0m' \
    LESS_TERMCAP_so=$'\E[38;5;246m' \
    LESS_TERMCAP_ue=$'\E[0m' \
    LESS_TERMCAP_us=$'\E[04;38;5;146m' \
    man "$@"
}

# Sourcing stuff
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.aliases
