export PS1="[\A][\w]\\$ \[$(tput sgr0)\]"

# Pebble SDK
export PATH="/Users/sbuckley/pebble-dev/PebbleSDK-current/bin:$PATH"
# php 5 instead of native os
export PATH=/usr/local/php5/bin:$PATH
# postgresql instead of php's psql
export PATH=/Applications/Postgres.app/Contents/Versions/9.4/bin:$PATH


#alias's I like a little better
alias make_directory="mkdir"
alias list="ls -1FGTk"
alias list_all="ls -1FGTkal"

# Some day when you care more try getting this down
#
#bash ~/dot_or___files/environment_hacks/tmux_saver.sh restore
#trap "~/dot_or___files/environment_hacks/tmux_saver.sh save" EXIT
