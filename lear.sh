#!/bin/bash

# A script that will output some of King Lear every time I type "lear" which I type all the time when I'm trying to type "clear"

if [[ ! -f ~/.lear.txt ]]; then
	echo "The text of Lear was not where I expect"
	echo "Exeunt"
	exit 1
fi

command -v gshuf >/dev/null 2>&1 || { echo >&2 "For now I spy a danger, --I entreat you, brew install coreutils"; exit 1; }

#gshuf -n 5 ~/.lear.txt

total=$(wc -l ~/.lear.txt | cut -c 5-8)
start=$RANDOM
let "start %= $total"
end=$(($start+5))
sed -n $start,$end\p ~/.lear.txt
