#!/bin/sh

script=`basename "$0"`
mkdir -p ~/old_dotfiles

for file in *; do
	if [ "$file" != "$script" ] && ! [ -h ~/.$file ]
	then
		if [ -e ~/.$file ]
		then
			echo "backing up .$file"
			mv -f ~/.$file ~/old_dotfiles
		fi

		echo "created symlink for $file"
		ln -sf `pwd`/$file ~/.$file
	fi
done
