# Set zsh dot files directory to the config directory.
export ZDOTDIR=$HOME/.config/zsh

# Editor variable
export EDITOR=nvim

export QT_DEVICE_PIXEL_RATIO=2

# XDG env variables
export XDG_RUNTIME_DIR="/run/user/$UID"
export DBUS_SESSION_BUS_ADDRESS="unix:path=${XDG_RUNTIME_DIR}/bus"

export DOCKER_HOST=unix://$XDG_RUNTIME_DIR/docker.sock

# pyenv
export PYENV_ROOT=$HOME/.pyenv

# Theme color codes
export THEME_GREEN="#CAEE81"
export THEME_RED="#FF6B6B"
export THEME_ORANGE="#FFC65C"
export THEME_YELLOW="#FFF48A"
export THEME_BLUE="#9CEFFF"
export THEME_PURPLE="#C19EFF"

# Darker, more saturated versions of the colors.
export THEME_GREEN_DARK="#86B131"
export THEME_RED_DARK="#E53636"
export THEME_ORANGE_DARK="#E49E1D"
export THEME_YELLOW_DARK="#CCBB27"
export THEME_BLUE_DARK="#3EC8E2"
export THEME_PURPLE_DARK="#9768EB"

# Grayscale colors
export THEME_50="#F7F7F7"
export THEME_100="#E1E1E1"
export THEME_200="#CCCCCC"
export THEME_300="#B9B9B9"
export THEME_400="#A5A5A5"
export THEME_500="#939393"
export THEME_600="#808080"
export THEME_700="#6D6D6D"
export THEME_800="#5A5A5A"
export THEME_900="#444444"
export THEME_1000="#2A2A2A"
export THEME_1100="#1C1C1C"


export ELECTRON_OZONE_PLATFORM_HINT=wayland
