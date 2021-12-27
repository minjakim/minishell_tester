#!/bin/bash
source ./test.sh

pt "07_double_quotes"
test_leaks 'echo "cat lol.c | cat > lol.c"'
test_leaks 'echo "hello " " world"'
test_leaks 'echo "hello "           " world"'
test_leaks 'echo "*"'
test_leaks 'echo "       hello         "'
test_leaks 'echo "hello                              world"'
test_leaks 'echo               "hello"              "                             world"'
test_leaks 'echo "-""n" "hello"'
test_leaks 'echo "-n" "hello"'
test_leaks '"echo" "hello"'
test_leaks '"e""c""h""o" "h""e""l""l""o"'
