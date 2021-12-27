#!/bin/bash
source ./test.sh

pt "05_return_value_of_a_process"
test_leaks 'echo hello world'
test_leaks '/bin/ls /'
test_leaks '/bin/ls .'
test_leaks '/bin/ls ..'
test_leaks '/bin/ls /bin'
test_leaks '/bin/ls not_a_path'
test_leaks '/bin/cat ./test_02_arguments_history.sh'
test_leaks '/bin/cat not_a_file'
test_leaks 'echo $? + $?'
test_leaks 'commandnotfound'
test_leaks './etc dir'
test_leaks './README.md pemission'
test_leaks 'unset ABC && >$ABC'
test_leaks 'bash -c'
test_only '>'
test_only '<< 1 << 2 << 3 << 4 << 5 << 6 << 7 << 8 << 9 << 10 << 11 << 12 << 13 << 14 << 15 << 16 << 17'
