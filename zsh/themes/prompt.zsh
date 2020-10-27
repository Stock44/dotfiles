# Monokai theme for Zsh
#
# Created by Hiram Muñoz for Zsh 5.8


# Load required functions for the theme
autoload -U add-zsh-hook
autoload -Uz vcs_info

# Activate prompt substitution
setopt PROMPT_SUBST

# Set text for the VCS status indicators
FMT_UNSTAGED="%f %F{$MONOKAI_ORANGE%}●"
FMT_STAGED="%f %F{$MONOKAI_GREEN%}✚"
FMT_ACTION="(%F{$MONOKAI_GREEN%}%a%f)"
FMT_VCS_STATUS=" %F{$MONOKAI_RED%}on %F{$MONOKAI_GREEN%}branch %F{$MONOKAI_ORANGE%}%b%u%c%f"

# Configure vcs indicators
zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' unstagedstr    "${FMT_UNSTAGED}"
zstyle ':vcs_info:*' stagedstr      "${FMT_STAGED}"
zstyle ':vcs_info:*' actionformats  "${FMT_VCS_STATUS} ${FMT_ACTION}"
zstyle ':vcs_info:*' formats        "${FMT_VCS_STATUS}"
zstyle ':vcs_info:*' nvcsformats    ""
zstyle ':vcs_info:git*+set-message:*' hooks git-untracked

# Check for untracked files
+vi-git-untracked() {
    if [[ $(git rev-parse --is-inside-work-tree 2> /dev/null) == 'true' ]] && \
            git status --porcelain | grep --max-count=1 '^??' &> /dev/null; then
        hook_com[staged]+="%f %F{$MONOKAI_RED%}●"
    fi
}

# Execute the vcs_info check before each prompt
add-zsh-hook precmd vcs_info

# Set the prompt
PROMPT=$'%F{$MONOKAI_RED%}%n at %F{$MONOKAI_YELLOW%}\uf07b %~%f${vcs_info_msg_0_}\n%F{#FFFFFF%} \ufb0c '