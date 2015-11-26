#!/bin/sh

# Script stolen from https://github.com/rasendubi/dotfiles/blob/master/setup.sh.
# This script installs all configs to home directory.
# You MUST write your configs yourself, never copy other's.

FILES=".vimrc .vim .oh-my-zsh .zshrc .zsh "

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

# I know check is stupid but I'll be happy if it stops at least one person
[ $(id -un) = "rasen" ] || exit 1;

for FILE in $FILES; do
	ask_install $FILE
done
