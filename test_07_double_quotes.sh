#!/bin/bash
source ./test.sh

pt 'Double Quotes'
test 'echo "cat lol.c | cat > lol.c"'
test "echo \"hello \" \" world\""
test "echo \"       hello         \""
test 'echo "hello                              world"'
test 'echo               "hello"              "world"'
test 'echo "-n" "hello"'
test '"echo" hello'
