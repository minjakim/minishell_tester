#!/bin/bash
source ./test.sh

pt "arguments_history"
test '/bin/ls /'
test '/bin/ls .'
test '/bin/ls ..'
test '/bin/ls /bin'
test '/bin/cat ./test_02_arguments_history.sh'
test '/bin/echo hello'
test '/bin/echo world'
