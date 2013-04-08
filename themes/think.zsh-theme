# This theme is derived from Steve Losh's Extravagant Zsh Promt
# <http://stevelosh.com/blog/2010/02/my-extravagant-zsh-prompt/>
#
# Basically, I just took away the detailed information about the state
# of the current branch if we're in a directory that is under version
# control.
#
# This is what the prompt looks like in action:
#
# ┌ curiousleo at think2 in ~/Code/oh-my-zsh.git
# └ ± _                                               2013-04-08 18:24:48 +0200
#

function prompt_char {
  git branch >/dev/null 2>/dev/null && echo '±' && return
  hg root >/dev/null 2>/dev/null && echo '☿' && return
  svn info >/dev/null 2>/dev/null && echo '⚡' && return
  echo '○'
}

PROMPT='┌ %{$fg[blue]%}%n%{$reset_color%} at %{$fg[yellow]%}%m%{$reset_color%} in %{$fg[green]%}${PWD/#$HOME/~}%b%{$reset_color%}
└ $(prompt_char) '

RPROMPT='%{$fg[red]%}%D{%Y-%m-%d %T %z}%{$reset_color%}%'
