# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

# Srinath Ramanujan ---- my custom exports...
export ZLA_GAME_PATH="/Users/srinath/Documents/ENA/wc-1";
export ZLA_ASSETS_TYPE="sandbox-upload"
export ZLA_DEV_URL="empire-dev-03.zc1.zynga.com"
export EDITOR=vim
export IDEA_JDK="/Users/srinath/Applications/jdk1.7.0_21/" 
export COCOS2DX_ROOT="/Users/srinath/Documents/cocos2d-x"
export SDK_ROOT="/Users/srinath/Documents/android-sdk-macosx/"
export NDK_ROOT="/Users/srinath/Documents/android-ndk-r10e/"
export ANDROID_NDK_ROOT="/Users/srinath/Documents/android-ndk-r10e/"
#export ANDROID_SDK_ROOT="/Users/srinath/Documents/android-sdk-macosx/"
export ANDROID_SDK_ROOT="/Users/srinath/Library/Android/sdk/"
export NDK_MODULE_PATH=/Users/srinath/Documents/teenpatti/cocos2d/external/
#export NDK_MODULE_PATH=$COCOS2DX_ROOT:$COCOS2DX_ROOT/cocos2dx/platform/third_party/android/prebuilt
export PATH=/usr/local/sbin:$PATH
export PATH=/usr/local/git/bin:$PATH
#export PATH=/Users/srinath/bin:$PATH
#export PATH=/Users/srinath/Bin:$PATH
export PATH=$PATH:/Users/srinath/Applications/Qt5.0.0/5.0.0/gcc_64/bin
export PATH=$PATH:/Users/srinath/Applications/node-v0.10.9-linux-x64/bin
export PATH=$PATH:$ANDROID_SDK_ROOT/tools
export PATH=$PATH:$ANDROID_SDK_ROOT/platform-tools
# Tell ls to be colourful
export CLICOLOR=1
export HISTSIZE=5000
export HISTFILESIZE=5000
export GOPATH="/Users/srinath/Documents/teenpatti/server/"
export AMAZONREDSHIFTODBCINI="/opt/amazon/redshift/lib/universal/amazon.redshiftodbc.ini"
export ODBCINI="/Users/srinath/.odbc.ini"
export ODBCSYSINI="/Users/srinath/.odbcinst.ini"
export PATH="$HOME/.node/bin:$PATH"
export PATH="$HOME/phantomjs/bin:$PATH"


#export LSCOLORS=GxFxCxDxBxegedabagaced
#export LSCOLORS=Exfxcxdxbxegedabagacad
export LC_CTYPE=C

# Tell grep to highlight matches
export GREP_OPTIONS='--color=auto'
export ZLA_XDEBUG_PORT=9999

YELLOW=$(tput setaf 136)
ORANGE=$(tput setaf 166)
RED=$(tput setaf 160)
MAGENTA=$(tput setaf 125)
VIOLET=$(tput setaf 61)
BLUE=$(tput setaf 33)
CYAN=$(tput setaf 37)
GREEN=$(tput setaf 64)
#PS1="\[\033[0;${CYAN}\]\\u@\\h\[\033[0;${YELLOW}\]:\[\033[0;${BLUE}\]\\w\[\033[0;${YELLOW}\] $ \[\033[m\]"

#PS1="\[\033[0;36m\]\\u@\\h\[\033[0;32m\]:\[\033[0;33m\]\\w\[\033[0;32m\] $ \[\033[m\]"

echo "srinath - setup complete"
