autoload -Uz vcs_info
precmd() { vcs_info }

# Add the git branch to the command prompt? Or possibly add %b as the format string for including the branch in the prompt
zstyle ':vcs_info:git:*' formats '%b '

setopt PROMPT_SUBST
PROMPT='%F{green}%*%f %F{blue}%~%f %F{red}${vcs_info_msg_0_}%f$ '
