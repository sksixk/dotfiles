#!/bin/sh

script=`basename "$0"`
mkdir -p ~/old_dotfiles

for file in *; do
	if [ "$file" != "$script" ]

		# we don't want to create symlink for this script
	then

		# if symlink, delete it
		if [ -h ~/.$file ]
		then
			echo "deleting symlink .$file"
			rm ~/.$file
		fi

		# if file exists, back it up
		if [ -e ~/.$file ]
		then
			echo "backing up .$file"
			mv -f ~/.$file ~/old_dotfiles
		fi

		echo "created symlink for $file"
		ln -sf `pwd`/$file ~/.$file
	fi
done

