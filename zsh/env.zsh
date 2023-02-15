# Set zsh dot files directory to the config directory.
export ZDOTDIR=$HOME/.config/zsh

# Editor variable
export EDITOR=nvim

# XDG env variables
export XDG_RUNTIME_DIR="/run/user/$UID"
export DBUS_SESSION_BUS_ADDRESS="unix:path=${XDG_RUNTIME_DIR}/bus"

# pyenv
export PYENV_ROOT=$HOME/.pyenv

# Theme color codes
export THEME_GREEN="#CAEE81"
export THEME_RED="#FF6B6B"
export THEME_ORANGE="#FFC65C"
export THEME_YELLOW="#FFF48A"
export THEME_BLUE="#9cefff"
export THEME_PURPLE="#c19eff"

# Darker, more saturated versions of the colors.
export THEME_GREEN_DARK="#86B131"
export THEME_RED_DARK="#E53636"
export THEME_ORANGE_DARK="#E49E1D"
export THEME_YELLOW_DARK="#CCBB27"
export THEME_BLUE_DARK="#3EC8E2"
export THEME_PURPLE_DARK="#9768EB"

# Grayscale colors
export THEME_50="#F7F7F7"
export THEME_100="#E5E5E5"
export THEME_200="#DFDFDF"
export THEME_300="#CACACA"
export THEME_400="#A8A8A8"
export THEME_500="#878787"
export THEME_600="#6D6D6D"
export THEME_700="#5F5F5F"
export THEME_800="#4A4A4A"
export THEME_900="#3D3D3D"
export THEME_1000="#2A2A2A"
