# Monokai dotfiles

# Save starting directory to come back later
SWD=$(pwd)

cd $ZDOTDIR

# Load plugins
source plugins/zsh-z/zsh-z.plugin.zsh
source plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Load zsh functions
autoload -U compinit && compinit

# Set themes
source themes/syntax_highlighting.zsh
source themes/prompt.zsh
source themes/exa.zsh
BAT_THEME="Monokai Extended"
export BAT_THEME

# source aliases
source aliases.zsh

# Source plugin autoupdater script
source plugin_updater.zsh

# Activate shell history
setopt inc_append_history share_history

# Set history file location and length
SAVEHIST=10
HISTFILE=~/.zsh_history

# Print newline before all prompts except the first one
precmd(){
    precmd(){
        echo
    }
}

cd $SWD

# Source Node Version Manager
source /usr/share/nvm/init-nvm.sh
