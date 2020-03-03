# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific aliases and functions
export PATH="$HOME/bin:$PATH"
export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
export PATH="/usr/local/opt/gnu-tar/libexec/gnubin:$PATH"
export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"
export EDITOR="vim"
export GREP_OPTIONS="--color"
export LANG="en_US.UTF-8"

# Go lang
export GOPATH=$HOME/golang
export PATH=$PATH:/usr/local/opt/go/libexec/bin

# Loading git-completion
source /usr/local/etc/bash_completion

# PS1 setting
export PS1="\[\033[36m\][\u@\h \[\033[0m\]\[\033[33m\]\W\[\033[0m\]\[\033[36m\]\$(__git_ps1)]$\[\033[0m\] "

# Opting out
export HOMEBREW_NO_ANALYTICS=1

# Alias
alias date='LANG=en date'
alias git-clean-branch='git fetch --prune $1 $(git fetch -p $1)'
alias ls='ls --color'
alias l='ls'
alias la='ls -la'
alias ll='ls -l'
alias mkpasswd='pwgen'
alias scp="scp -o 'Cipher=aes128-cbc'"
alias softwareupdate='sudo softwareupdate'
alias ssh_key-to-clipbord="cat ~/.ssh/id_rsa.pub | pbcopy"
alias vi='vim'
alias wget='wget -c'
alias yum='brew'
alias yum-bundle='brew bundle'
alias yum-cask='brew cask'
alias yum-up='yum update ; yum upgrade'
alias git-gc-r='find ./ -name "*.git" -execdir sh -c "cd {} && git gc" \;'

# for Juniper VPN Clent (Juno Plus)
vpn-start() {
        sudo launchctl load -w /Library/LaunchDaemons/net.pulsesecure.AccessService.plist
        launchctl load -w /Library/LaunchAgents/net.pulsesecure.pulsetray.plist
}
vpn-stop() {
        launchctl unload -w /Library/LaunchAgents/net.pulsesecure.pulsetray.plist
        sudo launchctl unload -w /Library/LaunchDaemons/net.pulsesecure.AccessService.plist
        osascript -e 'tell application "Junos Pulse" to quit'
}

