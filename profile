tabs -2

alias java_home=/usr/libexec/java_home

export JAVA_HOME=`java_home -v 1.8`
export AXIS2_HOME=$HOME/axis2-1.6.2
export AXIS1_HOME=$HOME/axis-1_4
export VISUAL=vim
export EDITOR=vim
export HISTTIMEFORMAT="%F %T "
export LSCOLORS=gxfxcxdxbxegedabagaced

alias grep="grep --color=auto"
alias rm="rm -i"
alias ls="ls -GF"
alias portup="sudo port -d selfupdate; sudo port upgrade outdated; sudo port uninstall inactive"
alias portclean="sudo port -f clean --all all"

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
source $HOME/github/git/contrib/completion/git-completion.bash
source $HOME/github/git/contrib/completion/git-prompt.sh

#export PS1='[\u@\h \W$(__git_ps1 " (%s)")] \$ '

PATH="/opt/local/bin:/opt/local/sbin:$PATH"
PATH=$HOME/apache-maven-3.5.2/bin:$PATH
PATH=$HOME/apache-ant-1.10.1/bin:$PATH
PATH=$HOME/bin:$PATH
export PATH
