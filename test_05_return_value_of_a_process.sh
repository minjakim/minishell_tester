#!/bin/bash
source ./test.sh

pt "Return value of a process"
test '/bin/ls /'
test '/bin/ls .'
test '/bin/ls ..'
test '/bin/ls /bin'
test '/bin/cat ./test_02_arguments_history.sh'
test '/bin/echo hello'
test '/bin/echo world'
test '/bin/ls not_a_path'
test '/bin/cat not_a_file'
test '/bin/ps bad_usage'
test '/usr/bin/open'
test '/usr/bin/true'
test '/ust/bin/false'
test 'echo $? + $?'
