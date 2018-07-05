#!/bin/bash

# Thanks to nmcv From https://gist.github.com/nmcv/4690672/4439a501378d605fc33e881e974f5d1dac09ca94
function  xor()
{
	local res=(`echo "$1" | sed "s/../0x& /g"`)
	shift 1
	while [[ "$1" ]]; do
	    local one=(`echo "$1" | sed "s/../0x& /g"`)
	    local count1=${#res[@]}
	    if [ $count1 -lt ${#one[@]} ]
	    then
	          count1=${#one[@]}
	    fi
	    for (( i = 0; i < $count1; i++ ))
	    do
	          res[$i]=$((${one[$i]:-0} ^ ${res[$i]:-0}))
	    done
	    shift 1
	done
	printf "%02x" "${res[@]}"
} 


# We load the hexdump of the first line the normal file file
str1=$(xxd -p flag.png.crypt | head -n 1 | tr -d "\n")
# We load the hexdump of the first line the normal file file
str2=$(xxd -p file1.png | head -n 1 | tr -d "\n")

# We compute the operation of xir beteen the encrypted file and the key xor to recover the plaintext file
xor  ${str1} ${str2}
