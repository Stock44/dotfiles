# Monokai theme for zsh-syntax-highlighting
#
# Created by Hiram Muñoz

typeset -A ZSH_HIGHLIGHT_STYLES

ZSH_HIGHLIGHT_STYLES[command]="fg=${THEME_BLUE}"
ZSH_HIGHLIGHT_STYLES[arg0]="fg=${THEME_BLUE}"
ZSH_HIGHLIGHT_STYLES[commandseparator]="fg=${THEME_RED}"
ZSH_HIGHLIGHT_STYLES[builtin]="fg=${THEME_RED}"
ZSH_HIGHLIGHT_STYLES[path]="fg=${THEME_YELLOW}"
ZSH_HIGHLIGHT_STYLES[single-quoted-argument]="fg=${THEME_YELLOW}"
ZSH_HIGHLIGHT_STYLES[double-quoted-argument]="fg=${THEME_YELLOW}"
ZSH_HIGHLIGHT_STYLES[reserved-word]="fg=${THEME_RED}"
ZSH_HIGHLIGHT_STYLES[single-hyphen-option]="fg=${THEME_ORANGE}"
ZSH_HIGHLIGHT_STYLES[double-hyphen-option]="fg=${THEME_ORANGE}"
ZSH_HIGHLIGHT_STYLES[precommand]="fg=${THEME_RED}"
ZSH_HIGHLIGHT_STYLES[unknown-token]="bg=${THEME_RED}"
ZSH_HIGHLIGHT_STYLES[globbing]="fg=${THEME_YELLOW}"
ZSH_HIGHLIGHT_STYLES[autodirectory]="fg=${THEME_YELLOW}"
