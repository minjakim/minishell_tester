#!/bin/bash
source ./test.sh

pt "02_arguments_history"
test_leaks '/bin/ls /'
test_leaks '/bin/ls .'
test_leaks '/bin/ls ..'
test_leaks '/bin/ls /bin'
test_leaks '/bin/cat ./test_02_arguments_history.sh'
test_leaks '/bin/echo hello'
test_leaks '/bin/echo world'
