export ANDROID_HOME=/Users/sbuckley/Documents/android-sdk/ # the location that you installed the sdk
export ANDROID_TOOLS=$ANDROID_HOME/tools
export ANDROID_PLATFORM_TOOLS=$ANDROID_HOME/platform-tools
export PATH=$PATH:$ANDROID_TOOLS:$ANDROID_PLATFORM_TOOLS
export PS1="[\A][\w]\\$ \[$(tput sgr0)\]"

# Pebble SDK
export PATH="/Users/sbuckley/pebble-dev/PebbleSDK-current/bin:$PATH"
# php 5 instead of native os
export PATH=/usr/local/php5/bin:$PATH
# postgresql instead of php's psql
export PATH=/Applications/Postgres.app/Contents/Versions/9.4/bin:$PATH
alias make_directory="mkdir"
alias list="ls -1FGTk"
