HISTFILE=~/.histfile
HISTSIZE=100000
SAVEHIST=100000
setopt auto_cd extended_glob auto_continue no_beep no_hup
setopt hist_ignore_all_dups inc_append_history share_history
setopt prompt_subst
setopt pipe_fail
autoload -U add-zsh-hook
bindkey -e

autoload -Uz compinit bashcompinit
compinit
bashcompinit

zstyle ':completion:*' rehash true

source $HOME/antigen/antigen.zsh

antigen bundle zsh-users/zsh-history-substring-search
antigen bundle zsh-users/zsh-completions src

antigen bundle git
antigen bundle docker

zmodload zsh/terminfo
bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down


autoload -U colors && colors

autoload -U promptinit && promptinit


PROMPT='[%n %? %1~]%(!.#.$) '


[[ $EMACS = t ]] && unsetopt zle


function chpwd() {
    emulate -L zsh
    ls -AB --color
}

source $HOME/.aliases.zsh

antigen bundle zsh-users/zsh-syntax-highlighting

antigen apply
