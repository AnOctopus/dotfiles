export PIPENV_VENV_IN_PROJECT=1
export PIPENV_MAX_DEPTH=10
export PIP_IGNORE_INSTALLED=1

export PATH="$PATH:$HOME/.pyenv/bin:$HOME/.ghcup/bin:$HOME/.emacs.d/bin:$HOME/.local/bin"

eval "$(fasd --init auto)"

export EDITOR="emacsclient"
export ALTERNATE_EDITOR="emacs"

export XDG_CONFIG_HOME="$HOME/.config"

#source $HOME/.nix-profile/etc/profile.d/nix.sh
