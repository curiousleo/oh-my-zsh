function prompt_char {
  git branch >/dev/null 2>/dev/null && echo '±' && return
  hg root >/dev/null 2>/dev/null && echo '☿' && return
  svn info >/dev/null 2>/dev/null && echo '⚡' && return
  echo '○'
}

PROMPT='%{$fg[blue]%}%n%{$reset_color%} at %{$fg[yellow]%}%m%{$reset_color%} in %{$fg[green]%}${PWD/#$HOME/~}%b%{$reset_color%}
$(prompt_char) '

RPROMPT='%{$fg[red]%}%D{%Y-%m-%d %T %z}%{$reset_color%}%'
