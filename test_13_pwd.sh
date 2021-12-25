#!/bin/bash
source ./test.sh

pt "Pipes"
test 'echo hello | cat'
test 'env | gerp PWD'
test '|'
test '||'
test '||||||||'
test '|echo hello'
test 'echo neko | cat | cat | cat | cat | cat | cat | cat | cat | cat | cat | cat | cat | cat | cat | cat | cat | cat | cat | cat | cat | cat | cat | cat | cat'
test 'echo hello > tmp1 | cat '
test 'echo hi | cat < tmp1'
