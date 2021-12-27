#!/bin/bash
source ./test.sh

pt "pwd"
test 'pwd'
test 'pwd && cd .. && pwd'
test 'pwd && cd .. && pwd && cd .. && pwd && cd .. && pwd && cd .. && pwd && cd .. && pwd && cd .. && pwd && cd .. && pwd && cd .. && pwd'
test 'pwd && cd && pwd && cd - && pwd'
test 'pwd nominihello'
test 'pwd 1 2 3 4 5 6 7 8 9 0'
test 'pwd ! @ # $ % ^ & * ( ) _ +'
