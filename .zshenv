export PIPENV_MAX_DEPTH=10
eval "$(pyenv init -)"

eval "$(fasd --init auto)"

export GOPATH="$HOME/gm/r10n"
export GOBIN="$GOPATH/bin"
export PATH="$HOME/.local/bin:$PATH:$GOPATH/bin:/opt/google-cloud-sdk/bin"

export EDITOR="emacsclient"
export ALTERNATE_EDITOR="emacs"

export XDG_CONFIG_HOME="$HOME/.config"

source $HOME/.nix-profile/etc/profile.d/nix.sh
