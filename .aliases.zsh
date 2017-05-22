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

alias mvn="mvn-color"
alias mci='mvn clean install -T 1C -Dcleanup.skip=true -Dtablespaces.skip=true -f `upsearch pom.xml`'
alias mct='mvn clean test -T 1C -Dcleanup.skip=true -Dtablespaces.skip=true -f `upsearch pom.xml`'
alias mcid="mvn -U clean install deploy"
alias mdt="mvn dependency:tree"
alias mvn-update="mvn versions:use-latest-releases"
alias ensime="mvn ensime:generate"

alias ssh="TERM=xterm-256color ssh"

alias e="emacsclient"
alias E="SUDO_EDITOR=\"emacsclient -a emacs\" sudoedit"
alias s="sudo"

alias ku="kubectl"
alias d="docker"
alias dclean="docker rm $(docker ps -aq) && docker rmi $(docker images | grep "<none>" | awk '{print $3}')"

alias eve="$HOME/eve/evelauncher/evelauncher.sh"
