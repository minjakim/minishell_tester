source ./test.sh

pt "cd"
test 'cd . && pwd '
test 'cd .. && pwd '
test 'cd / && pwd '
test 'cd - && pwd  '
test 'cd asd'
test 'cd qwe'
test 'unset OLDPWD && cd -'
test 'unset HOME && cd'
