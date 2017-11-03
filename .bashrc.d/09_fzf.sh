# fzf (fuzzy finder)
# https://github.com/junegunn/fzf
# include fzf (fuzzy find)
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

export FZF_DEFAULT_COMMAND='ag --nocolor -g ""'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_DEFAULT_OPTS='
  --color fg:242,bg:236,hl:65,fg+:15,bg+:239,hl+:108
  --color info:108,prompt:109,spinner:108,pointer:168,marker:168
  '

# binding select-all | deselect-all | toggle-all
# and adding multiple search by default
export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS-m --bind ctrl-a:select-all,ctrl-d:deselect-all,ctrl-t:toggle-all"
