typeset -U PATH path
path=("$HOME/.local/bin" "$path[@]")
# TERM
export TERM="xterm"
# XDG
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$XDG_CONFIG_HOME/local/share"
export XDG_CACHE_HOME="$XDG_CONFIG_HOME/cache"

# editor
export EDITOR="nvim"
export VISUAL="nvim"

#zsh
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export HISTFILE="$ZDOTDIR/.zhistory"
export HISTSIZE=10000
export SAVEHIST=10000

#other software

# golang
export GOPATH="$HOME/go"
export GOBIN="$HOME/go/bin"
export GOCACHE="$XDG_CACHE_HOME/go-build"

# ibus
export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus
export QT4_IM_MODULE=ibus
export CLUTTER_IM_MODULE=ibus

#path
export PATH=$GOBIN:$GOPATH:$PATH

#paper
export LESS="-XFR"

#pipenv
export PIPENV_VENV_IN_PROJECT="enabled"

#java
export JAVA_HOME="/usr/lib/jvm/default/bin"
