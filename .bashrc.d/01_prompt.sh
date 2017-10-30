# pretty prompt
export PS1="\[\033[38;5;38m\]\u\[$(tput sgr0)\]\[\033[38;5;15m\]@\[$(tput sgr0)\]\[\033[38;5;76m\]\h\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]\[\033[38;5;210m\]\W\[$(tput sgr0)\]\[\033[38;5;15m\]"


function git_info () {
  local BRANCH
  local PUSH
  local NEWPROMPT
  BRANCH=$(git branch 2> /dev/null | grep \* | cut -d" " -f2- 2>/dev/null)
  PUSH=$(git config --get remote.origin.push 2>/dev/null)
  NEWPROMPT=""
  if [ -n "$BRANCH" ] ; then
    NEWPROMPT=" [$BRANCH]"
  fi
  if [ -n "$PUSH" ] ; then
    if [ -n "$NEWPROMPT" ] ; then
      NEWPROMPT="$NEWPROMPT "
    fi  
    NEWPROMPT="${NEWPROMPT}[${PUSH}]"
  fi
  echo "$NEWPROMPT"
}


# git prompt
export PS1="$PS1\[\033[38;5;11m\]\$(git_info) \[\033[38;5;15m\]\\$ \[$(tput sgr0)\]"
