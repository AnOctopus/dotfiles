alias l='ls -AB --color=auto'
alias ll='ls -ghAB --time-style=long-iso --color=auto'
alias wcr='find . -type f ! -regex ".*/\.git.*" | xargs wc'
alias gitwcr='git ls-files | xargs wc'
alias backup='/usr/bin/vendor_perl/rename -v "s/$/.backup/"'
alias restore='/usr/bin/vendor_perl/rename -v "s/.backup$//"'

alias ...=../..
alias ....=../../..
alias .....=../../../..
alias ......=../../../../..

alias t="time"

alias ssh="TERM=xterm-256color ssh"

alias which="which -a"
alias pgrep="pgrep -ia"
alias envs="env | sort"
alias dus="du -d 1 -h -a 2>/dev/null | sort -h"
# alias upgrade="s nix-channel --update && s nix-env -u && pikaur -Syu"
alias update="pikaur -Syu"

alias e="emacsclient"
alias E="SUDO_EDITOR=\"emacsclient -a emacs\" sudoedit"
alias s="sudo"

alias k="kubectl"
alias kctx="kubectx"
alias kns="kubens"
alias d="docker"
alias dc="docker-compose"
alias denv='eval "$(minikube docker-env)" && export PS1="(denv) $PS1"'
dclean () {
    docker rmi $(docker images -q -f dangling=true)
    docker rm $(docker ps -a -q)
}

alias pyt="PYTHONPATH=lib pytest --showlocals --failed-first --disable-warnings lib/tests/"
alias activate="source .venv/bin/activate"
alias cvenv='deactivate; rm -r .venv; pyenv exec python -m venv .venv; activate'
alias debug='python -m debugpy --listen 5678 --wait-for-client --log-to log/ .venv/bin/streamlit run'
