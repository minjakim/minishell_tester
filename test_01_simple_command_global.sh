#!/bin/bash
source ./test.sh

pt "simple Command"
test '/bin/ls'
test '/bin/echo'
test '/bin/pwd'
test '/bin/hostname'
test '/usr/bin/alias'
test '/usr/bin/w'
