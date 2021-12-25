source ./test.sh

pt "Return value of a process"
test '/bin/ls'
test 'qqq'
test '*/'
test '/bin/ls qqweqweqeqweqq'
