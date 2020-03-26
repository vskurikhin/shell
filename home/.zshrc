fpath=(~/.zsh $fpath)
autoload -Uz compinit && compinit
zstyle ':completion:*:*:git:*' script ~/.completion.d/git
autoload -U colors && colors
NEWLINE=$'\n'
PS1="%{$fg[green]%}%n%{$reset_color%}@%{$fg[magenta]%}%m%{$reset_color%}:%{$fg[yellow]%}%~%{$reset_color%}${NEWLINE}%% "
