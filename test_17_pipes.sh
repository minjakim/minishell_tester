#!/bin/bash
source ./test.sh

pt "17_pipes"
test_only '|'
test_only '||'
test_only '||||||||'
test_only '| echo hello'
test_leaks 'echo hello | cat'
test_leaks 'echo hello|cat'
test_leaks 'env | gerp PWD'
test_leaks 'echo neko | cat | cat | cat | cat | cat | cat | cat | cat | cat | cat | cat | cat | cat | cat | cat | cat | cat | cat | cat | cat | cat | cat | cat | cat'
test_leaks 'echo neko | cat -e | cat -e | cat -e | cat -e | cat -e | cat -e | cat -e | cat -e | cat -e | cat -e | cat -e | cat -e | cat -e | cat -e | cat -e | cat -e | cat -e | cat -e | cat -e | cat -e | cat -e | cat -e | cat -e | cat -e'
test_leaks 'echo hello > tmp1 | cat && rm tmp1'
test_leaks 'echo hello > tmp1 && echo hi | cat < tmp1 && rm tmp1'
test_leaks 'echo hello | echo world | echo 42'
test_leaks 'unset ABC && export ABC=abc | echo $ABC'
test_leaks 'echo 5 + 3 | bc'
test_leaks 'cat test_17_pipe.sh | grep neko | sort'
test_leaks 'cat dontexistfile | grep neko | sort'

echo
echo "직접 테스트 해야하는 케이스"
echo
echo "cat | cat"
echo "ctrl + D"
