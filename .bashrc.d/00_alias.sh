# usig vim
alias vi='vim'

# sublime
alias subl='sublime_text'

# print $PATH as list
alias path='echo -e ${PATH//:/\\n}'

# navigation 
alias ..='cd ..'
alias ...='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'

# listing files
alias l='ls -lrth --color=auto'
alias ll='ls -la'

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi


# create directories on demand, verbose
alias mkdir='mkdir -pv'

# confirmation. For rm, prompt once when attempting to remove more than 3 files or recursively
alias rm='rm -I --preserve-root'
alias mv='mv -i'
alias cp='cp -i'
alias df='df -h'

# grep case insensitive and with color
alias grep='grep -i --color'

