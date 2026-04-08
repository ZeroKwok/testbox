# ~/.bashrc: executed by bash(1) for non-login and login shells.
export PS1="\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ "

# Source User's aliases if the file exists
test -f ~/.bash_aliases && . ~/.bash_aliases

