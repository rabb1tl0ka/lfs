#!/bin/sh

# expects that we are running on a
# dedicated directory

FONTS_DIR="/usr/share/fonts"

# Check if fonts directory exists
if [ ! -d "$FONTS_DIR" ]; then
  echo "Fonts directory does not exist. Creating it now..."
  mkdir -p "$FONTS_DIR"
  echo "Directory created: $FONTS_DIR"
else
  echo "Directory already exists: $FONTS_DIR"
fi

wget "https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/BigBlueTerminal.zip"
unzip BigBlueTerminal.zip -d "BigBlueTerminal"
rm BigBlueTerminal.zip
cp BigBlueTerminal/*.ttf "$FONTS_DIR"
