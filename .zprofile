# zsh profile file. Runs on login. Environmental variables are set here
export QT_QPA_PLATFORMTHEME="qt5ct" # Have QT use qt5ct theme
export QT_STYLE_OVERRIDE=kvantum

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

export ZDOTDIR="$HOME"/.config/zsh
