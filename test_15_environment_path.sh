source ./test.sh

pt "Enviroment Variable"
test 'echo $USER'
test 'echo $HOME'
test 'echo $USER.qwe'
test 'echo $USERqwe'
test 'echo $"USER"'
test 'echo " %"USER'
test 'echo $?$?$?$?$?$?$'
