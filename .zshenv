export PIPENV_VENV_IN_PROJECT=1
export PIPENV_MAX_DEPTH=10
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

eval "$(fasd --init auto)"

export GOPATH="$HOME/gm/r10n"
export GOBIN="$GOPATH/bin"
export PATH="$PATH:$GOPATH/bin"

export EDITOR="emacsclient"
export ALTERNATE_EDITOR="emacs"
