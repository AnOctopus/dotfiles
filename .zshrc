HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
setopt auto_cd extended_glob auto_continue no_beep no_hup
setopt hist_ignore_all_dups inc_append_history share_history
setopt prompt_subst
autoload -U add-zsh-hook
bindkey -e

zstyle :compinstall filename '/home/sean/.zshrc'
autoload -Uz compinit bashcompinit
compinit
bashcompinit

source $HOME/antigen/antigen.zsh

antigen bundle zsh-users/zsh-history-substring-search
antigen bundle zsh-users/zsh-completions src

antigen bundle command-not-found
antigen bundle git
antigen bundle docker
antigen bundle mvn
antigen bundle aws


zmodload zsh/terminfo
bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down


autoload -U colors && colors

autoload -U promptinit
promptinit

PROMPT='[%n@%m %? %1~]%(!.#.$) '


[[ $EMACS = t ]] && unsetopt zle

export EDITOR="emacsclient"
export ALTERNATE_EDITOR="emacs"

function chpwd() {
    emulate -L zsh
    ls -AB --color
}

eval "$(fasd --init auto)"

source $HOME/.aliases.zsh

antigen bundle zsh-users/zsh-syntax-highlighting

antigen apply

source $HOME/.dotfiles/k8s
source $HOME/.cjenv
export STEAM_RUNTIME=0
xmodmap "$HOME/.xmodmap"
