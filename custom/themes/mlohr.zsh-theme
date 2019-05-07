
if [ $UID -eq 0 ]; then
  pcolor="$fg_bold[red]"
  pchar="#"
else
  pcolor="$fg_bold[green]"
  pchar="\$"
fi

puser="%{$pcolor%}%n%{$reset_color%}"
phost="%{$fg_bold[white]%}%m%{$reset_color%}"
pdir="%{$fg_bold[blue]%}%~%{$reset_color%}"
pprompt="%{$pcolor%}$pchar%{$reset_color%}"

PROMPT='$puser@$phost:$pdir$(git_prompt_info)$pprompt '
RPROMPT='[%*]'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[yellow]%}⇵(%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg_bold[yellow]%})%{$fg_bold[red]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg_bold[yellow]%})%{$fg_bold[green]%}✓"

