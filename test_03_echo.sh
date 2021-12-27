#!/bin/bash
source ./test.sh

pt "echo"
test 'echo'
test 'echo -n'
test 'echo -n -n -n -n -n -n -n -n -n -n -n -n -n -n -n -n -n -n -n'
test 'echo -nnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnn -n'
test 'echo -nnnnnnnnnnnnnnnnnnnnnnnnnn hello'
test 'echo -n -n hello'
test 'echo "-n    -n" hello'
test 'echo -n hello   world      merry     christmas'
test 'echo world'
test 'echo merry'
test 'echo merry christmas'
test 'echo hello world merry christmas'
test 'echo "hello"world"'"merry"'"christmase'
test 'echo "           hello         "'
