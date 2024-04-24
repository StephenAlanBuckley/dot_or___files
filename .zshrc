#   -------------------------------
#   1.  ALIASES
#   -------------------------------

alias list="ls -1FGTk"
alias ll="ls -1FGTk"
alias lll="ls -al"
alias cll="clear & ls -1FGTk"
alias edit='subl'                                                   # edit:         Opens any file in sublime editor
alias f='open -a Finder ./'                                         # f:            Opens current directory in MacOS Finder
alias ~="cd ~"                                                      # ~:            Go Home
alias c='clear'                                                     # c:            Clear terminal display
trash () { command mv "$@" ~/.Trash ; }                             # trash:        Moves a file to the MacOS trash
ql () { qlmanage -p "$*" >& /dev/null; }                            # ql:           Opens any file in MacOS Quicklook Preview
alias cleanupDS="find . -type f -name '*.DS_Store' -ls -delete"     #   cleanupDS:  Recursively delete .DS_Store files

#   -------------------------------
#   2.  PROMPT CUSTOMIZATION
#   -------------------------------
autoload -Uz vcs_info
precmd() { vcs_info }

# Add the git branch to the command prompt? Or possibly add %b as the format string for including the branch in the prompt
zstyle ':vcs_info:git:*' formats '%b '

setopt PROMPT_SUBST
PROMPT='%F{green}%*%f %F{blue}%~%f %F{red}${vcs_info_msg_0_}%f$ '
#
# Home bin path
export PATH="$PATH:$HOME/bin:$PATH"

export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
export PATH="/Users/stephen/.local/bin:$PATH"
