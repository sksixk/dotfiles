alias java_home=/usr/libexec/java_home

export JAVA_HOME=`java_home`
export AXIS2_HOME=$HOME/axis2-1.6.2
export AXIS1_HOME=$HOME/axis-1_4
export VISUAL=vim
export EDITOR=vim
export HISTTIMEFORMAT="%F %T "
export LSCOLORS=gxfxcxdxbxegedabagaced

alias grep="grep --color=auto"
alias rm="rm -i"
alias ls="ls -GF"
alias jvisualvm="$JAVA_HOME/bin/jvisualvm -J-Xmx2048m"
alias tnm="/Applications/terminal-notifier.app/Contents/MacOS/terminal-notifier -message"
alias portup="sudo port -d selfupdate; sudo port upgrade outdated; sudo port uninstall inactive"
alias portclean="sudo port -f clean --all all"
alias jupyter="jupyter-3.6 notebook"

gifit() {
	ffmpeg -y -i $1 -vf fps=10,scale=320:-1:flags=lanczos,palettegen gifit-palette.png
	ffmpeg -i $1 -i gifit-palette.png -filter_complex "fps=10,scale=640:-1:flags=lanczos[x];[x][1:v]paletteuse" output.gif

	# or
	#ffmpeg -i $1 -vf scale=600:-1 -r 10 -f image2pipe -vcodec ppm - | convert -delay 5 -layers Optimize -loop 0 - out.gif

	# or
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

source $HOME/.promptrc

export CATALINA_HOME=$HOME/apache-tomcat-7.0.70
export CATALINA_BASE=$HOME/instance
#export CATALINA_OPTS="-verbose:class -server -Xms256m -Xmx1024m -verbose:gc -XX:+PrintGCTimeStamps -XX:+PrintGCDetails -Djava.awt.headless=true -Dnetworkaddress.cache.ttl=0 -Dsun.net.inetaddr.ttl=0 -Dcom.sun.management.jmxremote -Dcom.sun.management.jmxremote.port=8247 -Dcom.sun.management.jmxremote.ssl=false -Dcom.sun.management.jmxremote.authenticate=false -Djava.rmi.server.hostname=`hostname`"
export CATALINA_OPTS="-server -Xms256m -Xmx1024m -verbose:gc -XX:+PrintGCTimeStamps -XX:+PrintGCDetails -Djava.awt.headless=true -Dnetworkaddress.cache.ttl=0 -Dsun.net.inetaddr.ttl=0 -Dcom.sun.management.jmxremote -Dcom.sun.management.jmxremote.port=8247 -Dcom.sun.management.jmxremote.ssl=false -Dcom.sun.management.jmxremote.authenticate=false -Djava.rmi.server.hostname=`hostname`"
export GRADLE_HOME=/opt/local/share/java/gradle

alias tomstop="sh $CATALINA_HOME/bin/catalina.sh stop"
alias tomstart="sh $CATALINA_HOME/bin/catalina.sh start"
alias 94start="sudo port load postgresql94-server"
alias 94stop="sudo port unload postgresql94-server"
alias psql="sudo -u postgres /opt/local/lib/postgresql94/bin/psql"
alias memstart="sudo port load memcached"
alias memstop="sudo port unload memcached"
alias redstart="sudo port load redis"
alias redstop="sudo port unload redis"

# MacPorts Installer addition on 2016-09-21_at_11:11:35: adding an appropriate PATH variable for use with MacPorts.
export PATH="$GRADLE_HOME/bin:/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

