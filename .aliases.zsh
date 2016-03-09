alias l='ls -AB --color=auto'
alias ll='ls -lhAB --color=auto'
alias wcr='find . -type f ! -regex ".*/\.git.*" | xargs wc'
alias backup='/usr/bin/vendor_perl/rename -v "s/$/.backup/"'
alias restore='/usr/bin/vendor_perl/rename -v "s/.backup$//"'

alias ...=../..
alias ....=../../..
alias .....=../../../..
alias ......=../../../../..

alias kp="killall palemoon"
alias kc="killall chromium"
alias ke="killall emacs"

alias b="bundle"
alias be="bundle exec"

alias shell1="ssh shell1.vclk.net"
alias devops="ssh devops101.wl.cj.com"

alias mvn="mvn-color"
alias mci="mvn -U clean install"
alias mcist="mvn -U clean install -DskipTests"
alias mdt="mvn dependency:tree"

alias e="emacsclient"
alias E="SUDO_EDITOR=\"emacsclient -a emacs\" sudoedit"
alias s="sudo"

alias keys="echo 'Use stty COMMAND KEY to change' && stty -a"

alias gc="gcloud"
alias ku="kubectl"
alias d="docker"
alias dclean="docker rm $(docker ps -aq) && docker rmi $(docker images | grep "<none>" | awk '{print $3}')"

alias eve="$HOME/eve/evelauncher/evelauncher.sh"
