
# ls customization
CLICOLOR=1
LSCOLORS=ExFxBxDxCxegedabagacad
alias ll='ls -ahl'

# prompt customization
setopt PROMPT_SUBST

function git_branch {
    git branch 2> /dev/null | sed -e '/^[^[*]/d' -e 's/\(.*\)/(\1)/'
}

PROMPT='%F{201}[%*] %B%F{14}%n%b%F{10}@%F{9}%M:%B%F{11}%1~%b %F{0}%K{10}$(git_branch)%k
%B%F{15}→%f%b '

# git
zstyle ':completion:*:*:git:*' script ~/.git-completion.bash
fpath=(~/.zsh/functions $fpath)
autoload -Uz compinit && compinit
