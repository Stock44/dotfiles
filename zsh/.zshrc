# Monokai dotfiles

# Save starting directory to come back later
SWD=$(pwd)

cd $ZDOTDIR

# Load plugins
source /usr/share/zsh/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
source /usr/share/zsh/plugins/zsh-z/zsh-z.plugin.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh

# Load zsh functions
autoload -U compinit && compinit

# Set themes
source themes/prompt.zsh
source themes/exa.zsh

bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

BAT_THEME="Monokai Extended"
export BAT_THEME

# source aliases
source aliases.zsh

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

export PYTHON_KEYRING_BACKEND=keyring.backends.null.Keyring
