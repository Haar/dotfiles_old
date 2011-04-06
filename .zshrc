setopt promptsubst
autoload -U promptinit
promptinit

autoload -U compinit
compinit

# Add paths that should have been there by default
export PATH=/usr/local/sbin:/usr/local/bin:${PATH}
export PATH="/Users/grb/bin:$PATH"
export PATH="$PATH:~/.gem/ruby/1.8/bin"

# Unbreak broken, non-colored terminal
export TERM='xterm-color'
alias ls='ls -G'
alias ll='ls -lG'
export LSCOLORS="ExGxBxDxCxEgEdxbxgxcxd"
export GREP_OPTIONS="--color"

# Unbreak history
export HISTSIZE=100000
export HISTFILE="$HOME/.history"
export SAVEHIST=$HISTSIZE

export WORDCHARS='*?[]~&;!$%^<>'
export ACK_COLOR_MATCH='red'

alias :q="echo YOU FAIL"
alias ..="cd .."

# Originally from Jonathan Penn, with modifications by Gary Bernhardt
function whodoneit() {
    (set -e &&
        for x in $(git grep -I --name-only $1); do
            git blame -f -- $x | grep $1;
        done
    )
}

function punch() {
  mkdir $1
  cd $1
}

export EDITOR=vi
source ~/.bin/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.bash_profile
