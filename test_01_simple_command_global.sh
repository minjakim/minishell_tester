#!/bin/bash
source ./test.sh

pt "01_simple_command_global"

test_leaks '/bin/ls'
test_leaks '/bin/echo'
test_leaks '/bin/pwd'
test_leaks '/bin/hostname'
test_leaks '/usr/bin/alias'
test_leaks '/usr/bin/w'
test_leaks '/usr/bin/whoami'
test_only ''
test_only '             '
test_only '              '
