#!/bin/bash
source ./test.sh

pt "Pipes"
test 'echo hello | cat'
test 'echo hello|cat'
test 'env | gerp PWD'
test '|'
test '||'
test '||||||||'
test '| echo hello'
test 'echo neko | cat | cat | cat | cat | cat | cat | cat | cat | cat | cat | cat | cat | cat | cat | cat | cat | cat | cat | cat | cat | cat | cat | cat | cat'
test 'echo neko | cat -e | cat -e | cat -e | cat -e | cat -e | cat -e | cat -e | cat -e | cat -e | cat -e | cat -e | cat -e | cat -e | cat -e | cat -e | cat -e | cat -e | cat -e | cat -e | cat -e | cat -e | cat -e | cat -e | cat -e'
test 'echo hello > tmp1 | cat && rm tmp1'
test 'echo hello > tmp1 && echo hi | cat < tmp1 && rm tmp1'
test 'echo hello | echo world | echo 42'
test 'unset ABC && export ABC=abc | echo $ABC'
test 'echo 5 + 3 | bc'
test 'cat test_17_pipe.sh | grep neko | sort'
test 'cat dontexistfile | grep neko | sort'
echo
echo "직접 테스트 해야하는 케이스"
echo
echo "cat | cat"
echo "ctrl + D , ctrl + D"
