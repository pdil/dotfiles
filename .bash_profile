# ls customization
alias ls='ls -FGhl'
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

# prompt customization
function git_branch {
    git branch 2> /dev/null | sed -e '/^[^[*]/d' -e 's/\(.*\)/(\1)/'
}
function color_prompt {
    PS1="\[\033[95m\][\t] \[\033[96;1m\]\u\[\033[m\]@\[\033[91m\]\h:\[\033[93;1m\]\W\[\033[m\] \[\e[1$
    trap 'printf \\e[0m' DEBUG
}
PROMPT_COMMAND=color_prompt

# mitmproxy
alias mitmproxy='mitmproxy --set console_focus_follow=true'
