#-------------------------------------------------------------------------#
#PERSONAL ADDITIONS
#-----------------#

#BASIC COMMAND ALIASES#
#--------
alias cls='clear && ls'
alias clsa='clear && ls -a'
alias cl='clear'
alias ee='exit'
alias home='cd ~'
#alias clm='clear && make'

#LOCATIONS#
alias sysmail='cd /var/mail'
alias configs='vim ~/notes/linux/configsLoc.txt'
alias debsetup="cd ~/notes/linux && vim debSetup.txt"
alias shaving="vim ~/notes/personal/shaving.txt"
alias cooking="vim ~/notes/cooking/ingredients.txt"
alias quotes="vim ~/notes/personal/lifeQuotes.txt"

#SCHOOL#
alias campus1="ssh cmoelle@joey2.cs.clemson.edu"
alias offcampus1="ssh cmoelle@access1.cs.clemson.edu"
#-------------------------------------------------------------------------#
alias campus="sshpass -p '@schoolstatus2' ssh cmoelle@joey12.cs.clemson.edu"
alias offcampus="sshpass -p '@schoolstatus2' ssh cmoelle@access1.cs.clemson.edu"
#----CLASS NOTES----#
alias javaa="vim ~/clemson/215/java.txt"
alias assembly="vim ~/clemson/231/assembly.txt"
alias comm="vim ~/clemson/comm150/communications150.txt"

#--UTILITIES--#
alias diff="colordiff"
alias clock="tty-clock -t -c"
alias clones="cd ~/git/ghClones"
alias changeterm="sudo update-alternatives --config x-terminal-emulator"
alias tpad-off="bash ~/scripts/synOff.sh"
alias tpad-on="bash ~/scripts/synOn.sh"
alias rightscreen="xrandr --output HDMI2 --auto --right-of LVDS1"
alias leftscreen="xrandr --output HDMI2 --primary && xrandr --output HDMI2 --auto --left-of LVDS1"
alias leftscreen1="xrandr --output VGA1 --primary && xrandr --output VGA1 --auto --left-of LVDS1"
alias noscreen="xrandr --output LVDS1 --primary && xrandr --auto"
alias wallpaper="feh --bg-scale"
alias refreshterm="sudo xrdb -merge ~/.Xresources"
alias updatefonts="sudo fc-cache -fv"

#--XFCE4--#
alias logout="xfce4-session-logout --logout"
#-------------------------------------------------------------------------#
#DEFAULT EDITOR DEFINED#
export VISUAL=vim
export TERM=rxvt-unicode
export EDITOR=$VISUAL


#-----------------------------HISTORY-------------------------------------#
# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000



#DEFAULT-BASH-SETTINGS----------------------------------------------------#
# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

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


