setopt promptsubst
autoload -U promptinit
promptinit
prompt grb

autoload -U compinit
compinit

# Add paths that should have been there by default
export PATH=/usr/local/sbin:/usr/local/bin:${PATH}
export PATH="/Users/grb/bin:$PATH"

# Unbreak broken, non-colored terminal
export TERM='xterm-color'
alias ls='ls -G'
alias ll='ls -lG'
export LSCOLORS="ExGxBxDxCxEgEdxbxgxcxd"

# Unbreak history
export HISTSIZE=100000
export HISTFILE="$HOME/.history"
export SAVEHIST=$HISTSIZE

export WORDCHARS='*?[]~&;!$%^<>'
export ACK_COLOR_MATCH='red'

alias :q="echo YOU FAIL"
alias ..="cd .."

function punch() {
  mkdir $1
  cd $1
}

export EDITOR=vi
source ~/.bin/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.bash_profile
