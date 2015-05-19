# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific aliases and functions
export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
export PATH="/usr/local/opt/gnu-tar/libexec/gnubin:$PATH"
export PATH="$HOME/bin:$PATH"
export PATH="$HOME/.gem/ruby/2.0.0/bin:$PATH"
export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"
export EDITOR=vim
export GREP_OPTIONS="--color"
export LANG=en_US.UTF-8

alias vi='vim'
alias ls='ls --color'
alias la='ls -la'
alias l='ls'
alias ll='ls -l'
alias wget='wget -c'
alias yum='brew'
alias yum-cask='brew cask'
alias yum-bundle='brew bundle'
alias yum-cask-up='for c in `brew cask list`; do ! brew cask info $c | grep -qF "Not installed" || brew cask install $c; done; yum-cask cleanup'
alias yum-up='yum update --all; yum-cask update --all; yum upgrade --all; yum cleanup; yum-cask-up'
alias date='LANG=en date'
alias mkpasswd='pwgen'
alias softwareupdate='sudo softwareupdate'

# Loading git-completion
source /usr/local/etc/bash_completion.d/git-completion.bash
source /usr/local/etc/bash_completion.d/git-prompt.sh

# PS1 setting
export PS1="\[\033[36m\][\u@\h \[\033[0m\]\[\033[33m\]\W\[\033[0m\]\[\033[36m\]$(__git_ps1)]$\[\033[0m\] "

# Go lang
export GOPATH=$HOME/golang
