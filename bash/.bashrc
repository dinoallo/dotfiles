#
# ~/.bashrc
#
export PATH="$HOME/.local/bin:$PATH"
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus

# go
export PATH=$HOME/go/bin:$PATH
export GO111MODULE=on
# export GOPROXY=https://goproxy.io
# User configuration
# export MANPATH="/usr/local/man:$MANPATH"

# Preferred editor
export EDITOR="vim"

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

# Cask - an emacs project manager
export PATH="$HOME/.emacs.d/cask/bin:$PATH"

# Powerline-shell
# function _update_ps1() {
#    PS1=$(powerline-shell $?)
#}

#if [[ $TERM != linux && ! $PROMPT_COMMAND =~ _update_ps1 ]]; then
#    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
#fi

# old colors and preferences...(without powerline)
# PS1="\[\e[33m\]\@\[\e[34m\] \u@\h \w \[\e[36m\]-> "
# powerline
# powerline-daemon -q
# POWERLINE_BASH_CONTINUATION=1
# POWERLINE_BASH_SELECT=1
# POWERLINE_SCRIPT=/usr/share/powerline/bindings/bash/powerline.sh
# if [ -f $POWERLINE_SCRIPT ]; then
#	source $POWERLINE_SCRIPT
# fi 
# Flutter
export PATH="$PATH:~/development/flutter/bin"
# DataGrip
export DataGrip_INSTALLATION_HOME="~/DataGrip-2019.2.6"
export PATH="$PATH:${DataGrip_INSTALLATION_HOME}/bin"

# Wine
export WINEPREFIX=$HOME/.wine-win32/
export WINEARCH=win32

# NNN
export NNN_COLORS='6666'
export NNN_ARCHIVE="\\.(7z|bz2|gz|tar|tgz|zip)$"
export NNN_PLUG='v:imgview;p:pdfview-llpp'

# alias
source ~/.aliases

# scripts
source ~/.Scripts/explain.sh 
