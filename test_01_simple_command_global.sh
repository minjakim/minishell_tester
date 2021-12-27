#!/bin/bash
source ./test.sh

pt "simple_command_global"

test '/bin/ls'
test '/bin/echo'
test '/bin/pwd'
test '/bin/hostname'
test '/usr/bin/alias'
test '/usr/bin/w'
test '/usr/bin/whoami'
test ''
test '             '
test '              '
