if [[ $- != *i* ]] ; then
        # Shell is non-interactive.  Be done now!
        return
fi

if [ -d ~/git-build/bin ]; then
	PATH=~/git-build/bin:$PATH
fi

if [ -d ~/bin ]; then
	PATH=$PATH:~/bin
fi

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# enable color support of ls and also add handy aliases
if [ -f ~/.dir_colors ]; then
    eval "`dircolors -b ~/.dir_colors`"
else
    eval "`dircolors -b`"
fi

# aliases
alias ls='ls --color=auto'
alias ll='ls -l'
alias la='ls -A'

grep --color=auto 0 /dev/null > /dev/null 2>&1
if [ $? -eq 1 ]; then
        export GREP_COLOR='0;34'
        alias grep='grep --color=auto'
fi

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(lesspipe)"

function prompt_exit_status {
        EX_STATUS=$?;
        if [ $EX_STATUS -eq 0 ]; then
                echo -ne "\033[00;35m-$EX_STATUS-"
        else
                echo -ne "\033[01;34m-$EX_STATUS-"
        fi
}

# Comment in the above and uncomment this below for a color prompt
PS1="\[\033[00;35m\]\u@\h\[\033[00m\]:\[\033[00;34m\]\w\[\033[00m\]\n\[\033[00;34m\]\$\[\033[00m\] "
PROMPT_COMMAND="prompt_exit_status"

keychain ~/.ssh/*_rsa
. ~/.keychain/$HOSTNAME-sh
. ~/.keychain/$HOSTNAME-sh-gpg

#needed for mutt to work with gpg-agent
export GPG_TTY=$(tty)

alias koshme='host openssh. kosh.f5.com & sleep 1 && ssh kosh.f5.com'
alias forgeme='daemonize rdesktop -K -g 1280x1024 -u griffin-admin -a 16 -r disk:sbox=/home/griffin forge'

set -o vi

# Define your own aliases here ...
#if [ -f ~/.bash_aliases ]; then
#    . ~/.bash_aliases
#fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
#if [ -f /etc/bash_completion ]; then
#    . /etc/bash_completion
#fi
