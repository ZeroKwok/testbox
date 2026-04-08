# ~/.bashrc: executed by bash(1) for non-login and login shells.
export PS1="\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ "

# GNU 风格的 LS_COLORS（可选，更精细的颜色控制）
export LS_COLORS='di=01;34:ln=01;36:so=01;35:pi=33:ex=01;32:bd=01;33:cd=01;33:su=31;41:sg=31;41:tw=01;35:ow=01;35'

# Source User's aliases if the file exists
test -f ~/.bash_aliases && . ~/.bash_aliases

