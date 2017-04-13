alias java_home=/usr/libexec/java_home

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
alias jvisualvm="$JAVA_HOME/bin/jvisualvm -J-Xmx2048m"
alias tnm="/Applications/terminal-notifier.app/Contents/MacOS/terminal-notifier -message"
alias portup="sudo port -d selfupdate; sudo port upgrade outdated; sudo port uninstall inactive"
alias portclean="sudo port -f clean --all all"
alias pgcli="/opt/local/Library/Frameworks/Python.framework/Versions/3.4/bin/pgcli"

alias dev="ssh dev.acadaca.com"
alias jump="ssh jump"
alias gangnam="ssh root@gangnam"
alias 94="ssh java-pgsql94-db"
alias 93="ssh java-pgsql93-db"
alias 91="ssh java-pgsql91-db"
alias vpn="ssh vpn.acadaca.net"

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

function lazygit() {
	git add .
	git commit -a -m "$1"
	git push
}

man() {
	env \
		LESS_TERMCAP_mb=$'\e[1;31m' \
		LESS_TERMCAP_md=$'\e[1;31m' \
		LESS_TERMCAP_me=$'\e[0m' \
		LESS_TERMCAP_se=$'\e[0m' \
		LESS_TERMCAP_so=$'\e[1;44;33m' \
		LESS_TERMCAP_ue=$'\e[0m' \
		LESS_TERMCAP_us=$'\e[1;32m' \
		man "$@"
}

source .promptrc

export CATALINA_HOME=/Users/sang/apache-tomcat-7.0.70
export CATALINA_BASE=/Users/sang/instance
#export CATALINA_OPTS="-verbose:class -server -Xms256m -Xmx1024m -verbose:gc -XX:+PrintGCTimeStamps -XX:+PrintGCDetails -Djava.awt.headless=true -Dnetworkaddress.cache.ttl=0 -Dsun.net.inetaddr.ttl=0 -Dcom.sun.management.jmxremote -Dcom.sun.management.jmxremote.port=8247 -Dcom.sun.management.jmxremote.ssl=false -Dcom.sun.management.jmxremote.authenticate=false -Djava.rmi.server.hostname=`hostname`"
export CATALINA_OPTS="-server -Xms256m -Xmx1024m -verbose:gc -XX:+PrintGCTimeStamps -XX:+PrintGCDetails -Djava.awt.headless=true -Dnetworkaddress.cache.ttl=0 -Dsun.net.inetaddr.ttl=0 -Dcom.sun.management.jmxremote -Dcom.sun.management.jmxremote.port=8247 -Dcom.sun.management.jmxremote.ssl=false -Dcom.sun.management.jmxremote.authenticate=false -Djava.rmi.server.hostname=`hostname`"

alias tomstop="sh $CATALINA_HOME/bin/catalina.sh stop"
alias tomstart="sh $CATALINA_HOME/bin/catalina.sh start"
alias 94start="sudo port load postgresql94-server"
alias 94stop="sudo port unload postgresql94-server"
alias psql="sudo -u postgres psql"
alias memstart="sudo port load memcached"
alias memstop="sudo port unload memcached"
alias redstart="sudo port load redis"
alias redstop="sudo port unload redis"

##
# Your previous /Users/sang/.profile file was backed up as /Users/sang/.profile.macports-saved_2016-09-21_at_11:11:35
##

# MacPorts Installer addition on 2016-09-21_at_11:11:35: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

