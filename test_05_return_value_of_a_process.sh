#!/bin/bash
source ./test.sh

pt "return_value_of_a_process"
test '/bin/ls /'
test '/bin/ls .'
test '/bin/ls ..'
test '/bin/ls /bin'
test '/bin/cat ./test_02_arguments_history.sh'
test '/bin/echo hello'
test '/bin/echo world'
test '/bin/ls not_a_path'
test '/bin/cat not_a_file'
test 'echo $? + $?'
test 'commandnotfound'
test './etc dir'
test './README.md pemission'
test 'unset ABC && >$ABC'
test 'bash -c'
test_noleaks '>'
test_noleaks '<< 1 << 2 << 3 << 4 << 5 << 6 << 7 << 8 << 9 << 10 << 11 << 12 << 13 << 14 << 15 << 16 << 17'
