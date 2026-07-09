alias ls="ls --color"
alias ll="ls -ahl --color"
alias la="ls -a"
alias grep="grep --color"

alias c-dev="cd ~/Developer/"
alias c-dots="cd ~/Developer/dotfiles/"
alias v="vi"
alias vi="vim"

# Env dependent aliases

## Flox reliant aliases
### Use eza for ls instead
if command -v eza >/dev/null 2>&1
then
  alias ls="eza"
fi

if command -v rg >/dev/null 2>&1
then
  alias grep="rg"
fi

if command -v nvim >/dev/null 2>&1
then
  alias vim="nvim"
fi

