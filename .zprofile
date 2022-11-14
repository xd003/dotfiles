#!/bin/bash

#                       _____ __   
#     ____  _________  / __(_) /__ 
#    / __ \/ ___/ __ \/ /_/ / / _ \
#   / /_/ / /  / /_/ / __/ / /  __/
#  / .___/_/   \____/_/ /_/_/\___/ 
# /_/                              
#

# Override QT apps theme
export QT_STYLE_OVERRIDE=kvantum
export XCURSOR_SIZE=24
#export QT_AUTO_SCREEN_SCALE_FACTOR=1
#export QT_FONT_DPI=116 Noto Sans

# Disable telemetry for dotnet apps
export DOTNET_CLI_TELEMETRY_OPTOUT=1

# Fix for system tray icons
export XDG_CURRENT_DESKTOP=Unity

# set PATH so it includes user's private ~/.local/bin if it exists
if [ -d "$HOME/.local/bin" ]; then
  PATH="$HOME/.local/bin:$PATH"
fi

if [ -d "$HOME/.bin" ]; then
  PATH="$HOME/.bin:$PATH"
fi

# XDG Directory declarations
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_CACHE_HOME="$HOME/.cache"

# zsh directories
export ZDOTDIR="$HOME"/.config/zsh
export HISTFILE="$XDG_STATE_HOME"/zsh/history

# bash directories
export HISTFILE="${XDG_STATE_HOME}"/bash/history

# miscellaneous
export LESSHISTFILE="$XDG_CACHE_HOME"/less/history
export GTK2_RC_FILES="$XDG_CONFIG_HOME"/gtk-2.0/gtkrc
export GOPATH="$XDG_DATA_HOME"/go
export CUDA_CACHE_PATH="$XDG_CACHE_HOME"/nv
export CARGO_HOME="$XDG_DATA_HOME"/cargo
export GNUPGHOME="$XDG_DATA_HOME"/gnupg
export SCREENRC="$XDG_CONFIG_HOME"/screen/screenrc
export MYPY_CACHE_DIR="$XDG_CACHE_HOME"/mypy
export RUSTUP_HOME="$XDG_DATA_HOME"/rustup
export LD_PRELOAD=/home/xd003/.bin/spotifywm.so /usr/share/spotify/spotify

# Set default mime types
export TERMINAL="footclient"
export BROWSER="firefox"
