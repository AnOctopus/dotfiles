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

alias mi='mvn install -T 1C -Dcleanup.skip=true -Dtablespaces.skip=true -f `upsearch pom.xml`'
alias mci='mvn clean install -T 1C -Dcleanup.skip=true -Dtablespaces.skip=true -f `upsearch pom.xml`'
alias mct='mvn clean test -T 1C -Dcleanup.skip=true -Dtablespaces.skip=true -f `upsearch pom.xml`'
alias mt='mvn test -T 1C -Dcleanup.skip=true -Dtablespaces.skip=true -f `upsearch pom.xml`'
alias mcid="mvn -U clean deploy"
alias mdt="mvn dependency:tree"
alias ensime="mvn ensime:generate"

alias ssh="TERM=xterm-256color ssh"

alias which="which -a"
alias pgrep="pgrep -ia"
alias envs="env | sort"
alias dus="du -d 1 -h -a 2>/dev/null | sort -h"

alias e="emacsclient"
alias E="SUDO_EDITOR=\"emacsclient -a emacs\" sudoedit"
alias s="sudo"

alias k="kubectl"
alias d="docker"
