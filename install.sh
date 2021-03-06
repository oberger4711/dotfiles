#!/bin/bash

git submodule update --init --recursive

# Script stolen from https://github.com/rasendubi/dotfiles/blob/master/setup.sh.
# This script installs all configs to home directory.
# You MUST write your configs yourself, never copy other's.

FILES=".vimrc .vim .oh-my-zsh .zshrc .tmux.conf .fzf"

DEST=$1

if [ -z "$DEST" ]; then
	DEST="$HOME"
fi

BASE=$(dirname $(readlink -f $0))

ask_install() {
	FILENAME=$1

	LINK="$DEST/$FILENAME"
	TARGET="$BASE/$FILENAME"

	if [ -e $LINK ]; then
		echo "$LINK exists. Skipping..."
	else
		read -r -p "Link $LINK to $TARGET? [y/N] " response
		case $response in
			[yY][eE][sS]|[yY])
				ln -s "$TARGET" "$LINK"
				;;
		esac
	fi
}

# Link dotfiles to this dir.
for FILE in $FILES; do
	ask_install $FILE
done

# Install fzf if desired.
if [ -e $HOME/.fzf ]; then
	read -r -p "Install fzf? (No super user rights required) [y/N] " response
	case $response in
		[yY][eE][sS]|[yY])
			$HOME/.fzf/install
			;;
	esac
fi
