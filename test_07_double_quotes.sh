#!/bin/bash
source ./test.sh

pt "double_quotes"
test 'echo "cat lol.c | cat > lol.c"'
test 'echo "hello " " world"'
test 'echo "hello "           " world"'
test 'echo "*"'
test 'echo "       hello         "'
test 'echo "hello                              world"'
test 'echo               "hello"              "                             world"'
test 'echo "-""n" "hello"'
test 'echo "-n" "hello"'
test '"echo" "hello"'
test '"e""c""h""o" "h""e""l""l""o"'
