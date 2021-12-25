#!/bin/bash
source ./test.sh

pt "Enviroment Variable"
test 'echo $USER'
test 'echo $HOME'
test 'echo $USER "" $USER'
test 'echo $USER=4'
test 'echo $USERr $HOME1'
test 'echo $USER.qwe'
test 'echo $USERqwe'
test 'echo $"USER"'
test 'echo " %"USER'
test 'echo $?$?$?$?$?$?$'
