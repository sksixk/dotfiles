alias java_home=/usr/libexec/java_home

export CATALINA_OPTS="-server -Xms128m -Xmx768m -Djava.awt.headless=true -Dnetworkaddress.cache.ttl=0 -Dsun.net.inetaddr.ttl=0 -Dcom.sun.management.jmxremote -Dcom.sun.management.jmxremote.port=8087 -Dcom.sun.management.jmxremote.ssl=false -Dcom.sun.management.jmxremote.authenticate=false -Djava.rmi.server.hostname=`hostname`"
#export CATALINA_OPTS="$CATALINA_OPTS -javaagent:/Users/sang/Documents/workspace/agent/dist/agent.jar"
export JAVA_HOME=`java_home`
export AXIS2_HOME=$HOME/axis2-1.6.2
export AXIS1_HOME=$HOME/axis-1_4
export VISUAL=vim
export EDITOR=vim
export CVSROOT=:extssh:sang@dev.acadaca.com:/usr/local/cvsroot
export PATH="/opt/local/bin:/opt/local/sbin:/opt/local/lib/postgresql94/bin:$PATH"
export HISTTIMEFORMAT="%F %T "
export LSCOLORS=gxfxcxdxbxegedabagaced
export TOMCAT_SECURE=false

alias grep="grep --color=auto"
alias rm="rm -i"
alias ls="ls -GF"
alias jvisualvm=$JAVA_HOME/bin/jvisualvm
alias xml="pbpaste | xmllint -format -"
alias tnm="/Applications/terminal-notifier.app/Contents/MacOS/terminal-notifier -message"
alias portup="sudo port -d selfupdate && sudo port upgrade outdated && sudo port uninstall inactive"
alias pgcli="/opt/local/Library/Frameworks/Python.framework/Versions/3.4/bin/pgcli"

alias dev="ssh dev.acadaca.com"
alias jump="ssh jump"
alias gangnam="ssh gangnam"
alias sophia="ssh sophia"
alias ryan="ssh ryan"
alias 94="ssh java-db-pgsql94"
alias 91="ssh java-db-pgsql91"

alias gsang4tunnel="ssh -f sang@vpn.acadaca.net -L 8244:gangnam:8244 -N"
alias gsang1tunnel="ssh -f sang@vpn.acadaca.net -L 8214:gangnam:8214 -N"
alias gsang2tunnel="ssh -f sang@vpn.acadaca.net -L 8224:gangnam:8224 -N"
alias ctunnel="ssh -f sang@vpn.acadaca.net -L 5432:chtowngf:5432 -N"
alias ltunnel="ssh -f sang@vpn.acadaca.net -L 5432:lauren:5432 -N"
alias glpi="ssh -f sang@bilbo -L 61443:localhost:443 -N"

alias casperjs=$HOME/casperjs/bin/casperjs

gifit() {
	ffmpeg -i $1 -vf scale=600:-1 -r 10 -f image2pipe -vcodec ppm - | convert -delay 5 -layers Optimize -loop 0 - out.gif
	#ffmpeg -i $1 -s 600x400 -pix_fmt rgb24 -r 10 -f gif - | gifsicle --optimize=3 --delay=3 > out.gif
}

source .promptrc

test -e ${HOME}/.iterm2_shell_integration.bash && source ${HOME}/.iterm2_shell_integration.bash

