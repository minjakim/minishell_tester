#!/bin/bash
source ./test.sh

pt "cd"
test 'cd . && pwd '
test 'cd .. && pwd '
test 'cd / && pwd '
test 'cd - && pwd  '
test 'cd asd && pwd'
test 'cd qwe && pwd'
test 'unset OLDPWD && cd - && pwd'
test 'unset HOME && cd'
test 'unset PWD && cd .'
test 'unset OLDPWD && cd .. && cd -'
