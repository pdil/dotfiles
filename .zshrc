
# ls customization
CLICOLOR=1
LSCOLORS=ExFxBxDxCxegedabagacad
alias ll='ls -ahl'

# prompt customization
setopt PROMPT_SUBST

function git_branch {
    git branch 2> /dev/null | sed -e '/^[^[*]/d' -e 's/\(.*\)/(\1)/'
}

PROMPT='%B%F{161}[%*] %F{39}%n%F{47}@%F{205}%M:%F{214}%1~ %F{0}%K{47}$(git_branch)%k
%F{15}→%f%b '

# git
zstyle ':completion:*:*:git:*' script ~/.git-completion.bash
fpath=(~/.zsh/functions $fpath)
autoload -Uz compinit && compinit

# view man pages in Preview
preman() {
    mandoc -T pdf "$(/usr/bin/man -w $@)" | open -fa Preview
}

# open simulator directory for bundle ID provided by $1
simdir() {
	export DIR=$(xcrun simctl get_app_container booted "$1" data)
	open $DIR
}
