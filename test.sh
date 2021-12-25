#!/bin/bash

RESET="\033[0m"
BLACK="\033[30m"
RED="\033[31m"
GREEN="\033[32m"
YELLOW="\033[33m"
BLUE="\033[34m"
MAGENTA="\033[35m"
CYAN="\033[36m"
WHITE="\033[37m"

BOLDBLACK="\033[1m\033[30m"
BOLDRED="\033[1m\033[31m"
BOLDGREEN="\033[1m\033[32m"
BOLDYELLOW="\033[1m\033[33m"
BOLDBLUE="\033[1m\033[34m"
BOLDMAGENTA="\033[1m\033[35m"
BOLDCYAN="\033[1m\033[36m"
BOLDWHITE="\033[1m\033[37m"

make -C ../ > /dev/null
chmod 755 ../minishell

function nl()
{
	for ((i = 0; i < $1; ++i))
	do
		echo
	done
}

function pf()
{
	printf $@
}

function pt()
{
	clear
	nl 2
	printf $1
	nl 2
}

function test()
{
	MINI=$(../minishell -c "$1" )
	MINI_ES=$?
	BASH=$(/bin/bash -c "$1" )
	BASH_ES=$?
	if [ "$MINI" == "$BASH" ] && [ "$MINI_ES" == "$BASH_ES" ]; then
		printf " $BOLDGREEN%s$RESET" "✓ "
	else
		printf " $BOLDRED%s$RESET" "✗ "
	fi
	printf "$CYAN \"$1\" $RESET"
	if [ "$MINI" != "$BASH" ]; then
		nl 2
		printf $BOLDRED"Your output : \n%.20s\n$BOLDRED$MINI\n%.20s$RESET\n" "-----------------------------------------" "-----------------------------------------"
		printf $BOLDGREEN"Expected output : \n%.20s\n$BOLDGREEN$BASH\n%.20s$RESET\n" "-----------------------------------------" "-----------------------------------------"
	fi
	if [ "$MINI_ES" != "$BASH_ES" ]; then
		nl 2
		printf $BOLDRED"Your exit status : $BOLDRED$MINI_ES$RESET\n"
		printf $BOLDGREEN"Expected exit status : $BOLDGREEN$BASH_ES$RESET\n"
	fi
	nl 2
	sleep 1
}
