#!/bin/bash
source ./test.sh

pt "13_pwd"
test_leaks 'pwd'
test_leaks 'pwd && cd .. && pwd'
test_leaks 'pwd && cd .. && pwd && cd .. && pwd && cd .. && pwd && cd .. && pwd && cd .. && pwd && cd .. && pwd && cd .. && pwd && cd .. && pwd'
test_leaks 'pwd && cd && pwd && cd - && pwd'
test_leaks 'pwd nominihello'
test_leaks 'pwd 1 2 3 4 5 6 7 8 9 0'
test_leaks 'pwd ! @ # $ % ^ & * ( ) _ +'
